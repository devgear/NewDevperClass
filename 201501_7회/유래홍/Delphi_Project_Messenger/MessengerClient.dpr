program MessengerClient;

uses
  System.StartUpCopy,
  FMX.Forms,
  UClientMain in 'UClientMain.pas' {MainForm},
  ClientDataUnit in 'ClientDataUnit.pas' {DM: TDataModule},
  UClientChat in 'UClientChat.pas' {ChatForm},
  UClientProxy in 'UClientProxy.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TChatForm, ChatForm);
  Application.Run;
end.
