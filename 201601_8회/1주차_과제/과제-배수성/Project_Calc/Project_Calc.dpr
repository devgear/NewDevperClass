program Project_Calc;

uses
  Vcl.Forms,
  UClacForm in 'UClacForm.pas' {fmcalc},
  Usplash in 'Usplash.pas' {Splashform},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
   TStyleManager.TrySetStyle('sky');
  Application.MainFormOnTaskbar := True;

        SplashForm := TSplashform.create(application);
      Splashform.show;
      Splashform.Refresh;
      Application.CreateForm(Tfmcalc, fmcalc);

    splashform.Hide;
      splashform.Free;
      Application.Run;

end.
