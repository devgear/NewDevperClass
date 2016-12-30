//
// Created by the DataSnap proxy generator.
// 2015-02-06 ¿ÀÈÄ 8:06:30
//

unit UClientClass;

interface

uses System.JSON, Data.DBXCommon, Data.DBXClient, Data.DBXDataSnap, Data.DBXJSON, Datasnap.DSProxy, System.Classes, System.SysUtils, Data.DB, Data.SqlExpr, Data.DBXDBReaders, Data.DBXCDSReaders, Data.DBXJSONReflect;

type
  TServerMethods1Client = class(TDSAdminClient)
  private
    FDSServerModuleCreateCommand: TDBXCommand;
    FEchoStringCommand: TDBXCommand;
    FReverseStringCommand: TDBXCommand;
    FSign_UpCommand: TDBXCommand;
    FReserve_CoffeeCommand: TDBXCommand;
    FGet_R_NumCommand: TDBXCommand;
    FReserve_listCommand: TDBXCommand;
    FGet_ReserveCommand: TDBXCommand;
    FGet_Reserve_DetailCommand: TDBXCommand;
    FDelete_ReserveCommand: TDBXCommand;
    FGet_Reserve_infoCommand: TDBXCommand;
    FLog_inCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    procedure DSServerModuleCreate(Sender: TObject);
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    procedure Sign_Up(ID: string; Name: string; Password: string; Phone: string; Gender: Integer; Age: Integer);
    procedure Reserve_Coffee(Total_Amount: Integer; Arrival: TDateTime; Payment_Plan: string; U_Lat: string; U_Long: string; U_ID: string; C_NAME: string; C_LOCA: string; COMMENT: string);
    function Get_R_Num(U_ID: string): Integer;
    procedure Reserve_list(R_Num: Integer; Quantity: Integer; Price: Integer; M_Name: string);
    procedure Get_Reserve(U_ID: string);
    procedure Get_Reserve_Detail(Num: string);
    procedure Delete_Reserve(Num: string);
    procedure Get_Reserve_info(C_LOCA: string);
    function Log_in(U_ID: string; U_Password: string): Boolean;
  end;

implementation

procedure TServerMethods1Client.DSServerModuleCreate(Sender: TObject);
begin
  if FDSServerModuleCreateCommand = nil then
  begin
    FDSServerModuleCreateCommand := FDBXConnection.CreateCommand;
    FDSServerModuleCreateCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDSServerModuleCreateCommand.Text := 'TServerMethods1.DSServerModuleCreate';
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

procedure TServerMethods1Client.Sign_Up(ID: string; Name: string; Password: string; Phone: string; Gender: Integer; Age: Integer);
begin
  if FSign_UpCommand = nil then
  begin
    FSign_UpCommand := FDBXConnection.CreateCommand;
    FSign_UpCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSign_UpCommand.Text := 'TServerMethods1.Sign_Up';
    FSign_UpCommand.Prepare;
  end;
  FSign_UpCommand.Parameters[0].Value.SetWideString(ID);
  FSign_UpCommand.Parameters[1].Value.SetWideString(Name);
  FSign_UpCommand.Parameters[2].Value.SetWideString(Password);
  FSign_UpCommand.Parameters[3].Value.SetWideString(Phone);
  FSign_UpCommand.Parameters[4].Value.SetInt32(Gender);
  FSign_UpCommand.Parameters[5].Value.SetInt32(Age);
  FSign_UpCommand.ExecuteUpdate;
end;

procedure TServerMethods1Client.Reserve_Coffee(Total_Amount: Integer; Arrival: TDateTime; Payment_Plan: string; U_Lat: string; U_Long: string; U_ID: string; C_NAME: string; C_LOCA: string; COMMENT: string);
begin
  if FReserve_CoffeeCommand = nil then
  begin
    FReserve_CoffeeCommand := FDBXConnection.CreateCommand;
    FReserve_CoffeeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FReserve_CoffeeCommand.Text := 'TServerMethods1.Reserve_Coffee';
    FReserve_CoffeeCommand.Prepare;
  end;
  FReserve_CoffeeCommand.Parameters[0].Value.SetInt32(Total_Amount);
  FReserve_CoffeeCommand.Parameters[1].Value.AsDateTime := Arrival;
  FReserve_CoffeeCommand.Parameters[2].Value.SetWideString(Payment_Plan);
  FReserve_CoffeeCommand.Parameters[3].Value.SetWideString(U_Lat);
  FReserve_CoffeeCommand.Parameters[4].Value.SetWideString(U_Long);
  FReserve_CoffeeCommand.Parameters[5].Value.SetWideString(U_ID);
  FReserve_CoffeeCommand.Parameters[6].Value.SetWideString(C_NAME);
  FReserve_CoffeeCommand.Parameters[7].Value.SetWideString(C_LOCA);
  FReserve_CoffeeCommand.Parameters[8].Value.SetWideString(COMMENT);
  FReserve_CoffeeCommand.ExecuteUpdate;
end;

