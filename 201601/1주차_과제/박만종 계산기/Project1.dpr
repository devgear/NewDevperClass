program Project1;

uses
  Vcl.Forms,
  MJSPLASH in '..\..\Documents\Embarcadero\Studio\Projects\MJSPLASH.pas' {SPLASHForm},
  Unit1 in 'Unit1.pas' {CALC},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Carbon');
  SplashForm := TSplashForm.Create(Application);
  SplashForm.Show;
  SplashForm.Refresh;
  Application.CreateForm(TCALC, CALC);
  SplashForm.Hide;
  SplashForm.Free;
  Application.Run;
end.
