//
// Created by the DataSnap proxy generator.
// 2016-01-26 ¿ÀÈÄ 1:34:54
//

unit ServerMethods;

interface

uses System.JSON, Data.DBXCommon, Data.DBXClient, Data.DBXDataSnap, Data.DBXJSON, Datasnap.DSProxy, System.Classes, System.SysUtils, Data.DB, Data.SqlExpr, Data.DBXDBReaders, Data.DBXCDSReaders, Data.DBXJSONReflect;

type
  TServerMethods1Client = class(TDSAdminClient)
  private
    FEchoStringCommand: TDBXCommand;
    FReverseStringCommand: TDBXCommand;
    FLog_inCommand: TDBXCommand;
    Fmark_upCommand: TDBXCommand;
    FGradecheckCommand: TDBXCommand;
    FsignGradecheckCommand: TDBXCommand;
    FSignupCommand: TDBXCommand;
    FtotalCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    function Log_in(sdt_num: Integer; sdt_pw: string): Integer;
    procedure mark_up(MK_STDNAME: string; MK_SDTDEPTNUM: string; MK_SBJTNAME: string; MK_PROFNAME: string; MK_ROOM: string; MK_DIV: string; MK_SDTNUM: Integer; MK_SBJTNUM: Integer; MK_SBJTCLASS: Integer; MK_PROFNUM: Integer; MK_GRADE: Integer);
    function Gradecheck(sdt_num: Integer): Integer;
    function signGradecheck(sdt_num: Integer): Integer;
    procedure Signup(sign_STDNAME: string; sign_SDTDEPTNUM: string; sign_SBJTNAME: string; sign_PROFNAME: string; sign_ROOM: string; sign_DIV: string; sign_SDTNUM: Integer; sign_SBJTNUM: Integer; sign_SBJTCLASS: Integer; sign_PROFNUM: Integer; sign_GRADE: Integer);
    function total(sbjt_num: Integer; sbjt_class: Integer): Boolean;
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

function TServerMethods1Client.Log_in(sdt_num: Integer; sdt_pw: string): Integer;
begin
  if FLog_inCommand = nil then
  begin
    FLog_inCommand := FDBXConnection.CreateCommand;
    FLog_inCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FLog_inCommand.Text := 'TServerMethods1.Log_in';
    FLog_inCommand.Prepare;
  end;
  FLog_inCommand.Parameters[0].Value.SetInt32(sdt_num);
  FLog_inCommand.Parameters[1].Value.SetWideString(sdt_pw);
  FLog_inCommand.ExecuteUpdate;
  Result := FLog_inCommand.Parameters[2].Value.GetInt32;
end;

procedure TServerMethods1Client.mark_up(MK_STDNAME: string; MK_SDTDEPTNUM: string; MK_SBJTNAME: string; MK_PROFNAME: string; MK_ROOM: string; MK_DIV: string; MK_SDTNUM: Integer; MK_SBJTNUM: Integer; MK_SBJTCLASS: Integer; MK_PROFNUM: Integer; MK_GRADE: Integer);
begin
  if Fmark_upCommand = nil then
  begin
    Fmark_upCommand := FDBXConnection.CreateCommand;
    Fmark_upCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fmark_upCommand.Text := 'TServerMethods1.mark_up';
    Fmark_upCommand.Prepare;
  end;
  Fmark_upCommand.Parameters[0].Value.SetWideString(MK_STDNAME);
  Fmark_upCommand.Parameters[1].Value.SetWideString(MK_SDTDEPTNUM);
  Fmark_upCommand.Parameters[2].Value.SetWideString(MK_SBJTNAME);
  Fmark_upCommand.Parameters[3].Value.SetWideString(MK_PROFNAME);
  Fmark_upCommand.Parameters[4].Value.SetWideString(MK_ROOM);
  Fmark_upCommand.Parameters[5].Value.SetWideString(MK_DIV);
  Fmark_upCommand.Parameters[6].Value.SetInt32(MK_SDTNUM);
  Fmark_upCommand.Parameters[7].Value.SetInt32(MK_SBJTNUM);
  Fmark_upCommand.Parameters[8].Value.SetInt32(MK_SBJTCLASS);
  Fmark_upCommand.Parameters[9].Value.SetInt32(MK_PROFNUM);
  Fmark_upCommand.Parameters[10].Value.SetInt32(MK_GRADE);
  Fmark_upCommand.ExecuteUpdate;
