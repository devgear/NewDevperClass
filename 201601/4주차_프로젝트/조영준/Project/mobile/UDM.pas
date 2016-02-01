unit UDM;

interface

uses
  System.SysUtils, System.Classes, Data.DBXDataSnap,
  IPPeerClient, Data.DBXCommon, Datasnap.DBClient, Datasnap.DSConnect, Data.DB,
  Data.SqlExpr, ServerMethods;

type
  TDM = class(TDataModule)
    SQLConnection1: TSQLConnection;
    DSProviderConnection1: TDSProviderConnection;
    refinementDataSet: TClientDataSet;
    specialtyDataSet: TClientDataSet;
    specialtyDataSetSBJT_DIV: TWideStringField;
    specialtyDataSetSBJT_NUM: TIntegerField;
    specialtyDataSetSBJT_NAME: TWideStringField;
    specialtyDataSetSBJT_DEPTNUM: TWideStringField;
    specialtyDataSetSBJT_PROFNUM: TIntegerField;
    specialtyDataSetSBJT_GRADE: TIntegerField;
    specialtyDataSetSBJT_TOTAL: TIntegerField;
    specialtyDataSetSBJT_CLASS: TIntegerField;
    specialtyDataSetSBJT_ROOM: TWideStringField;
    specialtyDataSetSBJT_TEXT: TWideStringField;
    userDataSet: TClientDataSet;
    refinementDataSetSBJT_DIV: TWideStringField;
    refinementDataSetSBJT_NUM: TIntegerField;
    refinementDataSetSBJT_NAME: TWideStringField;
    refinementDataSetSBJT_DEPTNUM: TWideStringField;
    refinementDataSetSBJT_PROFNUM: TIntegerField;
    refinementDataSetSBJT_GRADE: TIntegerField;
    refinementDataSetSBJT_TOTAL: TIntegerField;
    refinementDataSetSBJT_CLASS: TIntegerField;
    refinementDataSetSBJT_ROOM: TWideStringField;
    refinementDataSetSBJT_TEXT: TWideStringField;
    specialtyDataSetSBJT_PROFNAME: TWideStringField;
    refinementDataSetSBJT_PROFNAME: TWideStringField;
    makrDataSet: TClientDataSet;
    SignupDataSet: TClientDataSet;
    noticeDataSet: TClientDataSet;
    sbjtDataSet: TClientDataSet;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;
  demo : TServerMethods1Client;
implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
begin
demo := TServerMethods1Client.create(SQLConnection1.DBXConnection);
end;

procedure TDM.DataModuleDestroy(Sender: TObject);
begin
demo.Free;
end;

end.
