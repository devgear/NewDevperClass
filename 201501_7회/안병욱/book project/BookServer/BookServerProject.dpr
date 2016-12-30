program BookServerProject;

uses
  Vcl.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  BookServer in 'BookServer.pas' {Form3},
  BookServerMethodsUnit1 in 'BookServerMethodsUnit1.pas' {ServerMethods1: TDSServerModule},
  BookServerContainerUnit1 in 'BookServerContainerUnit1.pas' {ServerContainer1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TServerContainer1, ServerContainer1);
  Application.Run;
end.

