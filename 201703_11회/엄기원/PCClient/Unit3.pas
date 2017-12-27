//
// Created by the DataSnap proxy generator.
// 2017-08-31 ¿ÀÀü 12:22:19
//

unit Unit3;

interface

uses System.JSON, Data.DBXCommon, Data.DBXClient, Data.DBXDataSnap, Data.DBXJSON, Datasnap.DSProxy, System.Classes, System.SysUtils, Data.DB, Data.SqlExpr, Data.DBXDBReaders, Data.DBXCDSReaders, Data.DBXJSONReflect;

type
  TServerMethods2Client = class(TDSAdminClient)
  private
    FDSServerModuleCreateCommand: TDBXCommand;
    FminustimeCommand: TDBXCommand;
    Fcon_ClientCommand: TDBXCommand;
    Fcon_Client_offCommand: TDBXCommand;
    FlogoutCommand: TDBXCommand;
    Fedit_timeCommand: TDBXCommand;
    Fdo_loginCommand: TDBXCommand;
    FAppendlogin_historyCommand: TDBXCommand;
    FAdd_time_historyCommand: TDBXCommand;
    Fpower_logoutCommand: TDBXCommand;
    FpopoupCommand: TDBXCommand;
    Faddtime_noCommand: TDBXCommand;
    Fshow_item_timeCommand: TDBXCommand;
    Fshow_item_priceCommand: TDBXCommand;
    Ffind_userCommand: TDBXCommand;
    Ffind_user_timeCommand: TDBXCommand;
    FAppendProjectMemberCommand: TDBXCommand;
    FloginYNCommand: TDBXCommand;
    FloginYN_timeCommand: TDBXCommand;
    FloginYN_conCommand: TDBXCommand;
    Fafter_login_nameCommand: TDBXCommand;
    Fafter_login_timeCommand: TDBXCommand;
    Fafter_login_noCommand: TDBXCommand;
    Fpower_login_checkCommand: TDBXCommand;
    Fpop_idCommand: TDBXCommand;
    Fpop_pwCommand: TDBXCommand;
    Fpop_nameCommand: TDBXCommand;
    Fpop_birthCommand: TDBXCommand;
    Fpop_cashCommand: TDBXCommand;
    Fpop_timeCommand: TDBXCommand;
    Fpop_noCommand: TDBXCommand;
    FEchoStringCommand: TDBXCommand;
    FReverseStringCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    procedure DSServerModuleCreate(Sender: TObject);
    procedure minustime(pcno: Integer);
    procedure con_Client(pcno: Integer);
    procedure con_Client_off(pcno: Integer);
    procedure logout(pcno: Integer);
    procedure edit_time(time: Integer; user_id: string);
    procedure do_login(User_Id_to: string; pcno: Integer);
    procedure Appendlogin_history(LOGIN_day: string; LOGIN_time: string; End_day: string; end_time: string; user_no: Integer; login_client: Integer);
    procedure Add_time_history(add_day: string; add_time: string; time_name: string; now_time: string; user_no: Integer);
    procedure power_logout(selecd_no: Integer);
    procedure popoup(selected_no: Integer);
    function addtime_no(user_id_to: string): Integer;
    function show_item_time(item_name: string): Integer;
    function show_item_price(item_name: string): Integer;
    function find_user(user_no_to: Integer): string;
    function find_user_time(user_no_to: Integer): Integer;
    function AppendProjectMember(User_Id: string; User_PW: string; User_Name: string; User_Birth: string; User_Phone: string): Integer;
    function loginYN(User_Id_to: string; User_PW_to: string): Integer;
    function loginYN_time(User_Id_to: string; User_PW_to: string): Integer;
    function loginYN_con(User_Id_to: string; User_PW_to: string): Integer;
    function after_login_name(pcno: Integer): string;
    function after_login_time(pcno: Integer): Integer;
    function after_login_no(pcno: Integer): Integer;
    function power_login_check(pcno: Integer): Integer;
    function pop_id(selecd_no: Integer): string;
    function pop_pw(selecd_no: Integer): string;
    function pop_name(selecd_no: Integer): string;
    function pop_birth(selecd_no: Integer): string;
    function pop_cash(selecd_no: Integer): Integer;
    function pop_time(selecd_no: Integer): Integer;
    function pop_no(selecd_no: Integer): Integer;
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
  end;

implementation

