program PMTB_Client;

uses
  Forms,
  Windows,
  Controls,
  UMTCli in 'UMTCli.pas' {ClientForm},
  ClientClassesUnit1 in 'ClientClassesUnit1.pas',
  ClientModuleUnit1 in 'ClientModuleUnit1.pas' {ClientModule1: TDataModule},
  UItemForm in 'UItemForm.pas' {ItemForm},
  MailForm in 'MailForm.pas' {Mail_Form};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TClientModule1, ClientModule1);
  Application.CreateForm(TClientForm, ClientForm);
  Application.Run;
end.
