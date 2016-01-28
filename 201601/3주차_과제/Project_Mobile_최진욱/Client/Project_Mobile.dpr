program Project_Mobile;

uses
  System.StartUpCopy,
  FMX.Forms,
  UMain_Mobile in 'UMain_Mobile.pas' {Form2},
  UDM in 'UDM.pas' {DM: TDataModule},
  UClass in 'UClass.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
