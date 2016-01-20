program Project;

uses
  Vcl.Forms,
  UMain in 'UMain.pas' {MainForm},
  UMember in 'UMember.pas' {Member},
  UDataModule in 'UDataModule.pas' {DataModule1: TDataModule},
  Vcl.Themes,
  Vcl.Styles,
  UProject in 'UProject.pas' {frmProject},
  UDept in 'UDept.pas' {Dept},
  USplash in 'USplash.pas' {SplashForm};

{$R *.res}

begin
  Application.Initialize;
  SplashForm := TSplashForm.Create(Application);     //스플레쉬 생성
  SplashForm.Show;                                   //보여주기
  SplashForm.Refresh;                                //갱신
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Smokey Quartz Kamri');
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TMainForm, MainForm);
  SplashForm.Hide;                                   //런이 되기 전에 숨기기
  SplashForm.Free;                                   //해제
  Application.Run;
end.
