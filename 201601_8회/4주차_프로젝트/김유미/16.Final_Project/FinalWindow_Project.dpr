program FinalWindow_Project;

uses
  System.StartUpCopy,
  FMX.Forms,
  UWindowMainForm in 'UWindowMainForm.pas' {WindowMainForm},
  UWindowDMForm in 'UWindowDMForm.pas' {DataModule1: TDataModule},
  UWindowReservationForm in 'UWindowReservationForm.pas' {WindowReservationForm},
  UWindowClient in 'UWindowClient.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TWindowMainForm, WindowMainForm);
  Application.Run;
end.
