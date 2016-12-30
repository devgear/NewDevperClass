unit UDeptSearch;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.Mask, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDeptSearchForm = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Edit1: TEdit;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    DeptQuery: TFDQuery;
    DeptQuerySource: TDataSource;
    DeptQueryD_ID: TIntegerField;
    DeptQueryD_DEPT: TWideStringField;
    DeptQueryD_TEAM: TWideStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button6Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DeptSearchForm: TDeptSearchForm;

implementation

{$R *.dfm}

uses UDm;

procedure TDeptSearchForm.Button1Click(Sender: TObject);
begin
  dm.DeptTable.Insert;
end;

procedure TDeptSearchForm.Button2Click(Sender: TObject);
begin
  if MessageDlg('삭제하시겠습니까?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
  try
  dm.DeptTable.Delete;
  except
  on e:exception do
    showmessage(e.Message);
  end;
end;

procedure TDeptSearchForm.Button3Click(Sender: TObject);
begin
  dm.DeptTable.Cancel;
end;

procedure TDeptSearchForm.Button4Click(Sender: TObject);
begin
  if MessageDlg('저장하시겠습니까?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
  try
    dm.DeptTable.Post;
  except
    showmessage('먼저입력후 저장해주세요');
  end;
end;

procedure TDeptSearchForm.Button5Click(Sender: TObject);
begin
  DBGrid1.DataSource := DeptQuerySource;
  DeptQuery.Refresh;
end;

procedure TDeptSearchForm.Button6Click(Sender: TObject);
begin
  dm.DeptTable.Edit;
end;

procedure TDeptSearchForm.Edit1Change(Sender: TObject);
begin
  dm.DeptTable.IndexFieldNames := 'D_DEPT';
  dm.DeptTable.FindNearest([Edit1.text]);
end;

procedure TDeptSearchForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;
end;

end.
