program Project_MiniProject;

uses
  Vcl.Forms,
  UMini in 'UMini.pas' {mainForm},
  UDM in 'UDM.pas' {DM: TDataModule},
  Vcl.Themes,
  Vcl.Styles,
  UProject in 'UProject.pas' {ProjectForm},
  UDept in 'UDept.pas' {DeptForm},
  UMEMBER in 'UMEMBER.pas' {MEMBERForm},
  UIns in 'UIns.pas' {InsForm},
  UTEAM in 'UTEAM.pas' {TEAM},
  USplash in 'USplash.pas' {Splash};
{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Splash := TSplash.Create(Application);
  Splash.Show;
  Splash.Refresh;
  TStyleManager.TrySetStyle('Amethyst Kamri');
  Application.CreateForm(TmainForm, mainForm);
  Application.CreateForm(TDM, DM);
  Splash.Hide;
  Splash.Free;
  Application.Run;
end.
