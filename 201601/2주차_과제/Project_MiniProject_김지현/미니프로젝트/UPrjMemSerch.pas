unit UPrjMemSerch;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TPrjMSrForm = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBGrid2: TDBGrid;
    DBNavigator2: TDBNavigator;
    Label3: TLabel;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Button1: TButton;
    Button3: TButton;
    PrjMEMQuerySource: TDataSource;
    PrjMEMQuery: TFDQuery;
    Button2: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PrjMSrForm: TPrjMSrForm;

implementation

{$R *.dfm}

uses UDm;

procedure TPrjMSrForm.Button1Click(Sender: TObject);
begin
  dm.PrjMeTable.Insert;
end;

procedure TPrjMSrForm.Button2Click(Sender: TObject);
begin
  DBGrid2.DataSource := PrjMEMQuerySource;
  PrjMEMQuery.Refresh;
end;

procedure TPrjMSrForm.Button3Click(Sender: TObject);
begin
  if MessageDlg('저장하시겠습니까?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
  try
    dm.prjmetable.post;
  finally
    showmessage('먼저 입력후 저장해주세요');
  end;
end;

procedure TPrjMSrForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;
end;

end.
