unit ServerMethodsUnit1;

interface

uses System.SysUtils, System.Classes, System.Json,
  Datasnap.DSServer, Datasnap.DSAuth, Datasnap.DSProviderDataModuleAdapter,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.IBDef, FireDAC.VCLUI.Wait, FireDAC.Comp.UI,
  FireDAC.Phys.IBBase, FireDAC.Phys.IB, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  Datasnap.Provider, FireDAC.Comp.DataSet, DBXJSON;

type
  TServerMethods1 = class(TDSServerModule)
    FDConnection1: TFDConnection;
    FDPhysIBDriverLink1: TFDPhysIBDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    Insert: TFDQuery;
    InsertMEM_NAME: TWideStringField;
    InsertMEM_LAT: TWideStringField;
    InsertMEM_LNG: TWideStringField;
    Room_List: TFDTable;
    Room_ListCHAT_NAME: TWideStringField;
    List_DataSetProvider: TDataSetProvider;
    InsertMEM_ADDRESS: TWideStringField;
    procedure DSServerModuleDestroy(Sender: TObject);
    procedure DSServerModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    procedure Insert_Qrt(Name, Lat, Lng, channel: string);
    procedure Insert_W_Qrt(Name, Address, channel: string);
    procedure btn_HereMeet_Click(channel: string);
    procedure Chat_Log(chat, channel: string);
    procedure Create_Room(Room: string);
    procedure Join_Member(Name, channel: string);
    function broadcast(Value: TJSONObject; channel: string): boolean;
  end;

implementation

{$R *.dfm}

uses ServerContainerUnit1;

function TServerMethods1.broadcast(Value: TJSONObject; channel: string)
  : boolean;
begin
  result := ServerContainer1.DSServer1.BroadcastMessage(channel, Value);
end;

procedure TServerMethods1.btn_HereMeet_Click(channel: string); // 여기서 만나 버튼 클릭
var
  Meet_CallbackValue: TJSONObject;
begin
  Meet_CallbackValue := TJSONObject.Create;
  Meet_CallbackValue.AddPair(TJSONPair.Create('Num', '2'));

  broadcast(Meet_CallbackValue, channel);
end;

procedure TServerMethods1.Chat_Log(chat, channel: string); // 채팅
var
  Chat_CallbackValue: TJSONObject;
begin
  Chat_CallbackValue := TJSONObject.Create;
  Chat_CallbackValue.AddPair(TJSONPair.Create('Num', '0'));
  Chat_CallbackValue.AddPair(TJSONPair.Create('Chat', chat));

  // ServerContainer1.DSServer1.BroadcastMessage('HereMeet', Chat_CallbackValue);
  broadcast(Chat_CallbackValue, channel);
end;

procedure TServerMethods1.Create_Room(Room: string); // 채팅방 생성
begin
  Insert.Close;
  Insert.SQL.Clear;
  Insert.SQL.Text := 'insert into chat_room(chat_name) values(:room);';
  Insert.ParamByName('room').AsString := Room;
  Insert.ExecSQL;
end;

procedure TServerMethods1.DSServerModuleCreate(Sender: TObject);
begin
  FDConnection1.Connected := true;
  Insert.Active := true;
  Room_List.Active := true;
end;

procedure TServerMethods1.DSServerModuleDestroy(Sender: TObject);
begin
  FDConnection1.Connected := false;
  Self.Free;
end;

function TServerMethods1.EchoString(Value: string): string;
begin
  result := Value;
end;

procedure TServerMethods1.Insert_Qrt(Name, Lat, Lng, channel: string);
// 사용자 정보 입력
var
  Loc_CallbackValue: TJSONObject;
begin
  Insert.Close;
  Insert.SQL.Clear;
  Insert.SQL.Text :=
    'insert into member(mem_name,mem_lat,mem_lng) values(:Name,:Lat,:Lng);';
  Insert.ParamByName('name').AsString := Name;
  Insert.ParamByName('lat').AsString := Lat;
  Insert.ParamByName('lng').AsString := Lng;
  Insert.ExecSQL;

  Join_Member(Name, channel);

  Loc_CallbackValue := TJSONObject.Create;
  Loc_CallbackValue.AddPair(TJSONPair.Create('Num', '1'));
  Loc_CallbackValue.AddPair(TJSONPair.Create('Name', Name));
  Loc_CallbackValue.AddPair(TJSONPair.Create('Laitude', Lat));
  Loc_CallbackValue.AddPair(TJSONPair.Create('longitude', Lng));

  broadcast(Loc_CallbackValue, channel);
end;

procedure TServerMethods1.Insert_W_Qrt(Name, Address, channel: string);
var
  W_Loc_CallbackValue: TJSONObject;
begin
  Insert.Close;
  Insert.SQL.Clear;
  Insert.SQL.Text :=
    'insert into member(mem_name,mem_address) values(:Name,:address);';
  Insert.ParamByName('name').AsString := Name;
  Insert.ParamByName('address').AsString := Address;
  Insert.ExecSQL;

  Join_Member(Name, channel);

  W_Loc_CallbackValue := TJSONObject.Create;
  W_Loc_CallbackValue.AddPair(TJSONPair.Create('Num', '4'));
  W_Loc_CallbackValue.AddPair(TJSONPair.Create('Name', Name));
  W_Loc_CallbackValue.AddPair(TJSONPair.Create('Address', Address));

  broadcast(W_Loc_CallbackValue, channel);

end;

procedure TServerMethods1.Join_Member(Name, channel: string); // 채팅방 참여자 표시
var
  Join_CallbackValue: TJSONObject;
begin
  Join_CallbackValue := TJSONObject.Create;
  Join_CallbackValue.AddPair(TJSONPair.Create('Num', '3'));
  Join_CallbackValue.AddPair(TJSONPair.Create('Name', Name));

  broadcast(Join_CallbackValue, channel);
end;

function TServerMethods1.ReverseString(Value: string): string;
begin
  result := ReverseString(Value);
end;

end.
