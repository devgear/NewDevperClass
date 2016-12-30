unit UDM;

interface

uses
  System.SysUtils, System.Classes, Data.DBXDataSnap, IPPeerClient,
  Data.DBXCommon, Datasnap.DBClient, Datasnap.DSConnect, Data.DB, Data.SqlExpr;

type
  TDM = class(TDataModule)
    SQLConnection1: TSQLConnection;
    DSProviderConnection1: TDSProviderConnection;
    deptDataSource: TDataSource;
    deptDataSet: TClientDataSet;
    deptDataSetDEPT_NUM: TWideStringField;
    deptDataSetDEPT_NAME: TWideStringField;
    studentDataSet: TClientDataSet;
    studentDataSource: TDataSource;
    studentDataSetSDT_NAME: TWideStringField;
    studentDataSetSDT_NUM: TIntegerField;
    studentDataSetSDT_PW: TWideStringField;
    studentDataSetSDT_DEPTNUM: TWideStringField;
    studentDataSetSDT_YEAR: TIntegerField;
    studentDataSetSDT_STATE: TWideStringField;
    noticeDataSet: TClientDataSet;
    PROFESSORDataSet: TClientDataSet;
    SUBJECTDataSet: TClientDataSet;
    noticeSource: TDataSource;
    PROFESSORSource: TDataSource;
    SUBJECTSource: TDataSource;
    noticeDataSetNOT_SEQ: TIntegerField;
    noticeDataSetNOT_TITLE: TWideStringField;
    noticeDataSetNOT_MEMO: TWideStringField;
    signupSource: TDataSource;
    SignDataSet: TClientDataSet;
    SignDataSetSIGN_STDNAME: TWideStringField;
    SignDataSetSIGN_SDTNUM: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.

