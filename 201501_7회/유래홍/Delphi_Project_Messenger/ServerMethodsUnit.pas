unit ServerMethodsUnit;

interface

uses System.SysUtils, System.Classes, System.Json,
  Datasnap.DSServer, Datasnap.DSAuth, Datasnap.DSProviderDataModuleAdapter,
  Data.DBXMySQL, Data.FMTBcd, Data.DB, Datasnap.DBClient, Datasnap.Provider,
  Data.SqlExpr;

type
  TServerMethods1 = class(TDSServerModule)
    SQLConnection1: TSQLConnection;
    m0010: TSQLDataSet;
    m0010_Provider: TDataSetProvider;
    ClientDataSet_m0010: TClientDataSet;
    DataSource_m0010: TDataSource;
    m1010: TSQLDataSet;
    m1010_Provider: TDataSetProvider;
    ClientDataSet_m1010: TClientDataSet;
    DataSource_m1010: TDataSource;
    m2010: TSQLDataSet;
    m2010_Provider: TDataSetProvider;
    ClientDataSet_m2010: TClientDataSet;
    DataSource_m2010: TDataSource;
    m3010: TSQLDataSet;
    m3010_Provider: TDataSetProvider;
    ClientDataSet_m3010: TClientDataSet;
    DataSource_m3010: TDataSource;
    Select_Roaster: TSQLDataSet;
    Select_Roaster_Provider: TDataSetProvider;
    Select_ChatRoom: TSQLDataSet;
    Select_ChatRoom_Provider: TDataSetProvider;
    Insert_Chat: TSQLDataSet;
    Insert_Chat_Provider: TDataSetProvider;
    SQLQuery: TSQLQuery;
    Select_RoomList: TSQLDataSet;
    Select_RoomList_Provider: TDataSetProvider;
    dd: TSQLDataSet;
    DataSetProvider1: TDataSetProvider;
  private
    { Private declarations }
  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    function SelectRoaster(myID: string): TDataSet;
    function SelectChatRoom(roomID: string): TDataSet;
    function SendMessage(roomID, senderID, msg: string): boolean;
  end;

var
  ServerMethods1: TServerMethods1;

implementation

{$R *.dfm}

uses System.StrUtils, ServerContainerUnit, UServerMain, UClient;

function TServerMethods1.EchoString(Value: string): string;
begin
  Result := Value;
end;

function TServerMethods1.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;

function TServerMethods1.SelectChatRoom(roomID: string): TDataSet;
begin
  if Select_ChatRoom.State = dsInactive then
  begin
    Select_ChatRoom.Params[0].AsString := roomID;
    Select_ChatRoom.Open;
  end;
  Result := Select_ChatRoom;
end;

function TServerMethods1.SelectRoaster(myID: string): TDataSet;
begin
  if Select_Roaster.State = dsInactive then
  begin
    Select_Roaster.Params[0].AsString := myID;
    Select_Roaster.Open;
  end;
  Result := Select_Roaster;
end;

function TServerMethods1.SendMessage(roomID, senderID, msg: string): boolean;
var
  uid: string;
  i:integer;
  aResponse:TJSONValue;
begin
  result := true;
  try
    Insert_Chat.Close;
    Insert_Chat.Params[0].Value := roomID;
    Insert_Chat.Params[1].Value := senderID;
    Insert_Chat.Params[2].Value := 1;   // 1: ¹®ÀÚ¿­
    Insert_Chat.Params[3].Value := msg;
    Insert_Chat.Params[4].Value := 2;
    Insert_Chat.ExecSQL;

  except
    MainForm.Memo1.Lines.Add('insert error');
  end;

  ServerContainer1.GetClientList;

  try
    SQLQuery.Close;
    SQLQuery.SQL.Clear;
    SQLQuery.SQL.Add('SELECT * FROM m1010 where c001 = :roomID');
    SQLQuery.Params[0].Value := roomID;
    SQLQuery.Open;

    while Not SQLQuery.EOF do
    begin
        uid :=  SQLQuery.FieldByName('c002').AsString;
        if ServerContainer1.ClientDic.ContainsKey(uid) and (uid <> senderID)  then
        begin
          ServerContainer1.DSServer1.NotifyCallback(ServerContainer1.ClientDic.items[uid],
          uid,
          TJSONString.Create( senderID + ' ' + msg),
          aResponse)
        end;
      SQLQuery.Next;
    end;
  except
    on e: Exception do
    begin
    result := false;
      MainForm.Memo1.Lines.add(e.Message);
    end;
  end;
end;

end.