procedure TServerMethods2Client.DSServerModuleCreate(Sender: TObject);
begin
  if FDSServerModuleCreateCommand = nil then
  begin
    FDSServerModuleCreateCommand := FDBXConnection.CreateCommand;
    FDSServerModuleCreateCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDSServerModuleCreateCommand.Text := 'TServerMethods2.DSServerModuleCreate';
    FDSServerModuleCreateCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FDSServerModuleCreateCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FDSServerModuleCreateCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FDSServerModuleCreateCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FDSServerModuleCreateCommand.ExecuteUpdate;
end;

procedure TServerMethods2Client.minustime(pcno: Integer);
begin
  if FminustimeCommand = nil then
  begin
    FminustimeCommand := FDBXConnection.CreateCommand;
    FminustimeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FminustimeCommand.Text := 'TServerMethods2.minustime';
    FminustimeCommand.Prepare;
  end;
  FminustimeCommand.Parameters[0].Value.SetInt32(pcno);
  FminustimeCommand.ExecuteUpdate;
end;

procedure TServerMethods2Client.con_Client(pcno: Integer);
begin
  if Fcon_ClientCommand = nil then
  begin
    Fcon_ClientCommand := FDBXConnection.CreateCommand;
    Fcon_ClientCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fcon_ClientCommand.Text := 'TServerMethods2.con_Client';
    Fcon_ClientCommand.Prepare;
  end;
  Fcon_ClientCommand.Parameters[0].Value.SetInt32(pcno);
  Fcon_ClientCommand.ExecuteUpdate;
end;

procedure TServerMethods2Client.con_Client_off(pcno: Integer);
begin
  if Fcon_Client_offCommand = nil then
  begin
    Fcon_Client_offCommand := FDBXConnection.CreateCommand;
    Fcon_Client_offCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fcon_Client_offCommand.Text := 'TServerMethods2.con_Client_off';
    Fcon_Client_offCommand.Prepare;
  end;
  Fcon_Client_offCommand.Parameters[0].Value.SetInt32(pcno);
  Fcon_Client_offCommand.ExecuteUpdate;
end;

procedure TServerMethods2Client.logout(pcno: Integer);
begin
  if FlogoutCommand = nil then
  begin
    FlogoutCommand := FDBXConnection.CreateCommand;
    FlogoutCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FlogoutCommand.Text := 'TServerMethods2.logout';
    FlogoutCommand.Prepare;
  end;
  FlogoutCommand.Parameters[0].Value.SetInt32(pcno);
  FlogoutCommand.ExecuteUpdate;
end;

procedure TServerMethods2Client.edit_time(time: Integer; user_id: string);
begin
  if Fedit_timeCommand = nil then
  begin
    Fedit_timeCommand := FDBXConnection.CreateCommand;
    Fedit_timeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fedit_timeCommand.Text := 'TServerMethods2.edit_time';
    Fedit_timeCommand.Prepare;
  end;
  Fedit_timeCommand.Parameters[0].Value.SetInt32(time);
  Fedit_timeCommand.Parameters[1].Value.SetWideString(user_id);
  Fedit_timeCommand.ExecuteUpdate;
end;

procedure TServerMethods2Client.do_login(User_Id_to: string; pcno: Integer);
begin
  if Fdo_loginCommand = nil then
  begin
    Fdo_loginCommand := FDBXConnection.CreateCommand;
    Fdo_loginCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fdo_loginCommand.Text := 'TServerMethods2.do_login';
    Fdo_loginCommand.Prepare;
  end;
  Fdo_loginCommand.Parameters[0].Value.SetWideString(User_Id_to);
  Fdo_loginCommand.Parameters[1].Value.SetInt32(pcno);
  Fdo_loginCommand.ExecuteUpdate;
end;

procedure TServerMethods2Client.Appendlogin_history(LOGIN_day: string; LOGIN_time: string; End_day: string; end_time: string; user_no: Integer; login_client: Integer);
begin
  if FAppendlogin_historyCommand = nil then
  begin
    FAppendlogin_historyCommand := FDBXConnection.CreateCommand;
    FAppendlogin_historyCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FAppendlogin_historyCommand.Text := 'TServerMethods2.Appendlogin_history';
    FAppendlogin_historyCommand.Prepare;
  end;
  FAppendlogin_historyCommand.Parameters[0].Value.SetWideString(LOGIN_day);
  FAppendlogin_historyCommand.Parameters[1].Value.SetWideString(LOGIN_time);
  FAppendlogin_historyCommand.Parameters[2].Value.SetWideString(End_day);
  FAppendlogin_historyCommand.Parameters[3].Value.SetWideString(end_time);
  FAppendlogin_historyCommand.Parameters[4].Value.SetInt32(user_no);
  FAppendlogin_historyCommand.Parameters[5].Value.SetInt32(login_client);
  FAppendlogin_historyCommand.ExecuteUpdate;
