program Mobile;

uses
  System.StartUpCopy,
  FMX.Forms,
  Umain_Mobile in 'Umain_Mobile.pas' {UserMF},
  UDm in 'UDm.pas' {Dm: TDataModule},
  UClientClass in 'UClientClass.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TUserMF, UserMF);
  Application.CreateForm(TDm, Dm);
  Application.Run;
end.
