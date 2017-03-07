//
// Created by the DataSnap proxy generator.
// 2016-01-28 ¿ÀÀü 1:47:54
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
    FSign_InCommand: TDBXCommand;
    FInsert_OrderCommand: TDBXCommand;
    FUpdate_OrderCommand: TDBXCommand;
    FCheck_OrderCommand: TDBXCommand;
    FGet_UDCommand: TDBXCommand;
    FDel_UDCommand: TDBXCommand;
    FGet_UD_DetailCommand: TDBXCommand;
    FTaxi_Sign_InCommand: TDBXCommand;
    FChange_StateCommand: TDBXCommand;
    FChange_TypesCommand: TDBXCommand;
    FInsert_UDCommand: TDBXCommand;
    FUpdate_UDCommand: TDBXCommand;
    FUpdate_Taxi_LocateCommand: TDBXCommand;
    FDel_OrderCommand: TDBXCommand;
    FInsert_UD_DetailCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    procedure DSServerModuleCreate(Sender: TObject);
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    procedure Sign_Up(Phone: string);
    function Sign_In(Phone: string): Boolean;
    procedure Insert_Order(Phone: string; Lat: string; Long: string; Types: string);
    procedure Update_Order(Phone: string; Lat: string; Long: string);
    function Check_Order(Phone: string): Boolean;
    procedure Get_UD(Phone: string);
    procedure Del_UD(Num: string);
    procedure Get_UD_Detail(Num: string);
    function Taxi_Sign_In(Phone: string): Boolean;
    procedure Change_State(Phone: string; State: string);
    function Change_Types(Phone: string; Types: string; TaxiNum: string): Boolean;
    function Insert_UD(UD_SLAT: string; UD_SLONG: string; T_NUM: string; C_PHONE: string): Integer;
    procedure Update_UD(UD_ARRIVE: string; UD_ALAT: string; UD_ALONG: string; UD_DIS: string; UD_PRICE: string; UD_NUM: string);
    procedure Update_Taxi_Locate(Phone: string; Lat: string; Long: string);
    procedure Del_Order(Phone: string);
    procedure Insert_UD_Detail(Num: string; Lat: string; Long: string);
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

procedure TServerMethods1Client.Sign_Up(Phone: string);
begin
  if FSign_UpCommand = nil then
  begin
    FSign_UpCommand := FDBXConnection.CreateCommand;
    FSign_UpCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSign_UpCommand.Text := 'TServerMethods1.Sign_Up';
    FSign_UpCommand.Prepare;
  end;
  FSign_UpCommand.Parameters[0].Value.SetWideString(Phone);
  FSign_UpCommand.ExecuteUpdate;
end;

function TServerMethods1Client.Sign_In(Phone: string): Boolean;
begin
  if FSign_InCommand = nil then
  begin
    FSign_InCommand := FDBXConnection.CreateCommand;
    FSign_InCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSign_InCommand.Text := 'TServerMethods1.Sign_In';
    FSign_InCommand.Prepare;
  end;
  FSign_InCommand.Parameters[0].Value.SetWideString(Phone);
  FSign_InCommand.ExecuteUpdate;
  Result := FSign_InCommand.Parameters[1].Value.GetBoolean;
end;

procedure TServerMethods1Client.Insert_Order(Phone: string; Lat: string; Long: string; Types: string);
begin
  if FInsert_OrderCommand = nil then
  begin
    FInsert_OrderCommand := FDBXConnection.CreateCommand;
    FInsert_OrderCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FInsert_OrderCommand.Text := 'TServerMethods1.Insert_Order';
    FInsert_OrderCommand.Prepare;
  end;
  FInsert_OrderCommand.Parameters[0].Value.SetWideString(Phone);
  FInsert_OrderCommand.Parameters[1].Value.SetWideString(Lat);
  FInsert_OrderCommand.Parameters[2].Value.SetWideString(Long);
  FInsert_OrderCommand.Parameters[3].Value.SetWideString(Types);
  FInsert_OrderCommand.ExecuteUpdate;
end;

procedure TServerMethods1Client.Update_Order(Phone: string; Lat: string; Long: string);
begin
  if FUpdate_OrderCommand = nil then
  begin
    FUpdate_OrderCommand := FDBXConnection.CreateCommand;
    FUpdate_OrderCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FUpdate_OrderCommand.Text := 'TServerMethods1.Update_Order';
    FUpdate_OrderCommand.Prepare;
  end;
  FUpdate_OrderCommand.Parameters[0].Value.SetWideString(Phone);
  FUpdate_OrderCommand.Parameters[1].Value.SetWideString(Lat);
  FUpdate_OrderCommand.Parameters[2].Value.SetWideString(Long);
  FUpdate_OrderCommand.ExecuteUpdate;