end;

procedure TServerMethods2Client.Add_time_history(add_day: string; add_time: string; time_name: string; now_time: string; user_no: Integer);
begin
  if FAdd_time_historyCommand = nil then
  begin
    FAdd_time_historyCommand := FDBXConnection.CreateCommand;
    FAdd_time_historyCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FAdd_time_historyCommand.Text := 'TServerMethods2.Add_time_history';
    FAdd_time_historyCommand.Prepare;
  end;
  FAdd_time_historyCommand.Parameters[0].Value.SetWideString(add_day);
  FAdd_time_historyCommand.Parameters[1].Value.SetWideString(add_time);
  FAdd_time_historyCommand.Parameters[2].Value.SetWideString(time_name);
  FAdd_time_historyCommand.Parameters[3].Value.SetWideString(now_time);
  FAdd_time_historyCommand.Parameters[4].Value.SetInt32(user_no);
  FAdd_time_historyCommand.ExecuteUpdate;
end;

procedure TServerMethods2Client.power_logout(selecd_no: Integer);
begin
  if Fpower_logoutCommand = nil then
  begin
    Fpower_logoutCommand := FDBXConnection.CreateCommand;
    Fpower_logoutCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fpower_logoutCommand.Text := 'TServerMethods2.power_logout';
    Fpower_logoutCommand.Prepare;
  end;
  Fpower_logoutCommand.Parameters[0].Value.SetInt32(selecd_no);
  Fpower_logoutCommand.ExecuteUpdate;
end;

procedure TServerMethods2Client.popoup(selected_no: Integer);
begin
  if FpopoupCommand = nil then
  begin
    FpopoupCommand := FDBXConnection.CreateCommand;
    FpopoupCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FpopoupCommand.Text := 'TServerMethods2.popoup';
    FpopoupCommand.Prepare;
  end;
  FpopoupCommand.Parameters[0].Value.SetInt32(selected_no);
  FpopoupCommand.ExecuteUpdate;
end;

function TServerMethods2Client.addtime_no(user_id_to: string): Integer;
begin
  if Faddtime_noCommand = nil then
  begin
    Faddtime_noCommand := FDBXConnection.CreateCommand;
    Faddtime_noCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Faddtime_noCommand.Text := 'TServerMethods2.addtime_no';
    Faddtime_noCommand.Prepare;
  end;
  Faddtime_noCommand.Parameters[0].Value.SetWideString(user_id_to);
  Faddtime_noCommand.ExecuteUpdate;
  Result := Faddtime_noCommand.Parameters[1].Value.GetInt32;
end;

function TServerMethods2Client.show_item_time(item_name: string): Integer;
begin
  if Fshow_item_timeCommand = nil then
  begin
    Fshow_item_timeCommand := FDBXConnection.CreateCommand;
    Fshow_item_timeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fshow_item_timeCommand.Text := 'TServerMethods2.show_item_time';
    Fshow_item_timeCommand.Prepare;
  end;
  Fshow_item_timeCommand.Parameters[0].Value.SetWideString(item_name);
  Fshow_item_timeCommand.ExecuteUpdate;
  Result := Fshow_item_timeCommand.Parameters[1].Value.GetInt32;
end;

function TServerMethods2Client.show_item_price(item_name: string): Integer;
begin
  if Fshow_item_priceCommand = nil then
  begin
    Fshow_item_priceCommand := FDBXConnection.CreateCommand;
    Fshow_item_priceCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fshow_item_priceCommand.Text := 'TServerMethods2.show_item_price';
    Fshow_item_priceCommand.Prepare;
  end;
  Fshow_item_priceCommand.Parameters[0].Value.SetWideString(item_name);
  Fshow_item_priceCommand.ExecuteUpdate;
  Result := Fshow_item_priceCommand.Parameters[1].Value.GetInt32;
end;

function TServerMethods2Client.find_user(user_no_to: Integer): string;
begin
  if Ffind_userCommand = nil then
  begin
    Ffind_userCommand := FDBXConnection.CreateCommand;
    Ffind_userCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Ffind_userCommand.Text := 'TServerMethods2.find_user';
    Ffind_userCommand.Prepare;
  end;
  Ffind_userCommand.Parameters[0].Value.SetInt32(user_no_to);
  Ffind_userCommand.ExecuteUpdate;
  Result := Ffind_userCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethods2Client.find_user_time(user_no_to: Integer): Integer;
