program Project_Calc;

uses
  Vcl.Forms,
  uCalcForm in 'uCalcForm.pas' {frmCalc},
  Vcl.Themes,
  Vcl.Styles,
  uSplash in 'uSplash.pas' {SplashForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Amakrits');
  SplashForm := TSplashForm.Create(Application);
  SplashForm.Show;
  SplashForm.Refresh;
  Application.CreateForm(TfrmCalc, frmCalc);
  SplashForm.Hide;
  SplashForm.Free;
  Application.Run;
end.