end;

function TServerMethods1Client.Gradecheck(sdt_num: Integer): Integer;
begin
  if FGradecheckCommand = nil then
  begin
    FGradecheckCommand := FDBXConnection.CreateCommand;
    FGradecheckCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGradecheckCommand.Text := 'TServerMethods1.Gradecheck';
    FGradecheckCommand.Prepare;
  end;
  FGradecheckCommand.Parameters[0].Value.SetInt32(sdt_num);
  FGradecheckCommand.ExecuteUpdate;
  Result := FGradecheckCommand.Parameters[1].Value.GetInt32;
end;

function TServerMethods1Client.signGradecheck(sdt_num: Integer): Integer;
begin
  if FsignGradecheckCommand = nil then
  begin
    FsignGradecheckCommand := FDBXConnection.CreateCommand;
    FsignGradecheckCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FsignGradecheckCommand.Text := 'TServerMethods1.signGradecheck';
    FsignGradecheckCommand.Prepare;
  end;
  FsignGradecheckCommand.Parameters[0].Value.SetInt32(sdt_num);
  FsignGradecheckCommand.ExecuteUpdate;
  Result := FsignGradecheckCommand.Parameters[1].Value.GetInt32;
end;

procedure TServerMethods1Client.Signup(sign_STDNAME: string; sign_SDTDEPTNUM: string; sign_SBJTNAME: string; sign_PROFNAME: string; sign_ROOM: string; sign_DIV: string; sign_SDTNUM: Integer; sign_SBJTNUM: Integer; sign_SBJTCLASS: Integer; sign_PROFNUM: Integer; sign_GRADE: Integer);
begin
  if FSignupCommand = nil then
  begin
    FSignupCommand := FDBXConnection.CreateCommand;
    FSignupCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSignupCommand.Text := 'TServerMethods1.Signup';
    FSignupCommand.Prepare;
  end;
  FSignupCommand.Parameters[0].Value.SetWideString(sign_STDNAME);
  FSignupCommand.Parameters[1].Value.SetWideString(sign_SDTDEPTNUM);
  FSignupCommand.Parameters[2].Value.SetWideString(sign_SBJTNAME);
  FSignupCommand.Parameters[3].Value.SetWideString(sign_PROFNAME);
  FSignupCommand.Parameters[4].Value.SetWideString(sign_ROOM);
  FSignupCommand.Parameters[5].Value.SetWideString(sign_DIV);
  FSignupCommand.Parameters[6].Value.SetInt32(sign_SDTNUM);
  FSignupCommand.Parameters[7].Value.SetInt32(sign_SBJTNUM);
  FSignupCommand.Parameters[8].Value.SetInt32(sign_SBJTCLASS);
  FSignupCommand.Parameters[9].Value.SetInt32(sign_PROFNUM);
  FSignupCommand.Parameters[10].Value.SetInt32(sign_GRADE);
  FSignupCommand.ExecuteUpdate;
end;

function TServerMethods1Client.total(sbjt_num: Integer; sbjt_class: Integer): Boolean;
begin
  if FtotalCommand = nil then
  begin
    FtotalCommand := FDBXConnection.CreateCommand;
    FtotalCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FtotalCommand.Text := 'TServerMethods1.total';
    FtotalCommand.Prepare;
  end;
  FtotalCommand.Parameters[0].Value.SetInt32(sbjt_num);
  FtotalCommand.Parameters[1].Value.SetInt32(sbjt_class);
  FtotalCommand.ExecuteUpdate;
  Result := FtotalCommand.Parameters[2].Value.GetBoolean;
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
  FLog_inCommand.DisposeOf;
  Fmark_upCommand.DisposeOf;
  FGradecheckCommand.DisposeOf;
  FsignGradecheckCommand.DisposeOf;
  FSignupCommand.DisposeOf;
  FtotalCommand.DisposeOf;
  inherited;
end;

end.

