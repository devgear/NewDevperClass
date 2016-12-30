program PAppStore;

uses
  Forms,
  Windows,
  UMainForm in 'UMainForm.pas' {MainForm},
  UAppStoreDM in 'UAppStoreDM.pas' {AppStoreDM: TDataModule},
  USearchForm in 'USearchForm.pas' {SearchForm},
  URegForm in 'URegForm.pas' {RegForm},
  ULoginForm in 'ULoginForm.pas' {LoginForm},
  ABOUT in 'ABOUT.pas' {AboutBox},
  Usplash in 'Usplash.pas' {SplashForm};

{$R *.res}

begin
  Application.Initialize;
  LoginCheck;
  LoginThread.WaitFor;
  if start then
  begin
    Application.MainFormOnTaskbar := True;

    Splashform := TSplashForm.Create(Application);
    SplashForm.Show;
    SplashForm.Refresh;
    Sleep(2000);
    SplashForm.Hide;
    SplashForm.Free;

    Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TAppStoreDM, AppStoreDM);
  Application.Run;
  end;
end.
