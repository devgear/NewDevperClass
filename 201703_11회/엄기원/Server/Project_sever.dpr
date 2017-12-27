program Project_sever;

uses
  Vcl.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  Sever_Unit in 'Sever_Unit.pas' {Form_server},
  ServerMethodsUnit2 in 'ServerMethodsUnit2.pas' {ServerMethods2: TDSServerModule},
  ServerContainerUnit2 in 'ServerContainerUnit2.pas' {ServerContainer2: TDataModule},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10 SlateGray');
  Application.CreateForm(TForm_server, Form_server);
  Application.CreateForm(TServerContainer2, ServerContainer2);
  Application.Run;
end.

