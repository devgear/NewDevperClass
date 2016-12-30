program BookProject;

uses
  Vcl.Forms,
  BookMain in 'BookMain.pas' {MainForm},
  Join in 'Join.pas' {JoinForm},
  NewBook in 'NewBook.pas' {NewBookForm},
  Vcl.Themes,
  Vcl.Styles,
  Rental in 'Rental.pas' {RentalForm},
  Return in 'Return.pas' {ReturnForm},
  BookDel in 'BookDel.pas' {BookDelForm},
  MemberDel in 'MemberDel.pas' {MemberDelForm},
  Booking in 'Booking.pas' {BookingForm},
  RentalBook in 'RentalBook.pas' {RentalBookForm},
  BookDm in 'BookDm.pas' {DataModule1: TDataModule},
  MainRental in 'MainRental.pas' {MainRentelForm},
  CheckID in 'CheckID.pas' {CheckIDForm},
  UClient in 'UClient.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Aqua Graphite');
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
