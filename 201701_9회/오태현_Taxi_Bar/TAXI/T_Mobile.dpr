program T_Mobile;

uses
  System.StartUpCopy,
  FMX.Forms,
  Umain_Mobile in 'Umain_Mobile.pas' {TaxiMF},
  UDm in 'UDm.pas' {Dm: TDataModule},
  UClientClass in 'UClientClass.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TTaxiMF, TaxiMF);
  Application.CreateForm(TDm, Dm);
  Application.Run;
end.
