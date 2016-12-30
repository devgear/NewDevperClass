program FinalServer_Project;

uses
  Vcl.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  UServerMainForm in 'UServerMainForm.pas' {ServerMainForm},
  ServerMethodsUnit in 'ServerMethodsUnit.pas' {ServerMethods1: TDSServerModule},
  ServerContainerUnit in 'ServerContainerUnit.pas' {ServerContainer1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TServerMainForm, ServerMainForm);
  Application.CreateForm(TServerContainer1, ServerContainer1);
  Application.Run;
end.

