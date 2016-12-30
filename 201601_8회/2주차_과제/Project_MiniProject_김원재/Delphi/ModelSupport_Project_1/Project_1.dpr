program Project_1;

uses
  Vcl.Forms,
  Main in '..\Main.pas' {MainForm},
  Project in '..\Project.pas' {ProjectForm},
  Member in '..\Member.pas' {MemberForm},
  Dept in '..\Dept.pas' {DeptForm},
  MCount in '..\MCount.pas' {MCountForm},
  DM in '..\DM.pas' {wDM: TDataModule},
  Vcl.Themes,
  Vcl.Styles,
  Splash in '..\Splash.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  SplashForm := TsplashForm.create(Application);
  splashForm.show;
  splashForm.Refresh;
  TStyleManager.TrySetStyle('Amakrits');
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TwDM, wDM);
  SplashForm.hide;
  SplashForm.free;
  Application.Run;
end.
