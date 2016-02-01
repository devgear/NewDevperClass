program PMobile_Client;

uses
  System.StartUpCopy,
  FMX.Forms,
  Umain in 'Umain.pas' {Form1},
  UDM in 'UDM.pas' {DM: TDataModule},
  ServerMethods in 'ServerMethods.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
