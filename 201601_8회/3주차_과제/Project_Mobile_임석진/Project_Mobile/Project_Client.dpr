program Project_Client;

uses
  System.StartUpCopy,
  FMX.Forms,
  UClient_Main in 'UClient_Main.pas' {Form2},
  UClient_DM in 'UClient_DM.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
