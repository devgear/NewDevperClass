program Project_Calc;

uses
  Vcl.Forms,
  UCalcForm in 'UCalcForm.pas' {FrmCalc},
  Vcl.Themes,
  Vcl.Styles,
  USplash in 'USplash.pas' {SplashForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Cobalt XEMedia');
  Application.CreateForm(TFrmCalc, FrmCalc);
  Application.Run;
end.
