program P_Client;

uses
  System.StartUpCopy,
  FMX.Forms,
  UMainForm in 'UMainForm.pas' {Form1},
  UDM in 'UDM.pas' {DM: TDataModule},
  serverMethods in 'serverMethods.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
