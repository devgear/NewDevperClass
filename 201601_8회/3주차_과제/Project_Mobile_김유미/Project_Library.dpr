program Project_Library;

uses
  System.StartUpCopy,
  FMX.Forms,
  Main_Client in 'Main_Client.pas' {Form1},
  PhotoFrame in 'Frames\PhotoFrame\PhotoFrame.pas' {frPhoto: TFrame},
  WebBrowserFrame in 'Frames\WebBrowserFrame\WebBrowserFrame.pas' {frWebBrowser: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
