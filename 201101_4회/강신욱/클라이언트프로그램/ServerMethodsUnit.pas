// 
// Created by the DataSnap proxy generator.
// 2011-01-26 ¿ÀÈÄ 3:09:25
// 

unit ServerMethodsUnit;

interface

uses DBXCommon, DBXClient, DBXJSON, DSProxy, Classes, SysUtils, DB, SqlExpr, DBXDBReaders, DBXJSONReflect;

type
  TServerMethods1Client = class(TDSAdminClient)
  private
    FGet_ReporttCommand: TDBXCommand;
    FGet_Emp_InfoCommand: TDBXCommand;
    FGet_Emp_TreeInfoCommand: TDBXCommand;
    FGet_Logined_infoCommand: TDBXCommand;
    FEchoStringCommand: TDBXCommand;
    FReverseStringCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function Get_Reportt: TDataSet;
    function Get_Emp_Info: TDataSet;
    function Get_Emp_TreeInfo: TDataSet;
    function Get_Logined_info(Value: Integer): TDataSet;
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
  end;
var
  serverMethod : TServerMethods1Client;

implementation

function TServerMethods1Client.Get_Reportt: TDataSet;
begin
  if FGet_ReporttCommand = nil then
  begin
    FGet_ReporttCommand := FDBXConnection.CreateCommand;
    FGet_ReporttCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGet_ReporttCommand.Text := 'TServerMethods1.Get_Reportt';
    FGet_ReporttCommand.Prepare;
  end;
  FGet_ReporttCommand.ExecuteUpdate;
  Result := TCustomSQLDataSet.Create(nil, FGet_ReporttCommand.Parameters[0].Value.GetDBXReader(False), True);
  Result.Open;
  if FInstanceOwner then
    FGet_ReporttCommand.FreeOnExecute(Result);
end;

function TServerMethods1Client.Get_Emp_Info: TDataSet;
begin
  if FGet_Emp_InfoCommand = nil then
  begin
    FGet_Emp_InfoCommand := FDBXConnection.CreateCommand;
    FGet_Emp_InfoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGet_Emp_InfoCommand.Text := 'TServerMethods1.Get_Emp_Info';
    FGet_Emp_InfoCommand.Prepare;
  end;
  FGet_Emp_InfoCommand.ExecuteUpdate;
  Result := TCustomSQLDataSet.Create(nil, FGet_Emp_InfoCommand.Parameters[0].Value.GetDBXReader(False), True);
  Result.Open;
  if FInstanceOwner then
    FGet_Emp_InfoCommand.FreeOnExecute(Result);
end;

function TServerMethods1Client.Get_Emp_TreeInfo: TDataSet;
begin
  if FGet_Emp_TreeInfoCommand = nil then
  begin
    FGet_Emp_TreeInfoCommand := FDBXConnection.CreateCommand;
    FGet_Emp_TreeInfoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGet_Emp_TreeInfoCommand.Text := 'TServerMethods1.Get_Emp_TreeInfo';
    FGet_Emp_TreeInfoCommand.Prepare;
  end;
  FGet_Emp_TreeInfoCommand.ExecuteUpdate;
  Result := TCustomSQLDataSet.Create(nil, FGet_Emp_TreeInfoCommand.Parameters[0].Value.GetDBXReader(False), True);
  Result.Open;
  if FInstanceOwner then
    FGet_Emp_TreeInfoCommand.FreeOnExecute(Result);
end;

function TServerMethods1Client.Get_Logined_info(Value: Integer): TDataSet;
begin
  if FGet_Logined_infoCommand = nil then
  begin
    FGet_Logined_infoCommand := FDBXConnection.CreateCommand;
    FGet_Logined_infoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGet_Logined_infoCommand.Text := 'TServerMethods1.Get_Logined_info';
    FGet_Logined_infoCommand.Prepare;
  end;
  FGet_Logined_infoCommand.Parameters[0].Value.SetInt32(Value);
  FGet_Logined_infoCommand.ExecuteUpdate;
  Result := TCustomSQLDataSet.Create(nil, FGet_Logined_infoCommand.Parameters[1].Value.GetDBXReader(False), True);
  Result.Open;
  if FInstanceOwner then
    FGet_Logined_infoCommand.FreeOnExecute(Result);
end;

function TServerMethods1Client.EchoString(Value: string): string;
begin
  if FEchoStringCommand = nil then
  begin
    FEchoStringCommand := FDBXConnection.CreateCommand;
    FEchoStringCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FEchoStringCommand.Text := 'TServerMethods1.EchoString';
    FEchoStringCommand.Prepare;
  end;
  FEchoStringCommand.Parameters[0].Value.SetWideString(Value);
  FEchoStringCommand.ExecuteUpdate;
  Result := FEchoStringCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethods1Client.ReverseString(Value: string): string;
begin
  if FReverseStringCommand = nil then
  begin
    FReverseStringCommand := FDBXConnection.CreateCommand;
    FReverseStringCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FReverseStringCommand.Text := 'TServerMethods1.ReverseString';
    FReverseStringCommand.Prepare;
  end;
  FReverseStringCommand.Parameters[0].Value.SetWideString(Value);
  FReverseStringCommand.ExecuteUpdate;
  Result := FReverseStringCommand.Parameters[1].Value.GetWideString;
end;


constructor TServerMethods1Client.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(ADBXConnection);
end;


constructor TServerMethods1Client.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ADBXConnection, AInstanceOwner);
end;


destructor TServerMethods1Client.Destroy;
begin
  FreeAndNil(FGet_ReporttCommand);
  FreeAndNil(FGet_Emp_InfoCommand);
  FreeAndNil(FGet_Emp_TreeInfoCommand);
  FreeAndNil(FGet_Logined_infoCommand);
  FreeAndNil(FEchoStringCommand);
  FreeAndNil(FReverseStringCommand);
  inherited;
end;

end.
