program P_Mobile;

uses
  System.StartUpCopy,
  FMX.Forms,
  Umain_mobile in 'Umain_mobile.pas' {MobileForm},
  UDm in 'UDm.pas' {Dm: TDataModule},
  UClientClass in 'UClientClass.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDm, Dm);
  Application.CreateForm(TMobileForm, MobileForm);
  Application.Run;
end.
