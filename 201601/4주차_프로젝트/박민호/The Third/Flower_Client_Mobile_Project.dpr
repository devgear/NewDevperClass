program Flower_Client_Mobile_Project;

uses
  System.StartUpCopy,
  FMX.Forms,
  Flower_DataModule_Mobile in 'Flower_DataModule_Mobile.pas' {DataModule2: TDataModule},
  Unit1 in 'Unit1.pas',
  Flower_Main_Mobile in 'Flower_Main_Mobile.pas' {Reservation_Mobile_Form};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDataModule2, DataModule2);
  Application.CreateForm(TReservation_Mobile_Form, Reservation_Mobile_Form);
  Application.Run;
end.
