unit UHistory_UserDM;

interface

uses
  System.SysUtils, System.Classes, Data.DBXDataSnap, IPPeerClient,
  Data.DBXCommon, Datasnap.DBClient, Datasnap.DSConnect, Data.DB, Data.SqlExpr;

type
  TDM = class(TDataModule)
    SQLConnection1: TSQLConnection;
    DSProviderConnection1: TDSProviderConnection;
    TimeQueryDS: TClientDataSet;
    TimeQueryDSH_ID: TIntegerField;
    TimeQueryDSH_TIMES: TStringField;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    ClientDataSet1P_ID: TIntegerField;
    ClientDataSet1P_NAME: TStringField;
    ClientDataSet1P_ACHIEVEMENT: TStringField;
    ClientDataSet1P_PHOTO: TBlobField;
    ClientDataSet1P_H_ID: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

end.
