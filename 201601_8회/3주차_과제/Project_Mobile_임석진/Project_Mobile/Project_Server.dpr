program Project_Server;

uses
  FMX.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  UServer_Main in 'UServer_Main.pas' {Form1},
  ServerMethodsUnit in 'ServerMethodsUnit.pas' {ServerMethods: TDSServerModule},
  ServerContainerUnit1 in 'ServerContainerUnit1.pas' {ServerContainer: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TServerContainer, ServerContainer);
  Application.Run;
end.

