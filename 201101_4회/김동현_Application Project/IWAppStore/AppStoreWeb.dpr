program AppStoreWeb;

uses
  Forms,
  IWStart,
  UTF8ContentParser,
  Intro in 'Intro.pas' {IWForm1: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  Main in 'Main.pas' {IWForm2: TIWAppForm},
  Unit3 in 'Unit3.pas' {IWForm3: TIWAppForm},
  Unit4 in 'Unit4.pas' {IWForm4: TIWAppForm};

{$R *.res}

begin
  TIWStart.Execute(True);
end.

