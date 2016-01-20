unit ClientModuleUnit1;

interface

uses
  System.SysUtils, System.Classes, ClientClassesUnit1, Data.DBXDataSnap,
  IPPeerClient, Data.DBXCommon, Data.DB, Data.SqlExpr, Datasnap.DBClient,
  Datasnap.DSConnect, Data.FMTBcd, Datasnap.Provider, Data.DBXInterBase,
  SimpleDS;

type
  TDM = class(TDataModule)
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    emp: TSimpleDataSet;
    SQLConnection1: TSQLConnection;
    project: TSimpleDataSet;
    dept: TSimpleDataSet;
    count: TSQLQuery;
    search: TSQLQuery;
    add: TSQLQuery;
  private
    FInstanceOwner: Boolean;
    FServerMethods1Client: TServerMethods1Client;
    function GetServerMethods1Client: TServerMethods1Client;
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;

    property InstanceOwner: Boolean read FInstanceOwner write FInstanceOwner;
    property ServerMethods1Client: TServerMethods1Client read GetServerMethods1Client write FServerMethods1Client;

end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

constructor TDM.Create(AOwner: TComponent);
begin
  inherited;
  FInstanceOwner := True;
end;



function TDM.GetServerMethods1Client: TServerMethods1Client;
begin
  if FServerMethods1Client = nil then
  begin
    SQLConnection1.Open;
    FServerMethods1Client:= TServerMethods1Client.Create(SQLConnection1.DBXConnection, FInstanceOwner);
  end;
  Result := FServerMethods1Client;
end;

end.
