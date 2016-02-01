program Project_History_Server;

uses
  Vcl.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  UHistory_ServerMain in 'UHistory_ServerMain.pas' {Form7},
  ServerContainerUnit4 in 'ServerContainerUnit4.pas' {ServerContainer4: TDataModule},
  ServerMethodsUnit4 in 'ServerMethodsUnit4.pas' {ServerMethods4: TDSServerModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TServerContainer4, ServerContainer4);
  Application.Run;
end.

