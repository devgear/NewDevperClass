program Project_Calc_dpr;

uses
  Vcl.Forms,
  uCalcForm in 'uCalcForm.pas' {fmCalc},
  Vcl.Themes,
  Vcl.Styles,
  USplash in 'USplash.pas' {SplashForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Amakrits');
    SplashForm := TSplashForm.Create(Application);
  SplashForm.Show;
  SplashForm.Refresh;
  Application.CreateForm(TfmCalc, fmCalc);
    SplashForm.Hide;
  SplashForm.Free;
  Application.Run;
end.

