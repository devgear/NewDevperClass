program FinalMobile_Project;

uses
  System.StartUpCopy,
  FMX.Forms,
  UMobileDMForm in 'UMobileDMForm.pas' {DataModule1: TDataModule},
  UMobileClient in 'UMobileClient.pas',
  UMobileMainForm in 'UMobileMainForm.pas' {MobileMainForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TMobileMainForm, MobileMainForm);
  Application.Run;
end.
