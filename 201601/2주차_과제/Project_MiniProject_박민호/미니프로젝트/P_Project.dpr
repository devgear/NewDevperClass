program P_Project;

uses
  Vcl.Forms,
  P_Main in 'P_Main.pas' {Project},
  P_Insa in 'P_Insa.pas' {Insa},
  P_Department in 'P_Department.pas' {Department},
  Vcl.Themes,
  Vcl.Styles,
  P_DataModule in 'P_DataModule.pas' {TDataModule: TDataModule},
  P_ProjectInfo in 'P_ProjectInfo.pas' {ProjectInfo},
  P_ProjectMember in 'P_ProjectMember.pas' {ProjectMember},
  P_Login in 'P_Login.pas' {Login},
  P_SiteMap in 'P_SiteMap.pas' {Frame1: TFrame},
  P_Splash in 'P_Splash.pas' {Splash};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Splash := TSplash.Create(Application);
  Splash.Show;
  Splash.Refresh;
  TStyleManager.TrySetStyle('Cyan Night');
  Application.CreateForm(TDepartment, Department);
  Application.CreateForm(TInsa, Insa);
  Application.CreateForm(TProject, Project);
  Application.CreateForm(TTDataModule, TDataModule);
  Splash.Hide;
  Splash.Free;
  Application.Run;
end.
