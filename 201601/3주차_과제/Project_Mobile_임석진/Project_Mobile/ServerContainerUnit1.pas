unit ServerContainerUnit1;

interface

uses System.SysUtils, System.Classes,
  Datasnap.DSTCPServerTransport,
  Datasnap.DSServer, Datasnap.DSCommonServer,
  Datasnap.DSAuth, IPPeerServer;

type
  TServerContainer = class(TDataModule)
    DSServer1: TDSServer;
    DSTCPServerTransport1: TDSTCPServerTransport;
    DSServerClass1: TDSServerClass;
    procedure DSServerClass1GetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
  private
    { Private declarations }
  public
  end;

var
  ServerContainer: TServerContainer;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

uses Winapi.Windows, ServerMethodsUnit;

procedure TServerContainer.DSServerClass1GetClass(
  DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
  PersistentClass := ServerMethodsUnit.TServerMethods;
end;


end.

