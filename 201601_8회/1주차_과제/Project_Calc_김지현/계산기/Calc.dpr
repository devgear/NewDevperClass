program Calc;

uses
  Vcl.Forms,
  uCalc in 'uCalc.pas' {Form4},
  Vcl.Themes,
  Vcl.Styles,
  Usplash in 'Usplash.pas' {SplashForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Smokey Quartz Kamri');
  SplashForm := TsplashForm.create(Application);
  splashForm.show;
  splashForm.Refresh;
  Application.CreateForm(TForm4, Form4);
  SplashForm.hide;
  SplashForm.free;
  Application.Run;
end.
