unit ClientDataUnit;

interface

uses
  System.SysUtils, System.Classes, Data.DBXDataSnap, IPPeerClient,
  Data.DBXCommon, Data.DB, Datasnap.DBClient, Datasnap.DSConnect, Data.SqlExpr,
  FMX.dialogs, FMX.ListView.Types, FMX.ListView, Datasnap.DSCommon, Data.FMTBcd, FMX.ListBox,FMX.Types, FMX.Objects,
  Data.DbxHTTPLayer;

type
  TDM = class(TDataModule)
    DataSQLCon: TSQLConnection;
    DSProviderConnection1: TDSProviderConnection;
    Select_Roaster_Client: TClientDataSet;
    Select_ChatRoom_Client: TClientDataSet;
    ChannelManager: TDSClientCallbackChannelManager;
    SqlServerMethod1: TSqlServerMethod;
    Select_RoomList_Client: TClientDataSet;
    procedure Select_Roaster(id:string);
    procedure Select_ChatRoom(roomID:string);
    procedure Send_Message(roomID,msg:string);
    procedure Select_RoomList(id:string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


var
  DM: TDM;

implementation


{%CLASSGROUP 'FMX.Controls.TControl'}

uses UClientMain, UClientChat;

{$R *.dfm}

{ TDM }


procedure TDM.Select_ChatRoom(roomID: string);
var
  subI : TListBoxItem;     // FMX.ListBox
  i: integer;
  S : TMemoryStream;
  image: timage;
begin
  image := Timage.Create(self);

  ChatForm.VSB.BeginUpdate;
  try
    Select_ChatRoom_Client.Close;
    Select_ChatRoom_Client.Params[0].AsString := roomId;
    Select_ChatRoom_Client.Open;
    Select_ChatRoom_Client.First;



    while not Select_ChatRoom_Client.EOF do
    begin
      S := TMemoryStream.Create;
      TBlobfield(Select_ChatRoom_Client.FieldByName('c010')).SaveToStream(S);
      image.Bitmap.LoadFromStream(S);

      if Select_ChatRoom_Client.FieldByName('c004').AsString = Mainform.ComboEdit1.Text then
      begin
        chatForm.AddMessageOnChatFormRight(Select_ChatRoom_Client.FieldByName('c008').AsString, Select_ChatRoom_Client.FieldByName('c006').AsString, Select_ChatRoom_Client.FieldByName('c003').AsString, image);
      end
      else
        chatForm.AddMessageOnChatFormLeft(Select_ChatRoom_Client.FieldByName('c008').AsString, Select_ChatRoom_Client.FieldByName('c006').AsString, Select_ChatRoom_Client.FieldByName('c003').AsString, image);

      Select_ChatRoom_Client.Next;
    end;
  except
    on e: Exception do  ShowMessage(e.Message);  // FMX.Dialogs
  end;
  ChatForm.VSB.EndUpdate;
end;

procedure TDM.Select_Roaster(id: string);
var
  subI : TListViewItem;     // FMX.ListBox
  S : TMemoryStream;
begin
  MainForm.ListView1.ClearItems;
  try
    Select_Roaster_Client.Close;
    Select_Roaster_Client.Params[0].AsString := id;
    Select_Roaster_Client.Open;
    Select_Roaster_Client.First;


    while not Select_Roaster_Client.EOF do
    begin
      S := TMemoryStream.Create;
      subI := MainForm.ListView1.Items.Add;
      TBlobfield(Select_Roaster_Client.FieldByName('c004')).SaveToStream(S);
      subI.Bitmap.LoadFromStream(S);
      subI.Text      := Select_Roaster_Client.FieldByName('c003').AsString;
      subI.Detail := Select_Roaster_Client.FieldByName('c005').AsString;

      Select_Roaster_Client.Next;
    end;

  except
    on e: Exception do  ShowMessage(e.Message);  // FMX.Dialogs
  end;
//  DataSQLCon.Close;
end;

procedure TDM.Select_RoomList(id: string);
var
  subI : TListViewItem;
begin
  MainForm.ListView2.ClearItems;
  try
    Select_RoomList_Client.Close;
    Select_RoomList_Client.Params[0].AsString := id;
    Select_RoomList_Client.Open;
    Select_RoomList_Client.First;

     while not Select_RoomList_Client.EOF do
    begin
      subI := MainForm.ListView2.Items.Add;
      subI.Text    := Select_RoomList_Client.FieldByName('c001').AsString;

      Select_RoomList_Client.Next;
    end;
  except
    on e: Exception do  ShowMessage(e.Message);

  end;
end;

procedure TDM.Send_Message(roomID, msg: string);
begin
  //SqlServerMethod1.ServerMethodName :=
end;

end.
