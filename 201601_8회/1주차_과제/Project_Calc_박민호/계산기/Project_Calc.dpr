program Project_Calc;

uses
  Vcl.Forms,
  uCalcForm in 'uCalcForm.pas' {frmCalc},
  UCalcAbout in 'UCalcAbout.pas' {AboutCalc},
  Vcl.Themes,
  Vcl.Styles,
  USplash in 'USplash.pas' {Splash};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Splash := TSplash.Create(Application);
  Splash.Show;
  Splash.Refresh;
  TStyleManager.TrySetStyle('Cyan Night');
  Application.CreateForm(TfrmCalc, frmCalc);
  Splash.Hide;
  Splash.Free;
  Application.Run;
end.
