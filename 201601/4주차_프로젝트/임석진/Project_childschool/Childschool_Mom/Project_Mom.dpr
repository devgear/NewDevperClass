program Project_Mom;

uses
  System.StartUpCopy,
  FMX.Forms,
  UMom in 'UMom.pas' {Form2},
  UMomDm in 'UMomDm.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
