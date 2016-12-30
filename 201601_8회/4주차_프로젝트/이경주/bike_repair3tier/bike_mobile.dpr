program bike_mobile;

uses
  System.StartUpCopy,
  FMX.Forms,
  Ubike_mobile in 'Ubike_mobile.pas' {Form3},
  Umobile_dm in 'Umobile_dm.pas' {dm: TDataModule},
  Unit7 in 'Unit7.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
