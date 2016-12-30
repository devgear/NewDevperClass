program PAppStoreWeb;

{$APPTYPE CONSOLE}

uses
  WebBroker,
  CGIApp,
  Uwdm in 'Uwdm.pas' {WebModule1: TWebModule};

{$R *.res}

begin
  Application.Initialize;
  Application.WebModuleClass := WebModuleClass;
  Application.Run;
end.
