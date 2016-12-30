unit bike_dm;

interface

uses
  System.SysUtils, System.Classes, Data.DBXDataSnap, IPPeerClient,
  Data.DBXCommon, Data.DB, Datasnap.DBClient, Datasnap.DSConnect, Data.SqlExpr,
  Unit2;

type
  Tdm1 = class(TDataModule)
    SQLConnection1: TSQLConnection;
    bike: TClientDataSet;
    user2: TClientDataSet;
    repairman: TClientDataSet;
    repaircenter: TClientDataSet;
    repairlist: TClientDataSet;
    DSProviderConnection1: TDSProviderConnection;
    bikeDS: TDataSource;
    userDS: TDataSource;
    repairmanDS: TDataSource;
    repaircenterDS: TDataSource;
    repairlistDS: TDataSource;
    IPSA: TClientDataSet;
    view: TClientDataSet;
    centersearch: TClientDataSet;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm1: Tdm1;
  demo:TServerMethods1Client;
implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure Tdm1.DataModuleCreate(Sender: TObject);
begin
 Demo := TServerMethods1Client.Create(sqlconnection1.dbxconnection);
end;

procedure Tdm1.DataModuleDestroy(Sender: TObject);
begin
demo.Free;
end;

end.
