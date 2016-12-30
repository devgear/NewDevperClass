unit ServerContainerUnit;

interface

uses System.SysUtils, System.Classes,
  Datasnap.DSTCPServerTransport,
  Datasnap.DSServer, Datasnap.DSCommonServer,
  Datasnap.DSAuth, IPPeerServer, vcl.ComCtrls,
  System.Generics.Collections, Datasnap.DSHTTP;

type
  TServerContainer1 = class(TDataModule)
    DSServer1: TDSServer;
    DSTCPServerTransport1: TDSTCPServerTransport;
    DSServerClass1: TDSServerClass;
    DSHTTPService1: TDSHTTPService;
    procedure DSServerClass1GetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure GetConnectedClient;
    procedure GetClientList;
    procedure DataModuleCreate(Sender: TObject);        // ClientList에 클라목록 넣음
  private
    { Private declarations }
  public
     ClientDic: TDictionary<string,string>;
  end;

var
  ServerContainer1: TServerContainer1;


implementation

{$R *.dfm}

uses Winapi.Windows, ServerMethodsUnit, UServerMain, UClient;

procedure TServerContainer1.DataModuleCreate(Sender: TObject);
begin
    ClientDic := TDictionary<string, string>.create;
end;

procedure TServerContainer1.DSServerClass1GetClass(
  DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
  PersistentClass := ServerMethodsUnit.TServerMethods1;
end;


procedure TServerContainer1.GetClientList;
var
  client: TClient;
  I: integer;
begin
  ClientDIc.Clear;
try
    for I := 0 to ServerContainer1.DSServer1.GetAllChannelClientId('MessageChannel').Count - 1 do
  begin

  ClientDic.Add(ServerContainer1.DSServer1.GetAllChannelCallbackId('MessageChannel')[i],
                ServerContainer1.DSServer1.GetAllChannelClientId('MessageChannel')[i]);
  MainForm.Memo1.Lines.Add( ClientDic.Items[ServerContainer1.DSServer1.GetAllChannelCallbackId('MessageChannel')[i]]);
  end;
  except
    MainForm.Memo1.Lines.Add('클라이언트 목록 작성 에러');
  end;


end;

procedure TServerContainer1.GetConnectedClient;
var
  I: integer;
  listI: TListItem;
begin
  I := 0;
  Mainform.ListView1.Clear;
  try
    for I := 0 to ServerContainer1.DSServer1.GetAllChannelClientId('MessageChannel').Count - 1 do
  begin
    listI := MainForm.ListView1.Items.Add;
    listI.Caption := ServerContainer1.DSServer1.GetAllChannelCallbackId('MessageChannel')[i];
    listI.SubItems.add(ServerContainer1.DSServer1.GetAllChannelClientId('MessageChannel')[i]);
  end;
  except
    MainForm.Memo1.Lines.Add('클라이언트 목록 받기 에러');
  end;
end;

end.

