program PImageEditor;

uses
  Vcl.Forms,
  UImageEditor in 'UImageEditor.pas' {Form1},
  UAbout in 'UAbout.pas' {About};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
