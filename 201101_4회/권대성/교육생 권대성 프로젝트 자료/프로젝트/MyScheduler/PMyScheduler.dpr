program PMyScheduler;

uses
  Forms, Windows,
  UMain in 'UMain.pas' {MainForm},
  UTemp in 'UTemp.pas' {TempForm},
  UDataModule in 'UDataModule.pas' {DM: TDataModule},
  UDataInput in 'UDataInput.pas' {DataInputForm},
  UList in 'UList.pas' {ListEditForm},
  USplash in 'USplash.pas' {SplashForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);

  //스플래쉬 화면
  SplashForm := TSplashForm.Create(Application);
  SplashForm.Show;
  SplashForm.Refresh;
  Sleep(500);

  Application.CreateForm(TMainForm, MainForm);

  //스플래쉬 화면
  SplashForm.Hide;
  SplashForm.Free;

  Application.Run;
end.
