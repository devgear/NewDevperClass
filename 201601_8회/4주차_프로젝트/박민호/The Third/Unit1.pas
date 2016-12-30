//
// Created by the DataSnap proxy generator.
// 2016-01-28 ¿ÀÀü 2:00:36
//

unit Unit1;

interface

uses System.JSON, Data.DBXCommon, Data.DBXClient, Data.DBXDataSnap, Data.DBXJSON, Datasnap.DSProxy, System.Classes, System.SysUtils, Data.DB, Data.SqlExpr, Data.DBXDBReaders, Data.DBXCDSReaders, Data.DBXJSONReflect;

type
  TFlowerServerMethodsClient = class(TDSAdminClient)
  private
    FEchoStringCommand: TDBXCommand;
    FReverseStringCommand: TDBXCommand;
    FLoginCommand: TDBXCommand;
    FFSearchCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    function Login(I: string; P: string): string;
    procedure FSearch(S: string);
  end;

implementation

function TFlowerServerMethodsClient.EchoString(Value: string): string;
begin
  if FEchoStringCommand = nil then
  begin
    FEchoStringCommand := FDBXConnection.CreateCommand;
    FEchoStringCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FEchoStringCommand.Text := 'TFlowerServerMethods.EchoString';
    FEchoStringCommand.Prepare;
  end;
  FEchoStringCommand.Parameters[0].Value.SetWideString(Value);
  FEchoStringCommand.ExecuteUpdate;
  Result := FEchoStringCommand.Parameters[1].Value.GetWideString;
end;

function TFlowerServerMethodsClient.ReverseString(Value: string): string;
begin
  if FReverseStringCommand = nil then
  begin
    FReverseStringCommand := FDBXConnection.CreateCommand;
    FReverseStringCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FReverseStringCommand.Text := 'TFlowerServerMethods.ReverseString';
    FReverseStringCommand.Prepare;
  end;
  FReverseStringCommand.Parameters[0].Value.SetWideString(Value);
  FReverseStringCommand.ExecuteUpdate;
  Result := FReverseStringCommand.Parameters[1].Value.GetWideString;
end;

function TFlowerServerMethodsClient.Login(I: string; P: string): string;
begin
  if FLoginCommand = nil then
  begin
    FLoginCommand := FDBXConnection.CreateCommand;
    FLoginCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FLoginCommand.Text := 'TFlowerServerMethods.Login';
    FLoginCommand.Prepare;
  end;
  FLoginCommand.Parameters[0].Value.SetWideString(I);
  FLoginCommand.Parameters[1].Value.SetWideString(P);
  FLoginCommand.ExecuteUpdate;
  Result := FLoginCommand.Parameters[2].Value.GetWideString;
end;

procedure TFlowerServerMethodsClient.FSearch(S: string);
begin
  if FFSearchCommand = nil then
  begin
    FFSearchCommand := FDBXConnection.CreateCommand;
    FFSearchCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFSearchCommand.Text := 'TFlowerServerMethods.FSearch';
    FFSearchCommand.Prepare;
  end;
  FFSearchCommand.Parameters[0].Value.SetWideString(S);
  FFSearchCommand.ExecuteUpdate;
end;


constructor TFlowerServerMethodsClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(ADBXConnection);
end;


constructor TFlowerServerMethodsClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ADBXConnection, AInstanceOwner);
end;


destructor TFlowerServerMethodsClient.Destroy;
begin
  FEchoStringCommand.DisposeOf;
  FReverseStringCommand.DisposeOf;
  FLoginCommand.DisposeOf;
  FFSearchCommand.DisposeOf;
  inherited;
end;

end.

