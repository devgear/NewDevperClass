program Cproject;

uses
  Forms,
  Cmain in 'Cmain.pas' {MainForm},
  Udm in 'Udm.pas' {DM: TDataModule},
  Ucus in 'Ucus.pas' {CusForm},
  URental in 'URental.pas' {RentalForm},
  UReservation in 'UReservation.pas' {RevForm},
  Uclientclass in 'Uclientclass.pas',
  Usearch in 'Usearch.pas' {searchform},
  Udisrent in 'Udisrent.pas' {DisForm},
  UReturn in 'UReturn.pas' {ReturnForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
