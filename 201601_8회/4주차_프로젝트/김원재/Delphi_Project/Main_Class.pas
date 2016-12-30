//
// Created by the DataSnap proxy generator.
// 2016-01-29 ¿ÀÈÄ 12:16:24
//

unit Main_Class;

interface

uses System.JSON, Data.DBXCommon, Data.DBXClient, Data.DBXDataSnap, Data.DBXJSON, Datasnap.DSProxy, System.Classes, System.SysUtils, Data.DB, Data.SqlExpr, Data.DBXDBReaders, Data.DBXCDSReaders, Data.DBXJSONReflect;

type
  TServerMethods1Client = class(TDSAdminClient)
  private
    FEchoStringCommand: TDBXCommand;
    FReverseStringCommand: TDBXCommand;
    FRes_SearchCommand: TDBXCommand;
    FappoinmentCommand: TDBXCommand;
    FappoinmenttwoCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    function Res_Search(Res_data: string; code: string): Integer;
    function appoinment(sql: string): string;
    function appoinmenttwo(sql: string; date: string): string;
  end;

implementation

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

function TServerMethods1Client.Res_Search(Res_data: string; code: string): Integer;
begin
  if FRes_SearchCommand = nil then
  begin
    FRes_SearchCommand := FDBXConnection.CreateCommand;
    FRes_SearchCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRes_SearchCommand.Text := 'TServerMethods1.Res_Search';
    FRes_SearchCommand.Prepare;
  end;
  FRes_SearchCommand.Parameters[0].Value.SetWideString(Res_data);
  FRes_SearchCommand.Parameters[1].Value.SetWideString(code);
  FRes_SearchCommand.ExecuteUpdate;
  Result := FRes_SearchCommand.Parameters[2].Value.GetInt32;
end;

function TServerMethods1Client.appoinment(sql: string): string;
begin
  if FappoinmentCommand = nil then
  begin
    FappoinmentCommand := FDBXConnection.CreateCommand;
    FappoinmentCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FappoinmentCommand.Text := 'TServerMethods1.appoinment';
    FappoinmentCommand.Prepare;
  end;
  FappoinmentCommand.Parameters[0].Value.SetWideString(sql);
  FappoinmentCommand.ExecuteUpdate;
  Result := FappoinmentCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethods1Client.appoinmenttwo(sql: string; date: string): string;
begin
  if FappoinmenttwoCommand = nil then
  begin
    FappoinmenttwoCommand := FDBXConnection.CreateCommand;
    FappoinmenttwoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FappoinmenttwoCommand.Text := 'TServerMethods1.appoinmenttwo';
    FappoinmenttwoCommand.Prepare;
  end;
  FappoinmenttwoCommand.Parameters[0].Value.SetWideString(sql);
  FappoinmenttwoCommand.Parameters[1].Value.SetWideString(date);
  FappoinmenttwoCommand.ExecuteUpdate;
  Result := FappoinmenttwoCommand.Parameters[2].Value.GetWideString;
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
  FEchoStringCommand.DisposeOf;
  FReverseStringCommand.DisposeOf;
  FRes_SearchCommand.DisposeOf;
  FappoinmentCommand.DisposeOf;
  FappoinmenttwoCommand.DisposeOf;
  inherited;
end;

end.

