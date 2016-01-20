program MiniProject;

uses
  Vcl.Forms,
  System.SysUtils,
  Main in 'Main.pas' {Form1},
  UDM in 'UDM.pas' {DM: TDataModule},
  USplash in 'USplash.pas' {SplashForm},
  UEmployee in 'UEmployee.pas' {EmployeeForm},
  UDept in 'UDept.pas' {DeptForm},
  UProject in 'UProject.pas' {ProjectForm},
  UTree in 'UTree.pas' {TreeForm};

{$R *.res}

begin

  Application.Initialize;
  Application.MainFormOnTaskbar := True;

  SplashForm := TSplashForm.Create(Application);
  SplashForm.Show;
  SplashForm.refresh;
  sleep(1000);

  Application.CreateForm(TDM, DM);
  Application.CreateForm(TForm1, Form1);
  SplashForm.Hide;
  SplashForm.Free;

  Application.Run;

end.
