program Project_Mini;

uses
  Vcl.Forms,
  System.SysUtils,
  main in 'main.pas' {Form1} ,
  database in 'database.pas' {DM: TDataModule} ,
  splash in 'splash.pas' {splashForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  splashForm := TsplashForm.create(Application);       //SPLASH 생성
  splashForm.show;                                     //SPLASH 출력
  splashForm.refresh;
  sleep(1000);     //SPLASH를 지속시키기 위한 SLEEP함수(1초)
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TForm1, Form1);
  splashForm.hide;      //SPLASH 숨김
  splashForm.free;      //SPLASH 해제
  Application.Run;
end.