function TServerMethods1Client.Get_R_Num(U_ID: string): Integer;
begin
  if FGet_R_NumCommand = nil then
  begin
    FGet_R_NumCommand := FDBXConnection.CreateCommand;
    FGet_R_NumCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGet_R_NumCommand.Text := 'TServerMethods1.Get_R_Num';
    FGet_R_NumCommand.Prepare;
  end;
  FGet_R_NumCommand.Parameters[0].Value.SetWideString(U_ID);
  FGet_R_NumCommand.ExecuteUpdate;
  Result := FGet_R_NumCommand.Parameters[1].Value.GetInt32;
end;

procedure TServerMethods1Client.Reserve_list(R_Num: Integer; Quantity: Integer; Price: Integer; M_Name: string);
begin
  if FReserve_listCommand = nil then
  begin
    FReserve_listCommand := FDBXConnection.CreateCommand;
    FReserve_listCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FReserve_listCommand.Text := 'TServerMethods1.Reserve_list';
    FReserve_listCommand.Prepare;
  end;
  FReserve_listCommand.Parameters[0].Value.SetInt32(R_Num);
  FReserve_listCommand.Parameters[1].Value.SetInt32(Quantity);
  FReserve_listCommand.Parameters[2].Value.SetInt32(Price);
  FReserve_listCommand.Parameters[3].Value.SetWideString(M_Name);
  FReserve_listCommand.ExecuteUpdate;
end;

procedure TServerMethods1Client.Get_Reserve(U_ID: string);
begin
  if FGet_ReserveCommand = nil then
  begin
    FGet_ReserveCommand := FDBXConnection.CreateCommand;
    FGet_ReserveCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGet_ReserveCommand.Text := 'TServerMethods1.Get_Reserve';
    FGet_ReserveCommand.Prepare;
  end;
  FGet_ReserveCommand.Parameters[0].Value.SetWideString(U_ID);
  FGet_ReserveCommand.ExecuteUpdate;
end;

procedure TServerMethods1Client.Get_Reserve_Detail(Num: string);
begin
  if FGet_Reserve_DetailCommand = nil then
  begin
    FGet_Reserve_DetailCommand := FDBXConnection.CreateCommand;
    FGet_Reserve_DetailCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGet_Reserve_DetailCommand.Text := 'TServerMethods1.Get_Reserve_Detail';
    FGet_Reserve_DetailCommand.Prepare;
  end;
  FGet_Reserve_DetailCommand.Parameters[0].Value.SetWideString(Num);
  FGet_Reserve_DetailCommand.ExecuteUpdate;
end;

procedure TServerMethods1Client.Delete_Reserve(Num: string);
begin
  if FDelete_ReserveCommand = nil then
  begin
    FDelete_ReserveCommand := FDBXConnection.CreateCommand;
    FDelete_ReserveCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDelete_ReserveCommand.Text := 'TServerMethods1.Delete_Reserve';
    FDelete_ReserveCommand.Prepare;
  end;
  FDelete_ReserveCommand.Parameters[0].Value.SetWideString(Num);
  FDelete_ReserveCommand.ExecuteUpdate;
end;

procedure TServerMethods1Client.Get_Reserve_info(C_LOCA: string);
begin
  if FGet_Reserve_infoCommand = nil then
  begin
    FGet_Reserve_infoCommand := FDBXConnection.CreateCommand;
    FGet_Reserve_infoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGet_Reserve_infoCommand.Text := 'TServerMethods1.Get_Reserve_info';
    FGet_Reserve_infoCommand.Prepare;
  end;
  FGet_Reserve_infoCommand.Parameters[0].Value.SetWideString(C_LOCA);
  FGet_Reserve_infoCommand.ExecuteUpdate;
end;

function TServerMethods1Client.Log_in(U_ID: string; U_Password: string): Boolean;
begin
  if FLog_inCommand = nil then
  begin
    FLog_inCommand := FDBXConnection.CreateCommand;
    FLog_inCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FLog_inCommand.Text := 'TServerMethods1.Log_in';
    FLog_inCommand.Prepare;
  end;
  FLog_inCommand.Parameters[0].Value.SetWideString(U_ID);
  FLog_inCommand.Parameters[1].Value.SetWideString(U_Password);
  FLog_inCommand.ExecuteUpdate;
  Result := FLog_inCommand.Parameters[2].Value.GetBoolean;
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
  FDSServerModuleCreateCommand.DisposeOf;
  FEchoStringCommand.DisposeOf;
  FReverseStringCommand.DisposeOf;
  FSign_UpCommand.DisposeOf;
  FReserve_CoffeeCommand.DisposeOf;
  FGet_R_NumCommand.DisposeOf;
  FReserve_listCommand.DisposeOf;
  FGet_ReserveCommand.DisposeOf;
  FGet_Reserve_DetailCommand.DisposeOf;
  FDelete_ReserveCommand.DisposeOf;
  FGet_Reserve_infoCommand.DisposeOf;
  FLog_inCommand.DisposeOf;
  inherited;
end;

end.