end;

function TServerMethods1Client.Check_Order(Phone: string): Boolean;
begin
  if FCheck_OrderCommand = nil then
  begin
    FCheck_OrderCommand := FDBXConnection.CreateCommand;
    FCheck_OrderCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCheck_OrderCommand.Text := 'TServerMethods1.Check_Order';
    FCheck_OrderCommand.Prepare;
  end;
  FCheck_OrderCommand.Parameters[0].Value.SetWideString(Phone);
  FCheck_OrderCommand.ExecuteUpdate;
  Result := FCheck_OrderCommand.Parameters[1].Value.GetBoolean;
end;

procedure TServerMethods1Client.Get_UD(Phone: string);
begin
  if FGet_UDCommand = nil then
  begin
    FGet_UDCommand := FDBXConnection.CreateCommand;
    FGet_UDCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGet_UDCommand.Text := 'TServerMethods1.Get_UD';
    FGet_UDCommand.Prepare;
  end;
  FGet_UDCommand.Parameters[0].Value.SetWideString(Phone);
  FGet_UDCommand.ExecuteUpdate;
end;

procedure TServerMethods1Client.Del_UD(Num: string);
begin
  if FDel_UDCommand = nil then
  begin
    FDel_UDCommand := FDBXConnection.CreateCommand;
    FDel_UDCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDel_UDCommand.Text := 'TServerMethods1.Del_UD';
    FDel_UDCommand.Prepare;
  end;
  FDel_UDCommand.Parameters[0].Value.SetWideString(Num);
  FDel_UDCommand.ExecuteUpdate;
end;

procedure TServerMethods1Client.Get_UD_Detail(Num: string);
begin
  if FGet_UD_DetailCommand = nil then
  begin
    FGet_UD_DetailCommand := FDBXConnection.CreateCommand;
    FGet_UD_DetailCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGet_UD_DetailCommand.Text := 'TServerMethods1.Get_UD_Detail';
    FGet_UD_DetailCommand.Prepare;
  end;
  FGet_UD_DetailCommand.Parameters[0].Value.SetWideString(Num);
  FGet_UD_DetailCommand.ExecuteUpdate;
end;

function TServerMethods1Client.Taxi_Sign_In(Phone: string): Boolean;
begin
  if FTaxi_Sign_InCommand = nil then
  begin
    FTaxi_Sign_InCommand := FDBXConnection.CreateCommand;
    FTaxi_Sign_InCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTaxi_Sign_InCommand.Text := 'TServerMethods1.Taxi_Sign_In';
    FTaxi_Sign_InCommand.Prepare;
  end;
  FTaxi_Sign_InCommand.Parameters[0].Value.SetWideString(Phone);
  FTaxi_Sign_InCommand.ExecuteUpdate;
  Result := FTaxi_Sign_InCommand.Parameters[1].Value.GetBoolean;
end;

procedure TServerMethods1Client.Change_State(Phone: string; State: string);
begin
  if FChange_StateCommand = nil then
  begin
    FChange_StateCommand := FDBXConnection.CreateCommand;
    FChange_StateCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FChange_StateCommand.Text := 'TServerMethods1.Change_State';
    FChange_StateCommand.Prepare;
  end;
  FChange_StateCommand.Parameters[0].Value.SetWideString(Phone);
  FChange_StateCommand.Parameters[1].Value.SetWideString(State);
  FChange_StateCommand.ExecuteUpdate;
end;

function TServerMethods1Client.Change_Types(Phone: string; Types: string; TaxiNum: string): Boolean;
begin
  if FChange_TypesCommand = nil then
  begin
    FChange_TypesCommand := FDBXConnection.CreateCommand;
    FChange_TypesCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FChange_TypesCommand.Text := 'TServerMethods1.Change_Types';
    FChange_TypesCommand.Prepare;
  end;
  FChange_TypesCommand.Parameters[0].Value.SetWideString(Phone);
  FChange_TypesCommand.Parameters[1].Value.SetWideString(Types);
  FChange_TypesCommand.Parameters[2].Value.SetWideString(TaxiNum);
  FChange_TypesCommand.ExecuteUpdate;
  Result := FChange_TypesCommand.Parameters[3].Value.GetBoolean;
end;

