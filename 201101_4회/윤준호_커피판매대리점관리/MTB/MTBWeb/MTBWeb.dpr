program MTBWeb;

uses
  Forms,
  IWStart,
  UTF8ContentParser,
  Web_Main in 'Web_Main.pas' {IWMAIN: TIWAppForm},
  ServerController in 'ServerController.pas' {l: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  Web_Join in 'Web_Join.pas' {IWJOIN: TIWAppForm};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
