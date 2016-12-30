program Pweb;

{$APPTYPE CONSOLE}

uses
  WebBroker,
  CGIApp,
  Uwm in 'Uwm.pas' {WebModule1: TWebModule};

{$R *.res}

begin
  Application.Initialize;
  Application.WebModuleClass := WebModuleClass;
  Application.Run;
end.
