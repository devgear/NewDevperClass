program MessengerServer;

uses
  Vcl.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  UServerMain in 'UServerMain.pas' {MainForm},
  ServerMethodsUnit in 'ServerMethodsUnit.pas' {ServerMethods1: TDSServerModule},
  ServerContainerUnit in 'ServerContainerUnit.pas' {ServerContainer1: TDataModule},
  UClient in 'UClient.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TServerContainer1, ServerContainer1);
  Application.CreateForm(TServerMethods1, ServerMethods1);
  Application.Run;
end.

