unit UUser_Dm;

interface

uses
  System.SysUtils, System.Classes, Data.DBXDataSnap, IPPeerClient,
  Data.DBXCommon, Data.DB, Data.SqlExpr, Datasnap.DBClient, Datasnap.DSConnect;

type
  TDataModule1 = class(TDataModule)
    SQLConnection1: TSQLConnection;
    DSProviderConnection1: TDSProviderConnection;
    times: TClientDataSet;
    pesrspons: TClientDataSet;
    DataSource1: TDataSource;
    timesH_ID: TIntegerField;
    timesH_TIMES: TStringField;
    pesrsponsP_ID: TIntegerField;
    pesrsponsP_NAME: TStringField;
    pesrsponsP_ACHIEVEMENT: TStringField;
    pesrsponsP_PHOTO: TBlobField;
    pesrsponsP_H_ID: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

end.
