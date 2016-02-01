program Flower_Server_Project;

uses
  FMX.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  Flower_Server in 'Flower_Server.pas' {Form1},
  Flower_ServerMethods in 'Flower_ServerMethods.pas' {FlowerServerMethods: TDSServerModule},
  Flower_ServerContainer in 'Flower_ServerContainer.pas' {FlowerServerContainer: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFlowerServerContainer, FlowerServerContainer);
  Application.Run;
end.

