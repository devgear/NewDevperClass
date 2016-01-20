program Project2;

uses
  Vcl.Forms,
  Unit3 in 'Unit3.pas' {Form3},
  Unit7 in 'Unit7.pas' {Form7},
  Unit8 in 'Unit8.pas' {DataModule8: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDataModule8, DataModule8);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
