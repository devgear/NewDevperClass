unit UPrjSearch;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TPrjSearchForm = class(TForm)
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button6: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    DBRadioGroup1: TDBRadioGroup;
    Label2: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Button7: TButton;
    PrjQuery: TFDQuery;
    PrjQueryP_NAME: TWideStringField;
    PrjQueryP_STARTDATE: TSQLTimeStampField;
    PrjQueryP_ENDDATE: TSQLTimeStampField;
    PrjQueryP_MEMBERCOUNT: TIntegerField;
    PrjQueryP_STATUS: TIntegerField;
    PrjQueryP_MANAGER_ID: TIntegerField;
    PrjQueryDataSource: TDataSource;
    PrjQueryP_ID: TIntegerField;
    Label3: TLabel;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PrjSearchForm: TPrjSearchForm;

implementation

{$R *.dfm}

uses UDm;

procedure TPrjSearchForm.Button1Click(Sender: TObject);
begin
  dm.PrjTable.Insert;
end;

procedure TPrjSearchForm.Button2Click(Sender: TObject);
begin
  if MessageDlg('삭제하시겠습니까?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
  try
  dm.PrjTable.Delete;
  except
  on e:exception do
    showmessage(e.Message);
  end;
end;

procedure TPrjSearchForm.Button3Click(Sender: TObject);
begin
  dm.PrjTable.Cancel;
end;

procedure TPrjSearchForm.Button4Click(Sender: TObject);
begin
  if MessageDlg('저장하시겠습니까?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
  try
  dm.PrjTable.Post;
  except
    showmessage('먼저입력후 저장해주세요');
  end;
end;

procedure TPrjSearchForm.Button5Click(Sender: TObject);
begin
//  dm.PrjTable.Refresh;
end;

procedure TPrjSearchForm.Button6Click(Sender: TObject);
begin
  dm.PrjTable.Edit;
end;

procedure TPrjSearchForm.Button7Click(Sender: TObject);
begin
  DBGrid1.DataSource := PrjQueryDataSource;
  PrjQuery.Refresh;
end;

procedure TPrjSearchForm.Edit1Change(Sender: TObject);
begin
  dm.PrjTable.IndexFieldNames := 'p_name';
  dm.PrjTable.FindNearest([Edit1.text]);
end;

procedure TPrjSearchForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;
end;

end.
