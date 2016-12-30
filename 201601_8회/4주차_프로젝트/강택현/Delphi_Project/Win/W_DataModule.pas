unit W_DataModule;

interface

uses
  System.SysUtils, System.Classes, Data.DBXDataSnap, IPPeerClient,
  Data.DBXCommon, Data.DB, Datasnap.DBClient, Datasnap.DSConnect, Data.SqlExpr,
  W_Main_Class, DBXJSON, System.JSON, Datasnap.DSCommon, Chat_Room,
  Data.DbxHTTPLayer;

type
  TDataModule2 = class(TDataModule)
    W_SQLConnection: TSQLConnection;
    W_DSProviderConnection: TDSProviderConnection;
    Insert_ChatRoom: TClientDataSet;
    ChatRoom: TDataSource;
    ChannelManager: TDSClientCallbackChannelManager;
    Insert_ChatRoomCHAT_NAME: TWideStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TClient_Callback = class(TDBXnamedCallback)
  public
    constructor create;
    function Execute(Const args: TJSONValue): TJSONValue; override;
  end;

var
  DataModule2: TDataModule2;
  dm: TServerMethods1Client;
  hname, hlat, hlng, haddress: string;
  meet_Count: integer = 0;

implementation

{ %CLASSGROUP 'Vcl.Controls.TControl' }

uses W_Main;

{$R *.dfm}

procedure TDataModule2.DataModuleCreate(Sender: TObject);
begin
  W_SQLConnection.Connected := true;
  Insert_ChatRoom.Active := true;
  dm := TServerMethods1Client.create(W_SQLConnection.DBXConnection);
end;

procedure TDataModule2.DataModuleDestroy(Sender: TObject);
begin
  dm.Free;
end;

{ TClient_Callback }

constructor TClient_Callback.create;
begin

end;

function TClient_Callback.Execute(const args: TJSONValue): TJSONValue;
var
  LJSonObject: TJsonObject;
  Loc_Name, Loc_Lat, Loc_Lng, Mem_Name, Loc_Address, Chat: string;
  check: string;
begin
  result := TJSONTrue.create;
  LJSonObject := TJsonObject(args);
  with LJSonObject.Get(0) do
    check := JSONvalue.Value;

  if check = '0' then // 채팅
  begin
    with LJSonObject.Get(1) do
      Chat := JSONvalue.Value;
    Form1.Chat_List.Text := Form1.Chat_List.Text + Chat;
  end;
  if check = '1' then // 모바일 위치 마크
  begin
    with LJSonObject.Get(1) do
      Loc_Name := JSONvalue.Value;
    with LJSonObject.Get(2) do
      Loc_Lat := JSONvalue.Value;
    with LJSonObject.Get(3) do
      Loc_Lng := JSONvalue.Value;

    hname := '''' + Loc_Name + '''';
    hlat := '' + Loc_Lat + '';
    hlng := '' + Loc_Lng + '';
    Form1.Loc_Mark.Enabled := true;
  end;
  if check = '2' then // 여기서 만나
  begin
    Form1.Meet_Click.Enabled := true;
  end;
  if check = '3' then // 채팅방 참여자 목록 표시
  begin
    with LJSonObject.Get(1) do
      Mem_Name := JSONvalue.Value;
    Form1.Join_Member.Items.Add(Mem_Name);
  end;
  if check = '4' then // 윈도우폼 위치 마크
  begin
    with LJSonObject.Get(1) do
      Loc_Name := JSONvalue.Value;
    with LJSonObject.Get(2) do
      Loc_Address := JSONvalue.Value;

    hname := '''' + Loc_Name + '''';
    haddress := '''' + Loc_Address + '''';
    Form1.W_Loc_Mark.Enabled := true;
  end;
end;

end.
