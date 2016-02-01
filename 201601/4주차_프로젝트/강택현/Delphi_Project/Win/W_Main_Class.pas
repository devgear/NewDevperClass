//
// Created by the DataSnap proxy generator.
// 2016-01-28 ¿ÀÀü 9:00:25
//

unit W_Main_Class;

interface

uses System.JSON, Data.DBXCommon, Data.DBXClient, Data.DBXDataSnap, Data.DBXJSON, Datasnap.DSProxy, System.Classes, System.SysUtils, Data.DB, Data.SqlExpr, Data.DBXDBReaders, Data.DBXCDSReaders, Data.DBXJSONReflect;

type
  TServerMethods1Client = class(TDSAdminClient)
  private
    FEchoStringCommand: TDBXCommand;
    FReverseStringCommand: TDBXCommand;
    FInsert_QrtCommand: TDBXCommand;
    FInsert_W_QrtCommand: TDBXCommand;
    Fbtn_HereMeet_ClickCommand: TDBXCommand;
    FChat_LogCommand: TDBXCommand;
    FCreate_RoomCommand: TDBXCommand;
    FJoin_MemberCommand: TDBXCommand;
    FbroadcastCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    procedure Insert_Qrt(Name: string; Lat: string; Lng: string; channel: string);
    procedure Insert_W_Qrt(Name: string; Address: string; channel: string);
    procedure btn_HereMeet_Click(channel: string);
    procedure Chat_Log(chat: string; channel: string);
    procedure Create_Room(Room: string);
    procedure Join_Member(Name: string; channel: string);
    function broadcast(Value: TJSONObject; channel: string): Boolean;
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

procedure TServerMethods1Client.Insert_Qrt(Name: string; Lat: string; Lng: string; channel: string);
begin
  if FInsert_QrtCommand = nil then
  begin
    FInsert_QrtCommand := FDBXConnection.CreateCommand;
    FInsert_QrtCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FInsert_QrtCommand.Text := 'TServerMethods1.Insert_Qrt';
    FInsert_QrtCommand.Prepare;
  end;
  FInsert_QrtCommand.Parameters[0].Value.SetWideString(Name);
  FInsert_QrtCommand.Parameters[1].Value.SetWideString(Lat);
  FInsert_QrtCommand.Parameters[2].Value.SetWideString(Lng);
  FInsert_QrtCommand.Parameters[3].Value.SetWideString(channel);
  FInsert_QrtCommand.ExecuteUpdate;
end;

procedure TServerMethods1Client.Insert_W_Qrt(Name: string; Address: string; channel: string);
begin
  if FInsert_W_QrtCommand = nil then
  begin
    FInsert_W_QrtCommand := FDBXConnection.CreateCommand;
    FInsert_W_QrtCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FInsert_W_QrtCommand.Text := 'TServerMethods1.Insert_W_Qrt';
    FInsert_W_QrtCommand.Prepare;
  end;
  FInsert_W_QrtCommand.Parameters[0].Value.SetWideString(Name);
  FInsert_W_QrtCommand.Parameters[1].Value.SetWideString(Address);
  FInsert_W_QrtCommand.Parameters[2].Value.SetWideString(channel);
  FInsert_W_QrtCommand.ExecuteUpdate;
end;

procedure TServerMethods1Client.btn_HereMeet_Click(channel: string);
begin
  if Fbtn_HereMeet_ClickCommand = nil then
  begin
    Fbtn_HereMeet_ClickCommand := FDBXConnection.CreateCommand;
    Fbtn_HereMeet_ClickCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fbtn_HereMeet_ClickCommand.Text := 'TServerMethods1.btn_HereMeet_Click';
    Fbtn_HereMeet_ClickCommand.Prepare;
  end;
  Fbtn_HereMeet_ClickCommand.Parameters[0].Value.SetWideString(channel);
  Fbtn_HereMeet_ClickCommand.ExecuteUpdate;
end;

procedure TServerMethods1Client.Chat_Log(chat: string; channel: string);
begin
  if FChat_LogCommand = nil then
  begin
    FChat_LogCommand := FDBXConnection.CreateCommand;
    FChat_LogCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FChat_LogCommand.Text := 'TServerMethods1.Chat_Log';
    FChat_LogCommand.Prepare;
  end;
  FChat_LogCommand.Parameters[0].Value.SetWideString(chat);
  FChat_LogCommand.Parameters[1].Value.SetWideString(channel);
  FChat_LogCommand.ExecuteUpdate;
end;

procedure TServerMethods1Client.Create_Room(Room: string);
begin
  if FCreate_RoomCommand = nil then
  begin
    FCreate_RoomCommand := FDBXConnection.CreateCommand;
    FCreate_RoomCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCreate_RoomCommand.Text := 'TServerMethods1.Create_Room';
    FCreate_RoomCommand.Prepare;
  end;
  FCreate_RoomCommand.Parameters[0].Value.SetWideString(Room);
  FCreate_RoomCommand.ExecuteUpdate;
end;

procedure TServerMethods1Client.Join_Member(Name: string; channel: string);
begin
  if FJoin_MemberCommand = nil then
  begin
    FJoin_MemberCommand := FDBXConnection.CreateCommand;
    FJoin_MemberCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FJoin_MemberCommand.Text := 'TServerMethods1.Join_Member';
    FJoin_MemberCommand.Prepare;
  end;
  FJoin_MemberCommand.Parameters[0].Value.SetWideString(Name);
  FJoin_MemberCommand.Parameters[1].Value.SetWideString(channel);
  FJoin_MemberCommand.ExecuteUpdate;
end;

function TServerMethods1Client.broadcast(Value: TJSONObject; channel: string): Boolean;
begin
  if FbroadcastCommand = nil then
  begin
    FbroadcastCommand := FDBXConnection.CreateCommand;
    FbroadcastCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FbroadcastCommand.Text := 'TServerMethods1.broadcast';
    FbroadcastCommand.Prepare;
  end;
  FbroadcastCommand.Parameters[0].Value.SetJSONValue(Value, FInstanceOwner);
  FbroadcastCommand.Parameters[1].Value.SetWideString(channel);
  FbroadcastCommand.ExecuteUpdate;
  Result := FbroadcastCommand.Parameters[2].Value.GetBoolean;
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
  FInsert_QrtCommand.DisposeOf;
  FInsert_W_QrtCommand.DisposeOf;
  Fbtn_HereMeet_ClickCommand.DisposeOf;
  FChat_LogCommand.DisposeOf;
  FCreate_RoomCommand.DisposeOf;
  FJoin_MemberCommand.DisposeOf;
  FbroadcastCommand.DisposeOf;
  inherited;
end;

end.

