program MiniProject;

uses
  Vcl.Forms,
  UDB in 'UDB.pas' {DataModule1: TDataModule},
  UMain in 'UMain.pas' {Mainform},
  UMember in 'UMember.pas' {MemberForm},
  Vcl.Themes,
  Vcl.Styles,
  USplash in 'USplash.pas' {SplashForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Obsidian');
  SplashForm := TSplashForm.Create(Application);
  SplashForm.Show;
  SplashForm.Refresh;
  Application.CreateForm(TMainform, Mainform);
  Application.CreateForm(TDataModule1, DataModule1);
  SplashForm.Hide;
  SplashForm.Free;
  Application.Run;
end.
