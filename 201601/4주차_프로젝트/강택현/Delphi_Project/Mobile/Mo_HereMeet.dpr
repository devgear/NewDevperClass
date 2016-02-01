program Mo_HereMeet;

uses
  System.StartUpCopy,
  FMX.Forms,
  M_Main in 'M_Main.pas' {Form3},
  M_DataModule in 'M_DataModule.pas' {DataModule1: TDataModule},
  M_Main_Class in 'M_Main_Class.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
