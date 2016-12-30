unit uDMclient;

interface

uses
  SysUtils, Classes, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  DB, DBClient, IdGlobal, DBXDataSnap, DBXCommon, DSConnect, SqlExpr
;

type
  TDMClient = class(TDataModule)
    IdTCPClient1: TIdTCPClient;
    ClientDataSet_EmpInfo: TClientDataSet;
    DataSource_LoginedInfo: TDataSource;
    SQLConnection_Client: TSQLConnection;
    ClientDataSet_Login: TClientDataSet;
    DSProviderConnection_client: TDSProviderConnection;
    DataSource_Login: TDataSource;
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMClient: TDMClient;

implementation

{$R *.dfm}

procedure TDMClient.DataModuleDestroy(Sender: TObject);
begin
  IdTCPClient1.Disconnect;
end;

end.
