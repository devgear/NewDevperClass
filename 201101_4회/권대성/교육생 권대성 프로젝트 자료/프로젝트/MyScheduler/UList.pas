unit UList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ComCtrls, Buttons, DBCtrls, Mask, ExtCtrls;

type
  TListEditForm = class(TForm)
    DBGridList: TDBGrid;
    제목: TLabel;
    시작: TLabel;
    Label7: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    bbtnOk: TBitBtn;
    bbtnCancle: TBitBtn;
    bbtnDelete: TBitBtn;
    DBEdit1: TDBEdit;
    DBRichEdit1: TDBRichEdit;
    DBNavigator1: TDBNavigator;
    DBEdit2: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBCheckBox1: TDBCheckBox;
    DBComboBox2: TDBComboBox;
    DBComboBox3: TDBComboBox;
    Label3: TLabel;
    Label4: TLabel;
    procedure bbtnDeleteClick(Sender: TObject);
    procedure bbtnOkClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbtnCancleClick(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);

    procedure FormCreate(Sender: TObject);
    procedure DBGridListColumnMoved(Sender: TObject; FromIndex,
      ToIndex: Integer);
    procedure DBEdit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ListEditForm: TListEditForm;

implementation

uses UDataModule, UMain;

{$R *.dfm}

procedure TListEditForm.bbtnCancleClick(Sender: TObject);
begin
  MainForm.DrawCalrendar(Sender, StrToInt(MainForm.lbYear.Caption), StrToInt(MainForm.lbMonth.Caption));
  Close;
end;

procedure TListEditForm.bbtnDeleteClick(Sender: TObject);
begin
  if MessageDlg('삭제 하시겠습니까?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
    DM.ListTable.Delete;
  MainForm.DrawCalrendar(Sender, StrToInt(MainForm.lbYear.Caption), StrToInt(MainForm.lbMonth.Caption));
end;

procedure TListEditForm.bbtnOkClick(Sender: TObject);
begin
  DM.ListTable.Post;
  MainForm.DrawCalrendar(Sender, StrToInt(MainForm.lbYear.Caption), StrToInt(MainForm.lbMonth.Caption));
end;

procedure TListEditForm.DBEdit1Change(Sender: TObject);
var
  tmpTitle, SQLQuery: string;
begin
  //쿼리문 작성 및 실행

end;

procedure TListEditForm.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then DBEdit2.Visible := False;
  // 숫자만 입력 가능
  if (key <> #8) and ((key < #46) or (key > #57)) then abort;
end;



procedure TListEditForm.DBGridListColumnMoved(Sender: TObject; FromIndex,
  ToIndex: Integer);
begin
  showmessage('hi');
end;

procedure TListEditForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  MainForm.DrawCalrendar(Sender, StrToInt(MainForm.lbYear.Caption), StrToInt(MainForm.lbMonth.Caption));
  Action := caFree;
end;

procedure TListEditForm.FormCreate(Sender: TObject);
begin
  {with DM.ScheduleTable do
  begin
    Close;

    Open;
  end;
   DM.ScheduleTable.

    DM.ScheduleTable.Edit;
        DM.ScheduleTable.FieldByName('alarm_data').AsString := 'F';
        DM.ScheduleTable.Post;   }
end;

end.
