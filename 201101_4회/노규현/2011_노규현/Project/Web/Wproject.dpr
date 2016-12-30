program Wproject;

{$APPTYPE CONSOLE}

uses
  WebBroker,
  CGIApp,
  Uweb in 'Uweb.pas' {WebModule6: TWebModule};

{$R *.res}

begin
  Application.Initialize;
  Application.WebModuleClass := WebModuleClass;
  Application.Run;
end.
