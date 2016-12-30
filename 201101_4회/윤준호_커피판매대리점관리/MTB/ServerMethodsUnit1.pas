unit ServerMethodsUnit1;

interface

uses
  SysUtils, Classes, DSServer, FMTBcd, Provider, DB, SqlExpr, DBXInterBase,
  DBClient, SimpleDS;

type
  TServerMethods1 = class(TDSServerModule)
    SQLConnection1: TSQLConnection;
    Item: TSQLTable;
    Shop: TSQLTable;
    ItemProvider: TDataSetProvider;
    History: TSQLTable;
    User: TSQLTable;
    ShopProvider: TDataSetProvider;
    HistoryProvider: TDataSetProvider;
    UserProvider: TDataSetProvider;
    SQLLog: TSQLQuery;
    SQLLogProvider: TDataSetProvider;
    SQLQuery: TSQLQuery;
  private
    { Private declarations }
  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    function Client_Insert(value: string): TDataSet;
  end;
var
  ServerMethods1 : TServerMethods1;

implementation

{$R *.dfm}

uses StrUtils;

function TServerMethods1.Client_Insert(value: string): TDataSet;
begin
  with SQLQuery do
  begin
    Close;
    SQL.Clear;
//    SQL.Add('insert into HISTORY * values * where H_ID =:HHID');
//    Params[0].AsString := value;
//    SQL.Add('insert into HISTORY * values * where S_ID =:HSID');
//    Params[1].AsString := value;
//    SQL.Add('insert into HISTORY * values * where I_ID =:HIID');
//    Params[2].AsString := value;
//    SQL.Add('insert into HISTORY * values * where I_DATE =:HIDATE');
//    Params[3].AsString := value;
//    SQL.Add('insert into HISTORY * values * where H_COUNT =:HHCOUNT');
//    Params[4].AsString := value;
    Open;
  end;
  Result := SQLQuery;
end;

function TServerMethods1.EchoString(Value: string): string;
begin
  Result := Value;
end;

function TServerMethods1.ReverseString(Value: string): string;
begin
  Result := StrUtils.ReverseString(Value);
end;

end.

