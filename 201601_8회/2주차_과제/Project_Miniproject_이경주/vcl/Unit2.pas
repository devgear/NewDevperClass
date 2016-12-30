//
// Created by the DataSnap proxy generator.
// 2016-01-10 ¿ÀÈÄ 7:23:52
// 

unit Unit2;

interface

uses System.JSON, Data.DBXCommon, Data.DBXClient, Data.DBXDataSnap, Data.DBXJSON, Datasnap.DSProxy, System.Classes, System.SysUtils, Data.DB, Data.SqlExpr, Data.DBXDBReaders, Data.DBXCDSReaders, Data.DBXJSONReflect;

type
  TServerMethods1Client = class(TDSAdminClient)
  private
    FEchoStringCommand: TDBXCommand;
    FReverseStringCommand: TDBXCommand;
    FReservation_addCommand: TDBXCommand;
    FReservation_deleteCommand: TDBXCommand;
    Fcar_check0Command: TDBXCommand;
    Fcar_check1Command: TDBXCommand;
    Fcar_check2Command: TDBXCommand;
    Frental_Command: TDBXCommand;
    Frental_returnCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    procedure Reservation_add(N_day: string; C_num: string; phone: string; R_D: TDateTime; G_D: TDateTime; Pri: string);
    procedure Reservation_delete(Car_number: string; phone: string);
    procedure car_check0(car_num: string);
    procedure car_check1(car_num: string);
    procedure car_check2(car_num: string);
    procedure rental_(Car_num: string; phone: string; price: Integer; R_D: TDateTime; G_DD: TDateTime);
    procedure rental_return(G_D: TDateTime; CAR_NUM: string);
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

procedure TServerMethods1Client.Reservation_add(N_day: string; C_num: string; phone: string; R_D: TDateTime; G_D: TDateTime; Pri: string);
begin
  if FReservation_addCommand = nil then
  begin
    FReservation_addCommand := FDBXConnection.CreateCommand;
    FReservation_addCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FReservation_addCommand.Text := 'TServerMethods1.Reservation_add';
    FReservation_addCommand.Prepare;
  end;
  FReservation_addCommand.Parameters[0].Value.SetWideString(N_day);
  FReservation_addCommand.Parameters[1].Value.SetWideString(C_num);
  FReservation_addCommand.Parameters[2].Value.SetWideString(phone);
  FReservation_addCommand.Parameters[3].Value.AsDateTime := R_D;
  FReservation_addCommand.Parameters[4].Value.AsDateTime := G_D;
  FReservation_addCommand.Parameters[5].Value.SetWideString(Pri);
  FReservation_addCommand.ExecuteUpdate;
end;

procedure TServerMethods1Client.Reservation_delete(Car_number: string; phone: string);
begin
  if FReservation_deleteCommand = nil then
  begin
    FReservation_deleteCommand := FDBXConnection.CreateCommand;
    FReservation_deleteCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FReservation_deleteCommand.Text := 'TServerMethods1.Reservation_delete';
    FReservation_deleteCommand.Prepare;
  end;
  FReservation_deleteCommand.Parameters[0].Value.SetWideString(Car_number);
  FReservation_deleteCommand.Parameters[1].Value.SetWideString(phone);
  FReservation_deleteCommand.ExecuteUpdate;
end;

procedure TServerMethods1Client.car_check0(car_num: string);
begin
  if Fcar_check0Command = nil then
  begin
    Fcar_check0Command := FDBXConnection.CreateCommand;
    Fcar_check0Command.CommandType := TDBXCommandTypes.DSServerMethod;
    Fcar_check0Command.Text := 'TServerMethods1.car_check0';
    Fcar_check0Command.Prepare;
  end;
  Fcar_check0Command.Parameters[0].Value.SetWideString(car_num);
  Fcar_check0Command.ExecuteUpdate;
end;

procedure TServerMethods1Client.car_check1(car_num: string);
begin
  if Fcar_check1Command = nil then
  begin
    Fcar_check1Command := FDBXConnection.CreateCommand;
    Fcar_check1Command.CommandType := TDBXCommandTypes.DSServerMethod;
    Fcar_check1Command.Text := 'TServerMethods1.car_check1';
    Fcar_check1Command.Prepare;
  end;
  Fcar_check1Command.Parameters[0].Value.SetWideString(car_num);
  Fcar_check1Command.ExecuteUpdate;
end;

procedure TServerMethods1Client.car_check2(car_num: string);
begin
  if Fcar_check2Command = nil then
  begin
    Fcar_check2Command := FDBXConnection.CreateCommand;
    Fcar_check2Command.CommandType := TDBXCommandTypes.DSServerMethod;
    Fcar_check2Command.Text := 'TServerMethods1.car_check2';
    Fcar_check2Command.Prepare;
  end;
  Fcar_check2Command.Parameters[0].Value.SetWideString(car_num);
  Fcar_check2Command.ExecuteUpdate;
end;

procedure TServerMethods1Client.rental_(Car_num: string; phone: string; price: Integer; R_D: TDateTime; G_DD: TDateTime);
begin
  if Frental_Command = nil then
  begin
    Frental_Command := FDBXConnection.CreateCommand;
    Frental_Command.CommandType := TDBXCommandTypes.DSServerMethod;
    Frental_Command.Text := 'TServerMethods1.rental_';
    Frental_Command.Prepare;
  end;
  Frental_Command.Parameters[0].Value.SetWideString(Car_num);
  Frental_Command.Parameters[1].Value.SetWideString(phone);
  Frental_Command.Parameters[2].Value.SetInt32(price);
  Frental_Command.Parameters[3].Value.AsDateTime := R_D;
  Frental_Command.Parameters[4].Value.AsDateTime := G_DD;
  Frental_Command.ExecuteUpdate;
end;

procedure TServerMethods1Client.rental_return(G_D: TDateTime; CAR_NUM: string);
begin
  if Frental_returnCommand = nil then
  begin
    Frental_returnCommand := FDBXConnection.CreateCommand;
    Frental_returnCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Frental_returnCommand.Text := 'TServerMethods1.rental_return';
    Frental_returnCommand.Prepare;
  end;
  Frental_returnCommand.Parameters[0].Value.AsDateTime := G_D;
  Frental_returnCommand.Parameters[1].Value.SetWideString(CAR_NUM);
  Frental_returnCommand.ExecuteUpdate;
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
  FReservation_addCommand.DisposeOf;
  FReservation_deleteCommand.DisposeOf;
  Fcar_check0Command.DisposeOf;
  Fcar_check1Command.DisposeOf;
  Fcar_check2Command.DisposeOf;
  Frental_Command.DisposeOf;
  Frental_returnCommand.DisposeOf;
  inherited;
end;

end.