begin
  if Ffind_user_timeCommand = nil then
  begin
    Ffind_user_timeCommand := FDBXConnection.CreateCommand;
    Ffind_user_timeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Ffind_user_timeCommand.Text := 'TServerMethods2.find_user_time';
    Ffind_user_timeCommand.Prepare;
  end;
  Ffind_user_timeCommand.Parameters[0].Value.SetInt32(user_no_to);
  Ffind_user_timeCommand.ExecuteUpdate;
  Result := Ffind_user_timeCommand.Parameters[1].Value.GetInt32;
end;

function TServerMethods2Client.AppendProjectMember(User_Id: string; User_PW: string; User_Name: string; User_Birth: string; User_Phone: string): Integer;
begin
  if FAppendProjectMemberCommand = nil then
  begin
    FAppendProjectMemberCommand := FDBXConnection.CreateCommand;
    FAppendProjectMemberCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FAppendProjectMemberCommand.Text := 'TServerMethods2.AppendProjectMember';
    FAppendProjectMemberCommand.Prepare;
  end;
  FAppendProjectMemberCommand.Parameters[0].Value.SetWideString(User_Id);
  FAppendProjectMemberCommand.Parameters[1].Value.SetWideString(User_PW);
  FAppendProjectMemberCommand.Parameters[2].Value.SetWideString(User_Name);
  FAppendProjectMemberCommand.Parameters[3].Value.SetWideString(User_Birth);
  FAppendProjectMemberCommand.Parameters[4].Value.SetWideString(User_Phone);
  FAppendProjectMemberCommand.ExecuteUpdate;
  Result := FAppendProjectMemberCommand.Parameters[5].Value.GetInt32;
end;

function TServerMethods2Client.loginYN(User_Id_to: string; User_PW_to: string): Integer;
begin
  if FloginYNCommand = nil then
  begin
    FloginYNCommand := FDBXConnection.CreateCommand;
    FloginYNCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FloginYNCommand.Text := 'TServerMethods2.loginYN';
    FloginYNCommand.Prepare;
  end;
  FloginYNCommand.Parameters[0].Value.SetWideString(User_Id_to);
  FloginYNCommand.Parameters[1].Value.SetWideString(User_PW_to);
  FloginYNCommand.ExecuteUpdate;
  Result := FloginYNCommand.Parameters[2].Value.GetInt32;
end;

function TServerMethods2Client.loginYN_time(User_Id_to: string; User_PW_to: string): Integer;
begin
  if FloginYN_timeCommand = nil then
  begin
    FloginYN_timeCommand := FDBXConnection.CreateCommand;
    FloginYN_timeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FloginYN_timeCommand.Text := 'TServerMethods2.loginYN_time';
    FloginYN_timeCommand.Prepare;
  end;
  FloginYN_timeCommand.Parameters[0].Value.SetWideString(User_Id_to);
  FloginYN_timeCommand.Parameters[1].Value.SetWideString(User_PW_to);
  FloginYN_timeCommand.ExecuteUpdate;
  Result := FloginYN_timeCommand.Parameters[2].Value.GetInt32;
end;

function TServerMethods2Client.loginYN_con(User_Id_to: string; User_PW_to: string): Integer;
begin
  if FloginYN_conCommand = nil then
  begin
    FloginYN_conCommand := FDBXConnection.CreateCommand;
    FloginYN_conCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FloginYN_conCommand.Text := 'TServerMethods2.loginYN_con';
    FloginYN_conCommand.Prepare;
  end;
  FloginYN_conCommand.Parameters[0].Value.SetWideString(User_Id_to);
  FloginYN_conCommand.Parameters[1].Value.SetWideString(User_PW_to);
  FloginYN_conCommand.ExecuteUpdate;
  Result := FloginYN_conCommand.Parameters[2].Value.GetInt32;
end;

function TServerMethods2Client.after_login_name(pcno: Integer): string;
begin
  if Fafter_login_nameCommand = nil then
  begin
    Fafter_login_nameCommand := FDBXConnection.CreateCommand;
    Fafter_login_nameCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fafter_login_nameCommand.Text := 'TServerMethods2.after_login_name';
    Fafter_login_nameCommand.Prepare;
  end;
  Fafter_login_nameCommand.Parameters[0].Value.SetInt32(pcno);
  Fafter_login_nameCommand.ExecuteUpdate;
  Result := Fafter_login_nameCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethods2Client.after_login_time(pcno: Integer): Integer;
