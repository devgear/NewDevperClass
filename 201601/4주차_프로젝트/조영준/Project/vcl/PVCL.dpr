program PVCL;

uses
  Vcl.Forms,
  UDept in 'UDept.pas' {Form4},
  UDM in 'UDM.pas' {DM: TDataModule},
  UMain in 'UMain.pas' {Form3},
  Uprofessor in 'Uprofessor.pas' {Form6},
  Ustudent in 'Ustudent.pas' {Form5},
  USubject in 'USubject.pas' {Form7},
  UDotice in 'UDotice.pas' {Form8},
  USignup in 'USignup.pas' {Form9},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10');
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
