program Project_User;

uses
  System.StartUpCopy,
  FMX.Forms,
  UUser_Main in 'UUser_Main.pas' {Form2},
  UUser_Dm in 'UUser_Dm.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