begin
  if Fafter_login_timeCommand = nil then
  begin
    Fafter_login_timeCommand := FDBXConnection.CreateCommand;
    Fafter_login_timeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fafter_login_timeCommand.Text := 'TServerMethods2.after_login_time';
    Fafter_login_timeCommand.Prepare;
  end;
  Fafter_login_timeCommand.Parameters[0].Value.SetInt32(pcno);
  Fafter_login_timeCommand.ExecuteUpdate;
  Result := Fafter_login_timeCommand.Parameters[1].Value.GetInt32;
end;

function TServerMethods2Client.after_login_no(pcno: Integer): Integer;
begin
  if Fafter_login_noCommand = nil then
  begin
    Fafter_login_noCommand := FDBXConnection.CreateCommand;
    Fafter_login_noCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fafter_login_noCommand.Text := 'TServerMethods2.after_login_no';
    Fafter_login_noCommand.Prepare;
  end;
  Fafter_login_noCommand.Parameters[0].Value.SetInt32(pcno);
  Fafter_login_noCommand.ExecuteUpdate;
  Result := Fafter_login_noCommand.Parameters[1].Value.GetInt32;
end;

function TServerMethods2Client.power_login_check(pcno: Integer): Integer;
begin
  if Fpower_login_checkCommand = nil then
  begin
    Fpower_login_checkCommand := FDBXConnection.CreateCommand;
    Fpower_login_checkCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fpower_login_checkCommand.Text := 'TServerMethods2.power_login_check';
    Fpower_login_checkCommand.Prepare;
  end;
  Fpower_login_checkCommand.Parameters[0].Value.SetInt32(pcno);
  Fpower_login_checkCommand.ExecuteUpdate;
  Result := Fpower_login_checkCommand.Parameters[1].Value.GetInt32;
end;

function TServerMethods2Client.pop_id(selecd_no: Integer): string;
begin
  if Fpop_idCommand = nil then
  begin
    Fpop_idCommand := FDBXConnection.CreateCommand;
    Fpop_idCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fpop_idCommand.Text := 'TServerMethods2.pop_id';
    Fpop_idCommand.Prepare;
  end;
  Fpop_idCommand.Parameters[0].Value.SetInt32(selecd_no);
  Fpop_idCommand.ExecuteUpdate;
  Result := Fpop_idCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethods2Client.pop_pw(selecd_no: Integer): string;
begin
  if Fpop_pwCommand = nil then
  begin
    Fpop_pwCommand := FDBXConnection.CreateCommand;
    Fpop_pwCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fpop_pwCommand.Text := 'TServerMethods2.pop_pw';
    Fpop_pwCommand.Prepare;
  end;
  Fpop_pwCommand.Parameters[0].Value.SetInt32(selecd_no);
  Fpop_pwCommand.ExecuteUpdate;
  Result := Fpop_pwCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethods2Client.pop_name(selecd_no: Integer): string;
begin
  if Fpop_nameCommand = nil then
  begin
    Fpop_nameCommand := FDBXConnection.CreateCommand;
    Fpop_nameCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fpop_nameCommand.Text := 'TServerMethods2.pop_name';
    Fpop_nameCommand.Prepare;
  end;
  Fpop_nameCommand.Parameters[0].Value.SetInt32(selecd_no);
  Fpop_nameCommand.ExecuteUpdate;
  Result := Fpop_nameCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethods2Client.pop_birth(selecd_no: Integer): string;
begin
  if Fpop_birthCommand = nil then
  begin
    Fpop_birthCommand := FDBXConnection.CreateCommand;
    Fpop_birthCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fpop_birthCommand.Text := 'TServerMethods2.pop_birth';
    Fpop_birthCommand.Prepare;
  end;
  Fpop_birthCommand.Parameters[0].Value.SetInt32(selecd_no);
  Fpop_birthCommand.ExecuteUpdate;
  Result := Fpop_birthCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethods2Client.pop_cash(selecd_no: Integer): Integer;
