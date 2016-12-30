program PMTB;

uses
  Forms,
  UMTServer in 'UMTServer.pas' {ServerForm},
  ServerMethodsUnit1 in 'ServerMethodsUnit1.pas' {ServerMethods1: TDSServerModule},
  ServerContainerUnit1 in 'ServerContainerUnit1.pas' {ServerContainer1: TDataModule},
  UShop_Form in 'UShop_Form.pas' {ShopForm},
  USDM in 'USDM.pas' {SDM: TDataModule},
  MailForm in 'MailForm.pas' {Mail_Form};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TServerForm, ServerForm);
  Application.CreateForm(TServerContainer1, ServerContainer1);
  Application.CreateForm(TSDM, SDM);
  Application.Run;
end.

