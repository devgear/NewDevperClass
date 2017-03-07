//
// Created by the DataSnap proxy generator.
// 2017-03-02 ¿ÀÈÄ 3:47:29
//

unit Unit2;

interface

uses System.JSON, Data.DBXCommon, Data.DBXClient, Data.DBXDataSnap, Data.DBXJSON, Datasnap.DSProxy, System.Classes, System.SysUtils, Data.DB, Data.SqlExpr, Data.DBXDBReaders, Data.DBXCDSReaders, Data.DBXJSONReflect;

type
  TServerMethods1Client = class(TDSAdminClient)
  private
    FEchoStringCommand: TDBXCommand;
    FReverseStringCommand: TDBXCommand;
    FTableNumCommand: TDBXCommand;
    FMenuKindCommand: TDBXCommand;
    FSumPeopleCommand: TDBXCommand;
    FDeleteKitchenCommand: TDBXCommand;
    FTotalPriceCommand: TDBXCommand;
    FDeleteDataCommand: TDBXCommand;
    FInsertDetailCommand: TDBXCommand;
    FKeychangeCommand: TDBXCommand;
    FOpenDetailCommand: TDBXCommand;
    FKeyUpdateCommand: TDBXCommand;
    FDatePickCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    function TableNum(tableno: Integer): Integer;
    function MenuKind(Kind: string): string;
    function SumPeople(TableNo: Integer; Peopleno: Integer; price: Integer; Menu: string): string;
    procedure DeleteKitchen(seq: Integer);
    function TotalPrice(tableno: Integer): Integer;
    procedure DeleteData(tableno: Integer);
    procedure InsertDetail(tableno: Integer);
    procedure Keychange(Keyno: Integer);
    function OpenDetail(Keyno: Integer): Integer;
    procedure KeyUpdate(keyno: Integer; tableno: Integer);
    function DatePick(DatePick: string): string;
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

function TServerMethods1Client.TableNum(tableno: Integer): Integer;
begin
  if FTableNumCommand = nil then
  begin
    FTableNumCommand := FDBXConnection.CreateCommand;
    FTableNumCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTableNumCommand.Text := 'TServerMethods1.TableNum';
    FTableNumCommand.Prepare;
  end;
  FTableNumCommand.Parameters[0].Value.SetInt32(tableno);
  FTableNumCommand.ExecuteUpdate;
  Result := FTableNumCommand.Parameters[1].Value.GetInt32;
end;

function TServerMethods1Client.MenuKind(Kind: string): string;
begin
  if FMenuKindCommand = nil then
  begin
    FMenuKindCommand := FDBXConnection.CreateCommand;
    FMenuKindCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMenuKindCommand.Text := 'TServerMethods1.MenuKind';
    FMenuKindCommand.Prepare;
  end;
  FMenuKindCommand.Parameters[0].Value.SetWideString(Kind);
  FMenuKindCommand.ExecuteUpdate;
  Result := FMenuKindCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethods1Client.SumPeople(TableNo: Integer; Peopleno: Integer; price: Integer; Menu: string): string;
begin
  if FSumPeopleCommand = nil then
  begin
    FSumPeopleCommand := FDBXConnection.CreateCommand;
    FSumPeopleCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSumPeopleCommand.Text := 'TServerMethods1.SumPeople';
    FSumPeopleCommand.Prepare;
  end;
  FSumPeopleCommand.Parameters[0].Value.SetInt32(TableNo);
  FSumPeopleCommand.Parameters[1].Value.SetInt32(Peopleno);
  FSumPeopleCommand.Parameters[2].Value.SetInt32(price);
  FSumPeopleCommand.Parameters[3].Value.SetWideString(Menu);
  FSumPeopleCommand.ExecuteUpdate;
  Result := FSumPeopleCommand.Parameters[4].Value.GetWideString;
end;

procedure TServerMethods1Client.DeleteKitchen(seq: Integer);
begin
  if FDeleteKitchenCommand = nil then
  begin
    FDeleteKitchenCommand := FDBXConnection.CreateCommand;
    FDeleteKitchenCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDeleteKitchenCommand.Text := 'TServerMethods1.DeleteKitchen';
    FDeleteKitchenCommand.Prepare;
  end;
  FDeleteKitchenCommand.Parameters[0].Value.SetInt32(seq);
  FDeleteKitchenCommand.ExecuteUpdate;
end;

