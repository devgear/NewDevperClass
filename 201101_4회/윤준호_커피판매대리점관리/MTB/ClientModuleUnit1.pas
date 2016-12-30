unit ClientModuleUnit1;

interface

uses
  SysUtils, Classes, ClientClassesUnit1, DBXDataSnap, DBXCommon, DB, DBClient,
  DSConnect, SqlExpr, sqltimst, FMTBcd, Generics.collections;

type
  TClientModule1 = class(TDataModule)
    SQLConnection1: TSQLConnection;
    DSProviderConnection1: TDSProviderConnection;
    Item: TClientDataSet;
    ItemSource: TDataSource;
    History: TClientDataSet;
    HistorySource: TDataSource;
    ItemI_ID: TStringField;
    ItemS_ID: TStringField;
    ItemI_NAME: TStringField;
    ItemI_COST: TIntegerField;
    ItemI_DATE: TSQLTimeStampField;
    ItemI_IMAGE: TBlobField;
    SQLLog: TClientDataSet;
    SQLLogSource: TDataSource;
    User: TClientDataSet;
    UserSource: TDataSource;
    SqlServerMethod1: TSqlServerMethod;
    procedure ItemNewRecord(DataSet: TDataSet);
  private
    FInstanceOwner: Boolean;
    FServerMethods1Client: TServerMethods1Client;
    function GetServerMethods1Client: TServerMethods1Client;
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    property InstanceOwner: Boolean read FInstanceOwner write FInstanceOwner;
    property ServerMethods1Client: TServerMethods1Client read GetServerMethods1Client write FServerMethods1Client;

end;

var
  ClientModule1: TClientModule1;

implementation

{$R *.dfm}

constructor TClientModule1.Create(AOwner: TComponent);
begin
  inherited;
  FInstanceOwner := True;
end;

destructor TClientModule1.Destroy;
begin
  FServerMethods1Client.Free;
  inherited;
end;

function TClientModule1.GetServerMethods1Client: TServerMethods1Client;
begin
  if FServerMethods1Client = nil then
  begin
    SQLConnection1.Open;
    FServerMethods1Client:= TServerMethods1Client.Create(SQLConnection1.DBXConnection, FInstanceOwner);
  end;
  Result := FServerMethods1Client;
end;

//등록시 현재 날짜로 초기화
procedure TClientModule1.ItemNewRecord(DataSet: TDataSet);
begin
  ItemI_DATE.Value := DateTimeToSQLTimeStamp(date);
end;

end.
