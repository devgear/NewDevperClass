//
// Created by the DataSnap proxy generator.
// 2015-01-30 ¿ÀÀü 2:37:41
//

unit UClient;

interface

uses System.JSON, Data.DBXCommon, Data.DBXClient, Data.DBXDataSnap, Data.DBXJSON, Datasnap.DSProxy, System.Classes, System.SysUtils, Data.DB, Data.SqlExpr, Data.DBXDBReaders, Data.DBXCDSReaders, Data.DBXJSONReflect;

type
  TServerMethods1Client = class(TDSAdminClient)
  private
    FEchoStringCommand: TDBXCommand;
    FReverseStringCommand: TDBXCommand;
    FInsert_BookRentalCommand: TDBXCommand;
    FInsert_JoinCommand: TDBXCommand;
    FDelete_RentalCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    function Insert_BookRental(RentalNum: string; Period: string; BookNum: string): Integer;
    function Insert_Join(ID: string; Jumin: string; Name: string; Age: string; Phone: string; Address: string): Integer;
    function Delete_Rental(Value: string; BookNum: string): Integer;
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

function TServerMethods1Client.Insert_BookRental(RentalNum: string; Period: string; BookNum: string): Integer;
begin
  if FInsert_BookRentalCommand = nil then
  begin
    FInsert_BookRentalCommand := FDBXConnection.CreateCommand;
    FInsert_BookRentalCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FInsert_BookRentalCommand.Text := 'TServerMethods1.Insert_BookRental';
    FInsert_BookRentalCommand.Prepare;
  end;
  FInsert_BookRentalCommand.Parameters[0].Value.SetWideString(RentalNum);
  FInsert_BookRentalCommand.Parameters[1].Value.SetWideString(Period);
  FInsert_BookRentalCommand.Parameters[2].Value.SetWideString(BookNum);
  FInsert_BookRentalCommand.ExecuteUpdate;
  Result := FInsert_BookRentalCommand.Parameters[3].Value.GetInt32;
end;

function TServerMethods1Client.Insert_Join(ID: string; Jumin: string; Name: string; Age: string; Phone: string; Address: string): Integer;
begin
  if FInsert_JoinCommand = nil then
  begin
    FInsert_JoinCommand := FDBXConnection.CreateCommand;
    FInsert_JoinCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FInsert_JoinCommand.Text := 'TServerMethods1.Insert_Join';
    FInsert_JoinCommand.Prepare;
  end;
  FInsert_JoinCommand.Parameters[0].Value.SetWideString(ID);
  FInsert_JoinCommand.Parameters[1].Value.SetWideString(Jumin);
  FInsert_JoinCommand.Parameters[2].Value.SetWideString(Name);
  FInsert_JoinCommand.Parameters[3].Value.SetWideString(Age);
  FInsert_JoinCommand.Parameters[4].Value.SetWideString(Phone);
  FInsert_JoinCommand.Parameters[5].Value.SetWideString(Address);
  FInsert_JoinCommand.ExecuteUpdate;
  Result := FInsert_JoinCommand.Parameters[6].Value.GetInt32;
end;

function TServerMethods1Client.Delete_Rental(Value: string; BookNum: string): Integer;
begin
  if FDelete_RentalCommand = nil then
  begin
    FDelete_RentalCommand := FDBXConnection.CreateCommand;
    FDelete_RentalCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDelete_RentalCommand.Text := 'TServerMethods1.Delete_Rental';
    FDelete_RentalCommand.Prepare;
  end;
  FDelete_RentalCommand.Parameters[0].Value.SetWideString(Value);
  FDelete_RentalCommand.Parameters[1].Value.SetWideString(BookNum);
  FDelete_RentalCommand.ExecuteUpdate;
  Result := FDelete_RentalCommand.Parameters[2].Value.GetInt32;
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
  FInsert_BookRentalCommand.DisposeOf;
  FInsert_JoinCommand.DisposeOf;
  FDelete_RentalCommand.DisposeOf;
  inherited;
end;

end.

