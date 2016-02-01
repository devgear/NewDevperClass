unit M_DataModule;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient,
  Datasnap.DSConnect, Data.SqlExpr, Data.DBXDataSnap, IPPeerClient,
  Data.DBXCommon, M_Main_Class, DBXJSON, System.JSON, Datasnap.DSCommon,
  Data.DbxHTTPLayer;

type
  TDataModule1 = class(TDataModule)
    M_SQLConnection: TSQLConnection;
    M_DSProviderConnection: TDSProviderConnection;
    Location_Trans: TClientDataSet;
    Room_List: TDataSource;
    Location_TransCHAT_NAME: TWideStringField;
    M_ChannelManager: TDSClientCallbackChannelManager;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TM_Client_Callback = class(TDBXnamedCallback)
  public
    constructor create;
    function Execute(Const args: TJSONValue): TJSONValue; override;
  end;

var
  DataModule1: TDataModule1;
  dm: TServerMethods1Client;
  hname, hlat, hlng, haddress: string;
  meet_Count: integer = 0;

implementation

{ %CLASSGROUP 'FMX.Controls.TControl' }

uses M_Main;

{$R *.dfm}
{ TDataModule1 }

procedure TDataModule1.DataModuleCreate(Sender: TObject);
var
  LGuid: TGuid;
begin
  M_SQLConnection.Connected := true;
  Location_Trans.Active := true;
  dm := TServerMethods1Client.create(M_SQLConnection.DBXConnection);
  CreateGuid(LGuid);
  M_ChannelManager.ManagerId := GuidToString(LGuid);
end;

procedure TDataModule1.DataModuleDestroy(Sender: TObject);
begin
  DataModule1.M_SQLConnection.Connected := false;
  dm.Free;
end;

{ TClient_Callback }

constructor TM_Client_Callback.create;
begin

end;

function TM_Client_Callback.Execute(const args: TJSONValue): TJSONValue;
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
    Form3.M_Chat_List.Text := Form3.M_Chat_List.Text + Chat;
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
    Form3.M_Loc_Mark.Enabled := True;
  end;
  if check = '2' then // 여기서 만나
  begin
    Form3.M_Meet_Click.Enabled := True;
  end;
  if check = '3' then // 채팅방 참여자 목록 표시
  begin
    with LJSonObject.Get(1) do
      Mem_Name := JSONvalue.Value;
    Form3.M_Join_Member.Items.Add(Mem_Name);
  end;
  if check = '4' then // 윈도우폼 위치 마크
  begin
    with LJSonObject.Get(1) do
      Loc_Name := JSONvalue.Value;
    with LJSonObject.Get(2) do
      Loc_Address := JSONvalue.Value;

    hname := '''' + Loc_Name + '''';
    haddress := '''' + Loc_Address + '''';
    Form3.W_Loc_Mark.Enabled := True;
  end;
end;

end.
