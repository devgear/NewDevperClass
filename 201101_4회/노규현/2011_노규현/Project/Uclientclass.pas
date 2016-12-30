//
// Created by the DataSnap proxy generator.
// 2011-01-29 ¿ÀÈÄ 10:12:30
//

unit Uclientclass;

interface

uses DBXCommon, DBXClient, DBXJSON, DSProxy, Classes, SysUtils, DB, SqlExpr, DBXDBReaders, DBXJSONReflect;

type
  TServerMethodsClient = class(TDSAdminClient)
  private
    FEchoStringCommand: TDBXCommand;
    FReverseStringCommand: TDBXCommand;
    FInsert_RENTALCommand: TDBXCommand;
    FInsert_CustomCommand: TDBXCommand;
    FInsert_RESERVATIONCommand: TDBXCommand;
    FupdataqueryCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    function Insert_RENTAL(PRENTALID: string; PCAR: string; PCUSTOM: string; PBRANCH: string; PPRICE: string; PUDATE: string; PRENTALDATE: string; PBACKDATE: string; PREVNUM: string; PCARSTATUS: string; PPENALTY: string): Integer;
    function Insert_Custom(pid: string; pname: string; ptel: string; paddress: string; plicense: string; pjumin: string; pbigo: string): Integer;
    function Insert_RESERVATION(PREV_NUM: string; PCARID: string; pid: string; PREVDATE: string; PUSEDATE: string; PBACKDATE: string; PPRICE: string; PBRANCH: string): Integer;
    function updataquery(Value: string): Integer;
  end;

implementation

function TServerMethodsClient.EchoString(Value: string): string;
begin
  if FEchoStringCommand = nil then
  begin
    FEchoStringCommand := FDBXConnection.CreateCommand;
    FEchoStringCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FEchoStringCommand.Text := 'TServerMethods.EchoString';
    FEchoStringCommand.Prepare;
  end;
  FEchoStringCommand.Parameters[0].Value.SetWideString(Value);
  FEchoStringCommand.ExecuteUpdate;
  Result := FEchoStringCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethodsClient.ReverseString(Value: string): string;
begin
  if FReverseStringCommand = nil then
  begin
    FReverseStringCommand := FDBXConnection.CreateCommand;
    FReverseStringCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FReverseStringCommand.Text := 'TServerMethods.ReverseString';
    FReverseStringCommand.Prepare;
  end;
  FReverseStringCommand.Parameters[0].Value.SetWideString(Value);
  FReverseStringCommand.ExecuteUpdate;
  Result := FReverseStringCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethodsClient.Insert_RENTAL(PRENTALID: string; PCAR: string; PCUSTOM: string; PBRANCH: string; PPRICE: string; PUDATE: string; PRENTALDATE: string; PBACKDATE: string; PREVNUM: string; PCARSTATUS: string; PPENALTY: string): Integer;
begin
  if FInsert_RENTALCommand = nil then
  begin
    FInsert_RENTALCommand := FDBXConnection.CreateCommand;
    FInsert_RENTALCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FInsert_RENTALCommand.Text := 'TServerMethods.Insert_RENTAL';
    FInsert_RENTALCommand.Prepare;
  end;
  FInsert_RENTALCommand.Parameters[0].Value.SetWideString(PRENTALID);
  FInsert_RENTALCommand.Parameters[1].Value.SetWideString(PCAR);
  FInsert_RENTALCommand.Parameters[2].Value.SetWideString(PCUSTOM);
  FInsert_RENTALCommand.Parameters[3].Value.SetWideString(PBRANCH);
  FInsert_RENTALCommand.Parameters[4].Value.SetWideString(PPRICE);
  FInsert_RENTALCommand.Parameters[5].Value.SetWideString(PUDATE);
  FInsert_RENTALCommand.Parameters[6].Value.SetWideString(PRENTALDATE);
  FInsert_RENTALCommand.Parameters[7].Value.SetWideString(PBACKDATE);
  FInsert_RENTALCommand.Parameters[8].Value.SetWideString(PREVNUM);
  FInsert_RENTALCommand.Parameters[9].Value.SetWideString(PCARSTATUS);
  FInsert_RENTALCommand.Parameters[10].Value.SetWideString(PPENALTY);
  FInsert_RENTALCommand.ExecuteUpdate;
  Result := FInsert_RENTALCommand.Parameters[11].Value.GetInt32;
