unit Uinsert;

interface

uses
	Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
	Dialogs, StdCtrls, ComCtrls, ExtCtrls, FMTBcd, DB, SqlExpr, DBCtrls, ActnMan,
	ActnCtrls, ToolWin, ExtActns, StdActns, ActnList, ImgList,
	PlatformDefaultStyleActnCtrls, DBClient, SimpleDS;

type
	TinsertForm = class(TForm)
		RecvEdit: TEdit;
		Panel1: TPanel;
		tmpSaveBtn: TButton;
		CancelBtn: TButton;
		SubmitBtn: TButton;
		Panel2: TPanel;
		Panel3: TPanel;
		ContREdit: TRichEdit;
		Label1: TLabel;
		SenderLabel: TLabel;
		Label4: TLabel;
		GroupBox1: TGroupBox;
		GroupBox2: TGroupBox;
		Label3: TLabel;
		MaxQuery: TSQLQuery;
		ActionManager1: TActionManager;
		ImageList1: TImageList;
		EditCut1: TEditCut;
		EditCopy1: TEditCopy;
		EditPaste1: TEditPaste;
		EditSelectAll1: TEditSelectAll;
		EditUndo1: TEditUndo;
		EditDelete1: TEditDelete;
		RichEditBold1: TRichEditBold;
		RichEditItalic1: TRichEditItalic;
		RichEditUnderline1: TRichEditUnderline;
		RichEditStrikeOut1: TRichEditStrikeOut;
		RichEditBullets1: TRichEditBullets;
		RichEditAlignLeft1: TRichEditAlignLeft;
		RichEditAlignRight1: TRichEditAlignRight;
		RichEditAlignCenter1: TRichEditAlignCenter;
		CoolBar1: TCoolBar;
		ActionToolBar1: TActionToolBar;
		ActionToolBar2: TActionToolBar;
		ActionToolBar3: TActionToolBar;
		TitleCombo: TComboBox;
		procedure RecvEditClick(Sender: TObject);
		procedure FormClose(Sender: TObject; var Action: TCloseAction);
		procedure SubmitBtnClick(Sender: TObject);
		procedure CancelBtnClick(Sender: TObject);
	private
		{ Private declarations }

	public
		{ Public declarations }
	var
		settle_no, recver_id: string;
		IsUpdate: boolean;

	end;

var
	insertForm: TinsertForm;

implementation

uses Uds_dm, Uusersearch, Udsmain;

{$R *.dfm}

procedure TinsertForm.CancelBtnClick(Sender: TObject);
begin
	insertForm.Close;
end;

procedure TinsertForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	Action := caFree;
end;

procedure TinsertForm.RecvEditClick(Sender: TObject);
begin
	RecvListForm := TRecvListForm.Create(insertForm);
	RecvListForm.ShowModal;
	RecvListForm.Free;
end;

procedure TinsertForm.SubmitBtnClick(Sender: TObject);
var
	max_no: integer;
	acc_string, acc_sign: string;
begin

	if (RecvEdit.Text = '') or (recver_id = '') then
		raise Exception.Create('결제 요청 대상이 없습니다');
	if TitleCombo.Text = '' then
		raise Exception.Create('제목을 입력하셔야 합니다.');
	if ContREdit.Lines.Text = '' then
		raise Exception.Create('내용이 없습니다.');
	if (Sender as TButton).Tag = 100 then
	begin
		// ShowMessage('결제');
		acc_sign := 'N';
		acc_string := '결제요청';
	end
	else
		acc_sign := 'T';

	if not IsUpdate then
	begin
		MaxQuery.Close;
		MaxQuery.Open;
		max_no := MaxQuery.FieldByName('max_no').AsInteger;
		MaxQuery.Close;
		max_no := max_no + 1;

		dm.SettleTable.Insert;
		dm.SettleTable.FieldByName('settle_no').AsString := inttostr(max_no);
		dm.SettleTable.FieldByName('settle_kind').AsString := '구  분';
		dm.SettleTable.FieldByName('settle_recver').AsString := recver_id;
		dm.SettleTable.FieldByName('settle_nm').AsString := TitleCombo.Text;
		dm.SettleTable.FieldByName('settle_cont').AsString := ContREdit.Lines.Text;
		dm.SettleTable.FieldByName('settle_write_dt').AsString := DateToStr(now);
		dm.SettleTable.FieldByName('settle_read_yn').AsString := 'N';
		dm.SettleTable.FieldByName('settle_yn').AsString := acc_sign;
		dm.SettleTable.FieldByName('settle_sender').AsString := Uds_dm.UserID;
		dm.SettleTable.Post;
		dm.SettleTable.ApplyUpdates(-1);
		dm.SettleTable.Close;
		dm.SettleTable.Open;
		if (Sender as TButton).Tag = 100 then
		begin
			dm.SetSettleLog(inttostr(max_no), Uds_dm.UserID, acc_string);
		end;
	end
	else
	begin

		if dm.SettleTable.Locate('settle_no', StrToInt(settle_no), []) then
		begin
			dm.SettleTable.Edit;
			dm.SettleTable.FieldByName('settle_kind').AsString := '구  분';
			dm.SettleTable.FieldByName('settle_recver').AsString := recver_id;
			dm.SettleTable.FieldByName('settle_nm').AsString := TitleCombo.Text;
			dm.SettleTable.FieldByName('settle_cont').AsString :=
				ContREdit.Lines.Text;
			dm.SettleTable.FieldByName('settle_write_dt').AsString := DateToStr(now);
			dm.SettleTable.FieldByName('settle_read_yn').AsString := 'N';
			dm.SettleTable.FieldByName('settle_yn').AsString := acc_sign;
			dm.SettleTable.FieldByName('settle_sender').AsString := Uds_dm.UserID;
			dm.SettleTable.Post;
			dm.SettleTable.ApplyUpdates(-1);
			dm.SettleTable.Close;
			dm.SettleTable.Open;
			if (Sender as TButton).Tag = 100 then
			begin
				dm.SetSettleLog(settle_no, Uds_dm.UserID, acc_string);
			end;
		end;

	end;

	MainForm.TabControl1.TabIndex := 1;
	MainForm.MainGrid.Refresh;
	MainForm.DrawInfoGrid;
	insertForm.Close;

end;

end.