function TServerMethods1Client.Insert_UD(UD_SLAT: string; UD_SLONG: string; T_NUM: string; C_PHONE: string): Integer;
begin
  if FInsert_UDCommand = nil then
  begin
    FInsert_UDCommand := FDBXConnection.CreateCommand;
    FInsert_UDCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FInsert_UDCommand.Text := 'TServerMethods1.Insert_UD';
    FInsert_UDCommand.Prepare;
  end;
  FInsert_UDCommand.Parameters[0].Value.SetWideString(UD_SLAT);
  FInsert_UDCommand.Parameters[1].Value.SetWideString(UD_SLONG);
  FInsert_UDCommand.Parameters[2].Value.SetWideString(T_NUM);
  FInsert_UDCommand.Parameters[3].Value.SetWideString(C_PHONE);
  FInsert_UDCommand.ExecuteUpdate;
  Result := FInsert_UDCommand.Parameters[4].Value.GetInt32;
end;

procedure TServerMethods1Client.Update_UD(UD_ARRIVE: string; UD_ALAT: string; UD_ALONG: string; UD_DIS: string; UD_PRICE: string; UD_NUM: string);
begin
  if FUpdate_UDCommand = nil then
  begin
    FUpdate_UDCommand := FDBXConnection.CreateCommand;
    FUpdate_UDCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FUpdate_UDCommand.Text := 'TServerMethods1.Update_UD';
    FUpdate_UDCommand.Prepare;
  end;
  FUpdate_UDCommand.Parameters[0].Value.SetWideString(UD_ARRIVE);
  FUpdate_UDCommand.Parameters[1].Value.SetWideString(UD_ALAT);
  FUpdate_UDCommand.Parameters[2].Value.SetWideString(UD_ALONG);
  FUpdate_UDCommand.Parameters[3].Value.SetWideString(UD_DIS);
  FUpdate_UDCommand.Parameters[4].Value.SetWideString(UD_PRICE);
  FUpdate_UDCommand.Parameters[5].Value.SetWideString(UD_NUM);
  FUpdate_UDCommand.ExecuteUpdate;
end;

procedure TServerMethods1Client.Update_Taxi_Locate(Phone: string; Lat: string; Long: string);
begin
  if FUpdate_Taxi_LocateCommand = nil then
  begin
    FUpdate_Taxi_LocateCommand := FDBXConnection.CreateCommand;
    FUpdate_Taxi_LocateCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FUpdate_Taxi_LocateCommand.Text := 'TServerMethods1.Update_Taxi_Locate';
    FUpdate_Taxi_LocateCommand.Prepare;
  end;
  FUpdate_Taxi_LocateCommand.Parameters[0].Value.SetWideString(Phone);
  FUpdate_Taxi_LocateCommand.Parameters[1].Value.SetWideString(Lat);
  FUpdate_Taxi_LocateCommand.Parameters[2].Value.SetWideString(Long);
  FUpdate_Taxi_LocateCommand.ExecuteUpdate;
end;

procedure TServerMethods1Client.Del_Order(Phone: string);
begin
  if FDel_OrderCommand = nil then
  begin
    FDel_OrderCommand := FDBXConnection.CreateCommand;
    FDel_OrderCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDel_OrderCommand.Text := 'TServerMethods1.Del_Order';
    FDel_OrderCommand.Prepare;
  end;
  FDel_OrderCommand.Parameters[0].Value.SetWideString(Phone);
  FDel_OrderCommand.ExecuteUpdate;
end;

procedure TServerMethods1Client.Insert_UD_Detail(Num: string; Lat: string; Long: string);
begin
  if FInsert_UD_DetailCommand = nil then
  begin
    FInsert_UD_DetailCommand := FDBXConnection.CreateCommand;
    FInsert_UD_DetailCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FInsert_UD_DetailCommand.Text := 'TServerMethods1.Insert_UD_Detail';
    FInsert_UD_DetailCommand.Prepare;
  end;
  FInsert_UD_DetailCommand.Parameters[0].Value.SetWideString(Num);
  FInsert_UD_DetailCommand.Parameters[1].Value.SetWideString(Lat);
  FInsert_UD_DetailCommand.Parameters[2].Value.SetWideString(Long);
  FInsert_UD_DetailCommand.ExecuteUpdate;
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
  FSign_InCommand.DisposeOf;
  FInsert_OrderCommand.DisposeOf;
  FUpdate_OrderCommand.DisposeOf;
  FCheck_OrderCommand.DisposeOf;
  FGet_UDCommand.DisposeOf;
  FDel_UDCommand.DisposeOf;
  FGet_UD_DetailCommand.DisposeOf;
  FTaxi_Sign_InCommand.DisposeOf;
  FChange_StateCommand.DisposeOf;
  FChange_TypesCommand.DisposeOf;
  FInsert_UDCommand.DisposeOf;
  FUpdate_UDCommand.DisposeOf;
  FUpdate_Taxi_LocateCommand.DisposeOf;
  FDel_OrderCommand.DisposeOf;
  FInsert_UD_DetailCommand.DisposeOf;
  inherited;
end;

end.

