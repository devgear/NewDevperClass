//
// Created by the DataSnap proxy generator.
// 2017-06-09 ¿ÀÀü 10:27:09
//

unit UClientClass;

interface

uses System.JSON, Data.DBXCommon, Data.DBXClient, Data.DBXDataSnap, Data.DBXJSON, Datasnap.DSProxy, System.Classes, System.SysUtils, Data.DB, Data.SqlExpr, Data.DBXDBReaders, Data.DBXCDSReaders, Data.DBXJSONReflect;

type
  TServerMethods1Client = class(TDSAdminClient)
  private
    FEchoStringCommand: TDBXCommand;
    FReverseStringCommand: TDBXCommand;
    FCheckLoginCommand: TDBXCommand;
    FDuplicatedIDCommand: TDBXCommand;
    FCheckSeatCommand: TDBXCommand;
    FDuplicatednumCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    function CheckLogin(AID: string; APW: string): Boolean;
    function DuplicatedID(AID: string): Boolean;
    function CheckSeat(ADATE: TDateTime; ALIBSEQ: Integer): Boolean;
    function Duplicatednum(ADATE: TDateTime; ALIBSEQ: Integer; ARent_SeatNum: Integer): Boolean;
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

function TServerMethods1Client.CheckLogin(AID: string; APW: string): Boolean;
begin
  if FCheckLoginCommand = nil then
  begin
    FCheckLoginCommand := FDBXConnection.CreateCommand;
    FCheckLoginCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCheckLoginCommand.Text := 'TServerMethods1.CheckLogin';
    FCheckLoginCommand.Prepare;
  end;
  FCheckLoginCommand.Parameters[0].Value.SetWideString(AID);
  FCheckLoginCommand.Parameters[1].Value.SetWideString(APW);
  FCheckLoginCommand.ExecuteUpdate;
  Result := FCheckLoginCommand.Parameters[2].Value.GetBoolean;
end;

function TServerMethods1Client.DuplicatedID(AID: string): Boolean;
begin
  if FDuplicatedIDCommand = nil then
  begin
    FDuplicatedIDCommand := FDBXConnection.CreateCommand;
    FDuplicatedIDCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDuplicatedIDCommand.Text := 'TServerMethods1.DuplicatedID';
    FDuplicatedIDCommand.Prepare;
  end;
  FDuplicatedIDCommand.Parameters[0].Value.SetWideString(AID);
  FDuplicatedIDCommand.ExecuteUpdate;
  Result := FDuplicatedIDCommand.Parameters[1].Value.GetBoolean;
end;

function TServerMethods1Client.CheckSeat(ADATE: TDateTime; ALIBSEQ: Integer): Boolean;
begin
  if FCheckSeatCommand = nil then
  begin
    FCheckSeatCommand := FDBXConnection.CreateCommand;
    FCheckSeatCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCheckSeatCommand.Text := 'TServerMethods1.CheckSeat';
    FCheckSeatCommand.Prepare;
  end;
  FCheckSeatCommand.Parameters[0].Value.AsDateTime := ADATE;
  FCheckSeatCommand.Parameters[1].Value.SetInt32(ALIBSEQ);
  FCheckSeatCommand.ExecuteUpdate;
  Result := FCheckSeatCommand.Parameters[2].Value.GetBoolean;
end;

function TServerMethods1Client.Duplicatednum(ADATE: TDateTime; ALIBSEQ: Integer; ARent_SeatNum: Integer): Boolean;
begin
  if FDuplicatednumCommand = nil then
  begin
    FDuplicatednumCommand := FDBXConnection.CreateCommand;
    FDuplicatednumCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDuplicatednumCommand.Text := 'TServerMethods1.Duplicatednum';
    FDuplicatednumCommand.Prepare;
  end;
  FDuplicatednumCommand.Parameters[0].Value.AsDateTime := ADATE;
  FDuplicatednumCommand.Parameters[1].Value.SetInt32(ALIBSEQ);
  FDuplicatednumCommand.Parameters[2].Value.SetInt32(ARent_SeatNum);
  FDuplicatednumCommand.ExecuteUpdate;
  Result := FDuplicatednumCommand.Parameters[3].Value.GetBoolean;
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
  FCheckLoginCommand.DisposeOf;
  FDuplicatedIDCommand.DisposeOf;
  FCheckSeatCommand.DisposeOf;
  FDuplicatednumCommand.DisposeOf;
  inherited;
end;

end.

