unit PC_AccountDiaryFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.WinXCalendars, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Vcl.Bind.Grid, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope;

type
  TFrmAccountDiary = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    grdOrderDetail: TDBGrid;
    Panel3: TPanel;
    Label1: TLabel;
    dsOrderDb: TDataSource;
    dsOrderDetail: TDataSource;
    CalendarPicker1: TCalendarPicker;
    dsDatePicker: TDataSource;
    bsOrderDb: TBindSourceDB;
    grdOrderDB: TStringGrid;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    StringGrid1: TStringGrid;
    bsOrderDetail: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource;
    procedure CalendarPicker1CloseUp(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dsOrderDbDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAccountDiary: TFrmAccountDiary;
  FormSh : boolean;
  CalClose : boolean;
implementation

{$R *.dfm}

uses PC_Dm, unit2, PC_TableFrm;
var
demo :TServerMethods1Client;


{ TFrmAccountDiary }

procedure TFrmAccountDiary.CalendarPicker1CloseUp(Sender: TObject);
begin
  Dm_PC.cdsOrderDb.Close;
  demo := TServerMethods1Client.Create(Dm_PC.SQLConnection1.DBXConnection);
  demo.DatePick(DateToStr(CalendarPicker1.Date));
  Dm_PC.cdsOrderDb.Open;
end;

procedure TFrmAccountDiary.dsOrderDbDataChange(Sender: TObject; Field: TField);
begin
  Dm_PC.cdsOrderDetail.Close;
  demo := TServerMethods1Client.Create(Dm_PC.SQLConnection1.DBXConnection);
  demo.OpenDetail(Dm_PC.cdsOrderDb.FieldByName('keynum').AsInteger);
  Dm_PC.cdsOrderDetail.Open;
end;

procedure TFrmAccountDiary.FormShow(Sender: TObject);
begin
  FormSh := true;
end;


end.