begin
  if Fpop_cashCommand = nil then
  begin
    Fpop_cashCommand := FDBXConnection.CreateCommand;
    Fpop_cashCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fpop_cashCommand.Text := 'TServerMethods2.pop_cash';
    Fpop_cashCommand.Prepare;
  end;
  Fpop_cashCommand.Parameters[0].Value.SetInt32(selecd_no);
  Fpop_cashCommand.ExecuteUpdate;
  Result := Fpop_cashCommand.Parameters[1].Value.GetInt32;
end;

function TServerMethods2Client.pop_time(selecd_no: Integer): Integer;
begin
  if Fpop_timeCommand = nil then
  begin
    Fpop_timeCommand := FDBXConnection.CreateCommand;
    Fpop_timeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fpop_timeCommand.Text := 'TServerMethods2.pop_time';
    Fpop_timeCommand.Prepare;
  end;
  Fpop_timeCommand.Parameters[0].Value.SetInt32(selecd_no);
  Fpop_timeCommand.ExecuteUpdate;
  Result := Fpop_timeCommand.Parameters[1].Value.GetInt32;
end;

function TServerMethods2Client.pop_no(selecd_no: Integer): Integer;
begin
  if Fpop_noCommand = nil then
  begin
    Fpop_noCommand := FDBXConnection.CreateCommand;
    Fpop_noCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fpop_noCommand.Text := 'TServerMethods2.pop_no';
    Fpop_noCommand.Prepare;
  end;
  Fpop_noCommand.Parameters[0].Value.SetInt32(selecd_no);
  Fpop_noCommand.ExecuteUpdate;
  Result := Fpop_noCommand.Parameters[1].Value.GetInt32;
end;

function TServerMethods2Client.EchoString(Value: string): string;
begin
  if FEchoStringCommand = nil then
  begin
    FEchoStringCommand := FDBXConnection.CreateCommand;
    FEchoStringCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FEchoStringCommand.Text := 'TServerMethods2.EchoString';
    FEchoStringCommand.Prepare;
  end;
  FEchoStringCommand.Parameters[0].Value.SetWideString(Value);
  FEchoStringCommand.ExecuteUpdate;
  Result := FEchoStringCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethods2Client.ReverseString(Value: string): string;
begin
  if FReverseStringCommand = nil then
  begin
    FReverseStringCommand := FDBXConnection.CreateCommand;
    FReverseStringCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FReverseStringCommand.Text := 'TServerMethods2.ReverseString';
    FReverseStringCommand.Prepare;
  end;
  FReverseStringCommand.Parameters[0].Value.SetWideString(Value);
  FReverseStringCommand.ExecuteUpdate;
  Result := FReverseStringCommand.Parameters[1].Value.GetWideString;
end;


constructor TServerMethods2Client.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(ADBXConnection);
end;


constructor TServerMethods2Client.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ADBXConnection, AInstanceOwner);
end;


destructor TServerMethods2Client.Destroy;
begin
  FDSServerModuleCreateCommand.DisposeOf;
  FminustimeCommand.DisposeOf;
  Fcon_ClientCommand.DisposeOf;
  Fcon_Client_offCommand.DisposeOf;
  FlogoutCommand.DisposeOf;
  Fedit_timeCommand.DisposeOf;
  Fdo_loginCommand.DisposeOf;
  FAppendlogin_historyCommand.DisposeOf;
  FAdd_time_historyCommand.DisposeOf;
  Fpower_logoutCommand.DisposeOf;
  FpopoupCommand.DisposeOf;
  Faddtime_noCommand.DisposeOf;
  Fshow_item_timeCommand.DisposeOf;
  Fshow_item_priceCommand.DisposeOf;
  Ffind_userCommand.DisposeOf;
  Ffind_user_timeCommand.DisposeOf;
  FAppendProjectMemberCommand.DisposeOf;
  FloginYNCommand.DisposeOf;
  FloginYN_timeCommand.DisposeOf;
  FloginYN_conCommand.DisposeOf;
  Fafter_login_nameCommand.DisposeOf;
  Fafter_login_timeCommand.DisposeOf;
  Fafter_login_noCommand.DisposeOf;
  Fpower_login_checkCommand.DisposeOf;
  Fpop_idCommand.DisposeOf;
  Fpop_pwCommand.DisposeOf;
  Fpop_nameCommand.DisposeOf;
  Fpop_birthCommand.DisposeOf;
  Fpop_cashCommand.DisposeOf;
  Fpop_timeCommand.DisposeOf;
  Fpop_noCommand.DisposeOf;
  FEchoStringCommand.DisposeOf;
  FReverseStringCommand.DisposeOf;
  inherited;
end;

end.

