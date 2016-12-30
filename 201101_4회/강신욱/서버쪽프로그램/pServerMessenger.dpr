program pServerMessenger;

uses
  Forms,
  uServerMain in 'uServerMain.pas' {fm_Main},
  ServerMethodsUnit in 'ServerMethodsUnit.pas' {ServerMethods1: TDSServerModule},
  ServerContainerUnit in 'ServerContainerUnit.pas' {ServerContainer1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfm_Main, fm_Main);
  Application.CreateForm(TServerContainer1, ServerContainer1);
  Application.Run;
end.

