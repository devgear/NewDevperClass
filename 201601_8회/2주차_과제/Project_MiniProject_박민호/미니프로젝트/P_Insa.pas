unit P_Insa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.ToolWin, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Buttons, Vcl.WinXCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TInsa = class(TForm)
    Panel1: TPanel;
    ToolBar1: TToolBar;
    Panel2: TPanel;
    InsaDBGrid: TDBGrid;
    First: TSpeedButton;
    Prior: TSpeedButton;
    Next: TSpeedButton;
    Last: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Insert: TButton;
    Modify: TButton;
    Cancel: TButton;
    Delete: TButton;
    Inquiry: TButton;
    Save: TButton;
    Refresh: TButton;
    InsaSearchBox: TSearchBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    FDQuery1M_ID: TIntegerField;
    FDQuery1M_NAME: TWideStringField;
    FDQuery1M_TEAM: TStringField;
    FDQuery1M_PHONE: TWideStringField;
    procedure InsertClick(Sender: TObject);
    procedure ModifyClick(Sender: TObject);
    procedure CancelClick(Sender: TObject);
    procedure DeleteClick(Sender: TObject);
    procedure SaveClick(Sender: TObject);
    procedure RefreshClick(Sender: TObject);
    procedure InquiryClick(Sender: TObject);
    procedure InsaSearchBoxChange(Sender: TObject);
    procedure FirstClick(Sender: TObject);
    procedure PriorClick(Sender: TObject);
    procedure NextClick(Sender: TObject);
    procedure LastClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit1Change(Sender: TObject);
    procedure DBEdit2Change(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Insa: TInsa;

implementation

{$R *.dfm}

uses P_DataModule, P_Main, P_ProjectInfo, P_Department, P_ProjectMember;

var
  SaveInsa : Boolean;

procedure TInsa.InsertClick(Sender: TObject);
begin
  TDataModule.InsaTable.Insert;
  Insa.DBEdit1.SetFocus;
end;

procedure TInsa.ModifyClick(Sender: TObject);
begin
  TDataModule.InsaTable.Edit;
    if MessageDlg('정말 수정하시겠습니까?', mtConfirmation, [mbYes, mbNo],0) = mrYes then
      try
        TDataModule.InsaTable.Edit;
      except
        on e:Exception do
           ShowMessage(e.Message);
      end;
end;

procedure TInsa.DeleteClick(Sender: TObject);
begin
    if MessageDlg('정말 삭제하시겠습니까?', mtConfirmation, [mbYes, mbNo],0) = mrYes then
      try
        TDataModule.InsaTable.Delete;
      except
        on e:Exception do
           ShowMessage(e.Message);
      end;
end;

procedure TInsa.InquiryClick(Sender: TObject);
begin
  InsaDBGrid.DataSource := DataSource1;
  Fdquery1.Refresh;
end;

procedure TInsa.RefreshClick(Sender: TObject);
begin
  TDataModule.InsaTable.Refresh;
end;

procedure TInsa.CancelClick(Sender: TObject);
begin
  TDataModule.InsaTable.Cancel;
end;

procedure TInsa.SaveClick(Sender: TObject);
begin
  if SaveInsa then
     TDataModule.InsaTable.Post;
end;

procedure TInsa.DBEdit1Change(Sender: TObject);
begin
  if (DBEdit1.Text <> '') then
     SaveInsa := True;
end;

procedure TInsa.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
     SelectNext(ActiveControl, true, true);
end;

procedure TInsa.DBEdit2Change(Sender: TObject);
begin
  if (DBEdit2.Text <> '') then
     SaveInsa := True;
end;

procedure TInsa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  Insa := nil;
end;

procedure TInsa.FormShow(Sender: TObject);
begin
  DBEdit1.Text := '';
  DBEdit2.Text := '';
  DBLookupComboBox1.KeyValue := '';
  SaveInsa := False;
end;

procedure TInsa.InsaSearchBoxChange(Sender: TObject);
begin
  TDataModule.InsaTable.IndexFieldNames := 'M_ID';
  TDataModule.InsaTable.IndexFieldNames := 'M_NAME';
  TDataModule.InsaTable.IndexFieldNames := 'M_TEAM';
  TDataModule.InsaTable.IndexFieldNames := 'M_PHONE';
  TDataModule.InsaTable.FindNearest([InsaSearchBox.Text]);
end;

procedure TInsa.FirstClick(Sender: TObject);
begin
  FDQuery1.First;
  TDataModule.InsaTable.First;
end;

procedure TInsa.PriorClick(Sender: TObject);
begin
  if Not FDQuery1.Bof then
     FDQuery1.Prior;
  if Not TDataModule.InsaTable.Bof then
     TDataModule.InsaTable.Prior;
end;

procedure TInsa.NextClick(Sender: TObject);
begin
  if Not FDQuery1.Eof then
     FDQuery1.Next;
  if Not TDataModule.InsaTable.Eof then
     TDataModule.InsaTable.Next;
end;

procedure TInsa.LastClick(Sender: TObject);
begin
  FDQuery1.Last;
  TDataModule.InsaTable.Last;
end;

end.
