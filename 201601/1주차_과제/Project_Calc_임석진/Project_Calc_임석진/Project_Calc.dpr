program Project_Calc;

uses
  Vcl.Forms,
  uClacForm in 'uClacForm.pas' {frmCalc},
  Vcl.Themes,
  Vcl.Styles,
  USplash in 'USplash.pas' {SplashForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  SplashForm := TSplashForm.Create(application);     //스플레쉬를 생성
  SplashForm.Show;                                   //보여주기
  SplashForm.Refresh;                                //갱신
  Application.CreateForm(TfrmCalc, frmCalc);
  SplashForm.Hide;                                   //숨기기
  SplashForm.Free;                                   //해재
  Application.Run;
end.


