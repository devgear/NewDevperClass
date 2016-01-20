program MiniProject;

uses
  Vcl.Forms,
  mini in 'mini.pas' {Form1},
  Vcl.Themes,
  Vcl.Styles,
  project in 'project.pas' {Form2},
  P_data in 'P_data.pas' {DM: TDataModule},
  dept in 'dept.pas' {Form3},
  member in 'member.pas' {Form4};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10 Blue');
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
