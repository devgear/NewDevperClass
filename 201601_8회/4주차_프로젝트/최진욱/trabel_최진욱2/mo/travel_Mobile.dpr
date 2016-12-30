program travel_Mobile;

uses
  System.StartUpCopy,
  FMX.Forms,
  UClientclass in 'UClientclass.pas',
  DM_Mobile in 'DM_Mobile.pas' {DM: TDataModule},
  mobile in 'mobile.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
