//
// Created by the DataSnap proxy generator.
// 2016-01-28 ¿ÀÈÄ 9:25:11
//

unit Unit2;

interface

uses System.JSON, Data.DBXCommon, Data.DBXClient, Data.DBXDataSnap, Data.DBXJSON, Datasnap.DSProxy, System.Classes, System.SysUtils, Data.DB, Data.SqlExpr, Data.DBXDBReaders, Data.DBXCDSReaders, Data.DBXJSONReflect;

type
  TServerMethods1Client = class(TDSAdminClient)
  private
    FEchoStringCommand: TDBXCommand;
    FReverseStringCommand: TDBXCommand;
    FloginCommand: TDBXCommand;
    Freserve_addCommand: TDBXCommand;
    Frepairlist_viewCommand: TDBXCommand;
    Fget_countCommand: TDBXCommand;
    Fserch_centerCommand: TDBXCommand;
    FinsertcheckCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    function login(uname: string; uphone: string): Boolean;
    procedure reserve_add(uname: string; uphone: string; compo: string; cname: string; reservedate: TDateTime; state: string);
    procedure repairlist_view(uname: string; uphone: string);
    function get_count(Value: string): Integer;
    procedure serch_center(cname: string);
    procedure insertcheck(rkey: string);
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

function TServerMethods1Client.login(uname: string; uphone: string): Boolean;
begin
  if FloginCommand = nil then
  begin
    FloginCommand := FDBXConnection.CreateCommand;
    FloginCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FloginCommand.Text := 'TServerMethods1.login';
    FloginCommand.Prepare;
  end;
  FloginCommand.Parameters[0].Value.SetWideString(uname);
  FloginCommand.Parameters[1].Value.SetWideString(uphone);
  FloginCommand.ExecuteUpdate;
  Result := FloginCommand.Parameters[2].Value.GetBoolean;
end;

procedure TServerMethods1Client.reserve_add(uname: string; uphone: string; compo: string; cname: string; reservedate: TDateTime; state: string);
begin
  if Freserve_addCommand = nil then
  begin
    Freserve_addCommand := FDBXConnection.CreateCommand;
    Freserve_addCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Freserve_addCommand.Text := 'TServerMethods1.reserve_add';
    Freserve_addCommand.Prepare;
  end;
  Freserve_addCommand.Parameters[0].Value.SetWideString(uname);
  Freserve_addCommand.Parameters[1].Value.SetWideString(uphone);
  Freserve_addCommand.Parameters[2].Value.SetWideString(compo);
  Freserve_addCommand.Parameters[3].Value.SetWideString(cname);
  Freserve_addCommand.Parameters[4].Value.AsDateTime := reservedate;
  Freserve_addCommand.Parameters[5].Value.SetWideString(state);
  Freserve_addCommand.ExecuteUpdate;
end;

procedure TServerMethods1Client.repairlist_view(uname: string; uphone: string);
begin
  if Frepairlist_viewCommand = nil then
  begin
    Frepairlist_viewCommand := FDBXConnection.CreateCommand;
    Frepairlist_viewCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Frepairlist_viewCommand.Text := 'TServerMethods1.repairlist_view';
    Frepairlist_viewCommand.Prepare;
  end;
  Frepairlist_viewCommand.Parameters[0].Value.SetWideString(uname);
  Frepairlist_viewCommand.Parameters[1].Value.SetWideString(uphone);
  Frepairlist_viewCommand.ExecuteUpdate;
end;

function TServerMethods1Client.get_count(Value: string): Integer;
begin
  if Fget_countCommand = nil then
  begin
    Fget_countCommand := FDBXConnection.CreateCommand;
    Fget_countCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fget_countCommand.Text := 'TServerMethods1.get_count';
    Fget_countCommand.Prepare;
  end;
  Fget_countCommand.Parameters[0].Value.SetWideString(Value);
  Fget_countCommand.ExecuteUpdate;
  Result := Fget_countCommand.Parameters[1].Value.GetInt32;
end;

procedure TServerMethods1Client.serch_center(cname: string);
begin
  if Fserch_centerCommand = nil then
  begin
    Fserch_centerCommand := FDBXConnection.CreateCommand;
    Fserch_centerCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fserch_centerCommand.Text := 'TServerMethods1.serch_center';
    Fserch_centerCommand.Prepare;
  end;
  Fserch_centerCommand.Parameters[0].Value.SetWideString(cname);
  Fserch_centerCommand.ExecuteUpdate;
end;

procedure TServerMethods1Client.insertcheck(rkey: string);
begin
  if FinsertcheckCommand = nil then
  begin
    FinsertcheckCommand := FDBXConnection.CreateCommand;
    FinsertcheckCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FinsertcheckCommand.Text := 'TServerMethods1.insertcheck';
    FinsertcheckCommand.Prepare;
  end;
  FinsertcheckCommand.Parameters[0].Value.SetWideString(rkey);
  FinsertcheckCommand.ExecuteUpdate;
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
  FloginCommand.DisposeOf;
  Freserve_addCommand.DisposeOf;
  Frepairlist_viewCommand.DisposeOf;
  Fget_countCommand.DisposeOf;
  Fserch_centerCommand.DisposeOf;
  FinsertcheckCommand.DisposeOf;
  inherited;
end;

end.