function TServerMethods1Client.TotalPrice(tableno: Integer): Integer;
begin
  if FTotalPriceCommand = nil then
  begin
    FTotalPriceCommand := FDBXConnection.CreateCommand;
    FTotalPriceCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTotalPriceCommand.Text := 'TServerMethods1.TotalPrice';
    FTotalPriceCommand.Prepare;
  end;
  FTotalPriceCommand.Parameters[0].Value.SetInt32(tableno);
  FTotalPriceCommand.ExecuteUpdate;
  Result := FTotalPriceCommand.Parameters[1].Value.GetInt32;
end;

procedure TServerMethods1Client.DeleteData(tableno: Integer);
begin
  if FDeleteDataCommand = nil then
  begin
    FDeleteDataCommand := FDBXConnection.CreateCommand;
    FDeleteDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDeleteDataCommand.Text := 'TServerMethods1.DeleteData';
    FDeleteDataCommand.Prepare;
  end;
  FDeleteDataCommand.Parameters[0].Value.SetInt32(tableno);
  FDeleteDataCommand.ExecuteUpdate;
end;

procedure TServerMethods1Client.InsertDetail(tableno: Integer);
begin
  if FInsertDetailCommand = nil then
  begin
    FInsertDetailCommand := FDBXConnection.CreateCommand;
    FInsertDetailCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FInsertDetailCommand.Text := 'TServerMethods1.InsertDetail';
    FInsertDetailCommand.Prepare;
  end;
  FInsertDetailCommand.Parameters[0].Value.SetInt32(tableno);
  FInsertDetailCommand.ExecuteUpdate;
end;

procedure TServerMethods1Client.Keychange(Keyno: Integer);
begin
  if FKeychangeCommand = nil then
  begin
    FKeychangeCommand := FDBXConnection.CreateCommand;
    FKeychangeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FKeychangeCommand.Text := 'TServerMethods1.Keychange';
    FKeychangeCommand.Prepare;
  end;
  FKeychangeCommand.Parameters[0].Value.SetInt32(Keyno);
  FKeychangeCommand.ExecuteUpdate;
end;

function TServerMethods1Client.OpenDetail(Keyno: Integer): Integer;
begin
  if FOpenDetailCommand = nil then
  begin
    FOpenDetailCommand := FDBXConnection.CreateCommand;
    FOpenDetailCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FOpenDetailCommand.Text := 'TServerMethods1.OpenDetail';
    FOpenDetailCommand.Prepare;
  end;
  FOpenDetailCommand.Parameters[0].Value.SetInt32(Keyno);
  FOpenDetailCommand.ExecuteUpdate;
  Result := FOpenDetailCommand.Parameters[1].Value.GetInt32;
end;

procedure TServerMethods1Client.KeyUpdate(keyno: Integer; tableno: Integer);
begin
  if FKeyUpdateCommand = nil then
  begin
    FKeyUpdateCommand := FDBXConnection.CreateCommand;
    FKeyUpdateCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FKeyUpdateCommand.Text := 'TServerMethods1.KeyUpdate';
    FKeyUpdateCommand.Prepare;
  end;
  FKeyUpdateCommand.Parameters[0].Value.SetInt32(keyno);
  FKeyUpdateCommand.Parameters[1].Value.SetInt32(tableno);
  FKeyUpdateCommand.ExecuteUpdate;
end;

function TServerMethods1Client.DatePick(DatePick: string): string;
begin
  if FDatePickCommand = nil then
  begin
    FDatePickCommand := FDBXConnection.CreateCommand;
    FDatePickCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDatePickCommand.Text := 'TServerMethods1.DatePick';
    FDatePickCommand.Prepare;
  end;
  FDatePickCommand.Parameters[0].Value.SetWideString(DatePick);
  FDatePickCommand.ExecuteUpdate;
  Result := FDatePickCommand.Parameters[1].Value.GetWideString;
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
  FTableNumCommand.DisposeOf;
  FMenuKindCommand.DisposeOf;
  FSumPeopleCommand.DisposeOf;
  FDeleteKitchenCommand.DisposeOf;
  FTotalPriceCommand.DisposeOf;
  FDeleteDataCommand.DisposeOf;
  FInsertDetailCommand.DisposeOf;
  FKeychangeCommand.DisposeOf;
  FOpenDetailCommand.DisposeOf;
  FKeyUpdateCommand.DisposeOf;
  FDatePickCommand.DisposeOf;
  inherited;
end;

end.