end;

function TServerMethodsClient.Insert_Custom(pid: string; pname: string; ptel: string; paddress: string; plicense: string; pjumin: string; pbigo: string): Integer;
begin
  if FInsert_CustomCommand = nil then
  begin
    FInsert_CustomCommand := FDBXConnection.CreateCommand;
    FInsert_CustomCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FInsert_CustomCommand.Text := 'TServerMethods.Insert_Custom';
    FInsert_CustomCommand.Prepare;
  end;
  FInsert_CustomCommand.Parameters[0].Value.SetWideString(pid);
  FInsert_CustomCommand.Parameters[1].Value.SetWideString(pname);
  FInsert_CustomCommand.Parameters[2].Value.SetWideString(ptel);
  FInsert_CustomCommand.Parameters[3].Value.SetWideString(paddress);
  FInsert_CustomCommand.Parameters[4].Value.SetWideString(plicense);
  FInsert_CustomCommand.Parameters[5].Value.SetWideString(pjumin);
  FInsert_CustomCommand.Parameters[6].Value.SetWideString(pbigo);
  FInsert_CustomCommand.ExecuteUpdate;
  Result := FInsert_CustomCommand.Parameters[7].Value.GetInt32;
end;

function TServerMethodsClient.Insert_RESERVATION(PREV_NUM: string; PCARID: string; pid: string; PREVDATE: string; PUSEDATE: string; PBACKDATE: string; PPRICE: string; PBRANCH: string): Integer;
begin
  if FInsert_RESERVATIONCommand = nil then
  begin
    FInsert_RESERVATIONCommand := FDBXConnection.CreateCommand;
    FInsert_RESERVATIONCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FInsert_RESERVATIONCommand.Text := 'TServerMethods.Insert_RESERVATION';
    FInsert_RESERVATIONCommand.Prepare;
  end;
  FInsert_RESERVATIONCommand.Parameters[0].Value.SetWideString(PREV_NUM);
  FInsert_RESERVATIONCommand.Parameters[1].Value.SetWideString(PCARID);
  FInsert_RESERVATIONCommand.Parameters[2].Value.SetWideString(pid);
  FInsert_RESERVATIONCommand.Parameters[3].Value.SetWideString(PREVDATE);
  FInsert_RESERVATIONCommand.Parameters[4].Value.SetWideString(PUSEDATE);
  FInsert_RESERVATIONCommand.Parameters[5].Value.SetWideString(PBACKDATE);
  FInsert_RESERVATIONCommand.Parameters[6].Value.SetWideString(PPRICE);
  FInsert_RESERVATIONCommand.Parameters[7].Value.SetWideString(PBRANCH);
  FInsert_RESERVATIONCommand.ExecuteUpdate;
  Result := FInsert_RESERVATIONCommand.Parameters[8].Value.GetInt32;
end;

function TServerMethodsClient.updataquery(Value: string): Integer;
begin
  if FupdataqueryCommand = nil then
  begin
    FupdataqueryCommand := FDBXConnection.CreateCommand;
    FupdataqueryCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FupdataqueryCommand.Text := 'TServerMethods.updataquery';
    FupdataqueryCommand.Prepare;
  end;
  FupdataqueryCommand.Parameters[0].Value.SetWideString(Value);
  FupdataqueryCommand.ExecuteUpdate;
  Result := FupdataqueryCommand.Parameters[1].Value.GetInt32;
end;


constructor TServerMethodsClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(ADBXConnection);
end;


constructor TServerMethodsClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ADBXConnection, AInstanceOwner);
end;


destructor TServerMethodsClient.Destroy;
begin
  FreeAndNil(FEchoStringCommand);
  FreeAndNil(FReverseStringCommand);
  FreeAndNil(FInsert_RENTALCommand);
  FreeAndNil(FInsert_CustomCommand);
  FreeAndNil(FInsert_RESERVATIONCommand);
  FreeAndNil(FupdataqueryCommand);
  inherited;
end;

end.

