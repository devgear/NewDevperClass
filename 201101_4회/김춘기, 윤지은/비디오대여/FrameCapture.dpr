program FrameCapture;

uses
  Forms,
  FrameCapture_ in 'FrameCapture_.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
