program Project_Calc;

uses
  Vcl.Forms,
  uCalcForm in 'uCalcForm.pas' {frmCalc},
  Vcl.Themes,
  Vcl.Styles,
  USplash in 'USplash.pas' {SplashForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Luna');
  SplashForm := TsplashForm.create(Application);
  SplashForm.Show;
  SplashForm.Refresh;
  Application.CreateForm(TfrmCalc, frmCalc);
  SplashForm.Hide;
  SplashForm.free;
  Application.Run;
end.
