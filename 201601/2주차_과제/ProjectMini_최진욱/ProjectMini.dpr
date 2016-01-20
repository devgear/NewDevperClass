program ProjectMini;

uses
  Vcl.Forms,
  System.SysUtils,
  U_Main in 'U_Main.pas' {Form1},
  U_DM in 'U_DM.pas' {DM: TDataModule},
  splash in 'splash.pas' {SplashForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;


  SplashForm:=TSplashForm.Create(Application);
  SplashForm.Show;
  SplashForm.Refresh;
  sleep(500);

  Application.CreateForm(TDM, DM);
  Application.CreateForm(TForm1, Form1);
  SplashForm.Hide;
  SplashForm.Free;
  Application.Run;
end.
