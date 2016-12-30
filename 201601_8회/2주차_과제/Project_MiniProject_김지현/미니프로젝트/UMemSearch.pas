unit UMemSearch;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.Mask, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TMemSearchForm = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    Label6: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button4: TButton;
    Button3: TButton;
    Button6: TButton;
    DBNavigator1: TDBNavigator;
    DBLookupComboBox1: TDBLookupComboBox;
    Button5: TButton;
    MEMQuery: TFDQuery;
    MemQuerySource: TDataSource;
    MEMQueryM_ID: TIntegerField;
    MEMQueryM_NAME: TWideStringField;
    MEMQueryM_TEAM: TIntegerField;
    MEMQueryM_PH: TWideStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button6Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MemSearchForm: TMemSearchForm;

implementation

{$R *.dfm}

uses UDm;

procedure TMemSearchForm.Button1Click(Sender: TObject);
begin
  dm.MemTable.Insert;
end;

procedure TMemSearchForm.Button2Click(Sender: TObject);
begin
  if MessageDlg('삭제하시겠습니까?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
  try
  dm.MemTable.Delete;
  except
  on e:exception do
    showmessage(e.Message);
  end;
end;

procedure TMemSearchForm.Button3Click(Sender: TObject);
begin
  dm.MemTable.Cancel;
end;

procedure TMemSearchForm.Button4Click(Sender: TObject);
begin
if MessageDlg('저장하시겠습니까?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
try
  dm.MemTable.Post;
except
  showmessage('먼저입력후 저장해주세요')
end;
end;

procedure TMemSearchForm.Button5Click(Sender: TObject);
begin
  DBGrid1.DataSource := MemQuerySource;
  MEMQUERY.Refresh;
end;

procedure TMemSearchForm.Button6Click(Sender: TObject);
begin
  dm.MemTable.Edit;
end;

procedure TMemSearchForm.Edit1Change(Sender: TObject);
begin
  dm.MemTable.IndexFieldNames := 'M_name';
  dm.MemTable.FindNearest([Edit1.text]);
end;

procedure TMemSearchForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;
end;

end.
