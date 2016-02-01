//
// Created by the DataSnap proxy generator.
// 2016-01-27 ¿ÀÈÄ 4:10:16
//

unit UClientclass_Vcl;

interface

uses System.JSON, Data.DBXCommon, Data.DBXClient, Data.DBXDataSnap, Data.DBXJSON, Datasnap.DSProxy, System.Classes, System.SysUtils, Data.DB, Data.SqlExpr, Data.DBXDBReaders, Data.DBXCDSReaders, Data.DBXJSONReflect;

type
  TServerMethods1Client = class(TDSAdminClient)
  private
    FEchoStringCommand: TDBXCommand;
    FReverseStringCommand: TDBXCommand;
    FsignCommand: TDBXCommand;
    FLog_inCommand: TDBXCommand;
    FAvg_SCommand: TDBXCommand;
    FAvg_RCommand: TDBXCommand;
    FSB_AddCommand: TDBXCommand;
    FRB_AddCommand: TDBXCommand;
    FSearch_IDCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    procedure sign(M_ID: string; M_PW: string; M_Name: string; M_phone: string);
    function Log_in(M_ID: string; M_PW: string): Boolean;
    function Avg_S(NO: Integer): string;
    function Avg_R(NO: Integer): string;
    function SB_Add(Title: string; Grade: string; Memo: string; Mno: Integer; Sno: Integer): Integer;
    function RB_Add(Title: string; Grade: string; Memo: string; Mno: Integer; Rno: Integer): Integer;
    function Search_ID(ID: string): Integer;
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

procedure TServerMethods1Client.sign(M_ID: string; M_PW: string; M_Name: string; M_phone: string);
begin
  if FsignCommand = nil then
  begin
    FsignCommand := FDBXConnection.CreateCommand;
    FsignCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FsignCommand.Text := 'TServerMethods1.sign';
    FsignCommand.Prepare;
  end;
  FsignCommand.Parameters[0].Value.SetWideString(M_ID);
  FsignCommand.Parameters[1].Value.SetWideString(M_PW);
  FsignCommand.Parameters[2].Value.SetWideString(M_Name);
  FsignCommand.Parameters[3].Value.SetWideString(M_phone);
  FsignCommand.ExecuteUpdate;
end;

function TServerMethods1Client.Log_in(M_ID: string; M_PW: string): Boolean;
begin
  if FLog_inCommand = nil then
  begin
    FLog_inCommand := FDBXConnection.CreateCommand;
    FLog_inCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FLog_inCommand.Text := 'TServerMethods1.Log_in';
    FLog_inCommand.Prepare;
  end;
  FLog_inCommand.Parameters[0].Value.SetWideString(M_ID);
  FLog_inCommand.Parameters[1].Value.SetWideString(M_PW);
  FLog_inCommand.ExecuteUpdate;
  Result := FLog_inCommand.Parameters[2].Value.GetBoolean;
end;

function TServerMethods1Client.Avg_S(NO: Integer): string;
begin
  if FAvg_SCommand = nil then
  begin
    FAvg_SCommand := FDBXConnection.CreateCommand;
    FAvg_SCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FAvg_SCommand.Text := 'TServerMethods1.Avg_S';
    FAvg_SCommand.Prepare;
  end;
  FAvg_SCommand.Parameters[0].Value.SetInt32(NO);
  FAvg_SCommand.ExecuteUpdate;
  Result := FAvg_SCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethods1Client.Avg_R(NO: Integer): string;
begin
  if FAvg_RCommand = nil then
  begin
    FAvg_RCommand := FDBXConnection.CreateCommand;
    FAvg_RCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FAvg_RCommand.Text := 'TServerMethods1.Avg_R';
    FAvg_RCommand.Prepare;
  end;
  FAvg_RCommand.Parameters[0].Value.SetInt32(NO);
  FAvg_RCommand.ExecuteUpdate;
  Result := FAvg_RCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethods1Client.SB_Add(Title: string; Grade: string; Memo: string; Mno: Integer; Sno: Integer): Integer;
begin
  if FSB_AddCommand = nil then
  begin
    FSB_AddCommand := FDBXConnection.CreateCommand;
    FSB_AddCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSB_AddCommand.Text := 'TServerMethods1.SB_Add';
    FSB_AddCommand.Prepare;
  end;
  FSB_AddCommand.Parameters[0].Value.SetWideString(Title);
  FSB_AddCommand.Parameters[1].Value.SetWideString(Grade);
  FSB_AddCommand.Parameters[2].Value.SetWideString(Memo);
  FSB_AddCommand.Parameters[3].Value.SetInt32(Mno);
  FSB_AddCommand.Parameters[4].Value.SetInt32(Sno);
  FSB_AddCommand.ExecuteUpdate;
  Result := FSB_AddCommand.Parameters[5].Value.GetInt32;
end;

function TServerMethods1Client.RB_Add(Title: string; Grade: string; Memo: string; Mno: Integer; Rno: Integer): Integer;
begin
  if FRB_AddCommand = nil then
  begin
    FRB_AddCommand := FDBXConnection.CreateCommand;
    FRB_AddCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRB_AddCommand.Text := 'TServerMethods1.RB_Add';
    FRB_AddCommand.Prepare;
  end;
  FRB_AddCommand.Parameters[0].Value.SetWideString(Title);
  FRB_AddCommand.Parameters[1].Value.SetWideString(Grade);
  FRB_AddCommand.Parameters[2].Value.SetWideString(Memo);
  FRB_AddCommand.Parameters[3].Value.SetInt32(Mno);
  FRB_AddCommand.Parameters[4].Value.SetInt32(Rno);
  FRB_AddCommand.ExecuteUpdate;
  Result := FRB_AddCommand.Parameters[5].Value.GetInt32;
end;

function TServerMethods1Client.Search_ID(ID: string): Integer;
begin
  if FSearch_IDCommand = nil then
  begin
    FSearch_IDCommand := FDBXConnection.CreateCommand;
    FSearch_IDCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSearch_IDCommand.Text := 'TServerMethods1.Search_ID';
    FSearch_IDCommand.Prepare;
  end;
  FSearch_IDCommand.Parameters[0].Value.SetWideString(ID);
  FSearch_IDCommand.ExecuteUpdate;
  Result := FSearch_IDCommand.Parameters[1].Value.GetInt32;
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
  FsignCommand.DisposeOf;
  FLog_inCommand.DisposeOf;
  FAvg_SCommand.DisposeOf;
  FAvg_RCommand.DisposeOf;
  FSB_AddCommand.DisposeOf;
  FRB_AddCommand.DisposeOf;
  FSearch_IDCommand.DisposeOf;
  inherited;
end;

end.


