unit ServerContainerUnit1;

interface

uses System.SysUtils, System.Classes,
  Datasnap.DSTCPServerTransport,
  Datasnap.DSServer, Datasnap.DSCommonServer,
  Datasnap.DSAuth, IPPeerServer, Datasnap.DSHTTP;

type
  TServerContainer1 = class(TDataModule)
    DSServer1: TDSServer;
    DSTCPServerTransport1: TDSTCPServerTransport;
    DSServerClass1: TDSServerClass;
    DSHTTPService1: TDSHTTPService;
    procedure DSServerClass1GetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
  end;

var
  ServerContainer1: TServerContainer1;

implementation


{$R *.dfm}

uses Winapi.Windows, ServerMethodsUnit1;

procedure TServerContainer1.DataModuleCreate(Sender: TObject);
begin
  DSHTTPService1.Active := true;
end;

procedure TServerContainer1.DataModuleDestroy(Sender: TObject);
begin
  DSHTTPService1.Active := false;
  ServerContainer1.Free;
end;

procedure TServerContainer1.DSServerClass1GetClass(
  DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
  PersistentClass := ServerMethodsUnit1.TServerMethods1;
end;

end.

