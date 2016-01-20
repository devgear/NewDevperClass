program Project_miniProject;

uses
  Vcl.Forms,
  UmainTB in 'UmainTB.pas' {Form1},
  Pro in 'Pro.pas' {proForm},
  Emplo in 'Emplo.pas' {EmploForm},
  DEPT in 'DEPT.pas' {DeptForm},
  UDM in 'UDM.pas' {Dm: TDataModule},
  Usplash in 'Win32\Usplash.pas' {Splashform};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TSplashform, Splashform);
  SplashForm := TSplashform.create(application);
      Splashform.show;
      Splashform.Refresh;
  Application.CreateForm(TproForm, proForm);
  Application.CreateForm(TEmploForm, EmploForm);
  Application.CreateForm(TDeptForm, DeptForm);
  Application.CreateForm(TDm, Dm);
   splashform.Hide;
      splashform.Free;
      Application.Run;
  Application.Run;
end.
