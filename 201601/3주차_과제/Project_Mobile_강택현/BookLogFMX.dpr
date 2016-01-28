program BookLogFMX;

uses
  System.StartUpCopy,
  FMX.Forms,
  MainForm in 'MainForm.pas' {Form1},
  DataAccessModule in 'DataAccessModule.pas' {dmDataAccess: TDataModule},
  PhotoFrame in 'Frames\PhotoFrame.pas' {frPhoto: TFrame},
  WebBrowserFrame in 'Frames\WebBrowserFrame.pas' {frWebBrowser: TFrame},
  Main_Class in 'Main_Class.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TdmDataAccess, dmDataAccess);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
