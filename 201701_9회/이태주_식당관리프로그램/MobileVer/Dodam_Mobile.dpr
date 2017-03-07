program Dodam_Mobile;

uses
  System.StartUpCopy,
  FMX.Forms,
  frmMobile in 'frmMobile.pas' {frm_mobile},
  MobileDM in 'MobileDM.pas' {DataModule1: TDataModule},
  unit1 in 'unit1.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.FormFactor.Orientations := [TFormOrientation.Portrait, TFormOrientation.InvertedPortrait, TFormOrientation.Landscape, TFormOrientation.InvertedLandscape];
  Application.CreateForm(Tfrm_mobile, frm_mobile);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.


