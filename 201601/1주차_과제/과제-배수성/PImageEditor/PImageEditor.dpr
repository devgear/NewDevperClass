program PImageEditor;

uses
  Vcl.Forms,
  UimageEditor in 'UimageEditor.pas' {Form1},
  Usplash in 'Usplash.pas' {Splashform};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  SplashForm := tsplashForm.Create(application);
  splashform.Show;
  Splashform.Refresh;
  Application.CreateForm(TForm1, Form1);
  Splashform.hide;
  SplashForm.Free;
  Application.Run;
end.
