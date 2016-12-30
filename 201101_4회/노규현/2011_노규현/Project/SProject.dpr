program SProject;

uses
  Forms,
  Smain in 'Smain.pas' {Form4},
  ServerMethodsUnit in 'ServerMethodsUnit.pas' {ServerMethods: TDSServerModule},
  ServerContainerUnit in 'ServerContainerUnit.pas' {ServerContainer: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TServerContainer, ServerContainer);
  Application.Run;
end.

