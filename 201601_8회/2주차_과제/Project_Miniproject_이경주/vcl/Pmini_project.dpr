program Pmini_project;

uses
  Vcl.Forms,
  System.SysUtils,
  Umain in 'Umain.pas' {MainForm},
  Uproject in 'Uproject.pas' {project},
  Uemp in 'Uemp.pas' {emp},
  ClientClassesUnit1 in 'ClientClassesUnit1.pas',
  ClientModuleUnit1 in 'ClientModuleUnit1.pas' {DM: TDataModule},
  Usplash in 'Usplash.pas' {Splashform},
  Udept in 'Udept.pas' {dept},
  Utreeview in 'Utreeview.pas' {Frame1: TFrame},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;

  SplashForm := TSplashForm.Create(Application);
  SplashForm.Show;
  SplashForm.refresh;
  sleep(500);

  SplashForm.Hide;

  TStyleManager.TrySetStyle('Amethyst Kamri');
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TMainForm, MainForm);
  SplashForm.Free;
  Application.Run;

end.
