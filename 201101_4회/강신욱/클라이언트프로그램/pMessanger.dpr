program pMessanger;

uses
  Forms,
  Controls,
  uLogin in 'uLogin.pas' {fmLogin},
  uMain in 'uMain.pas' {fmMain},
  uMessage in 'uMessage.pas' {fmMessage},
  uTalk in 'uTalk.pas' {Form2},
  uDMclient in 'uDMclient.pas' {DMClient: TDataModule},
  MessageProtocol in 'MessageProtocol.pas',
  ServerMethodsUnit in 'ServerMethodsUnit.pas',
  ErrorMessage in 'ErrorMessage.pas',
  FormShape in 'FormShape.pas',
  MessagePaser in 'MessagePaser.pas',
  TraceportCodeToName in 'TraceportCodeToName.pas',
  weather in 'weather.pas',
  uReport in 'uReport.pas' {fmReport},
  connected_emp_info in 'connected_emp_info.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDMClient, DMClient);
  fmLogin := TfmLogin.Create(Application);
  if fmLogin.ShowModal = mrOk then
  begin
    Application.MainFormOnTaskbar := True;
    Application.CreateForm(TfmMain, fmMain);
    Application.Run;
  end else
    Application.Terminate;
end.
