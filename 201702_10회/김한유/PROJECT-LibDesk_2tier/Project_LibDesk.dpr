program Project_LibDesk;

uses
  Vcl.Forms,
  Main in 'Main.pas' {MainForm},
  InsertMember in 'InsertMember.pas' {InsertForm},
  FindLib in 'FindLib.pas' {FindForm},
  DataAccessModule in 'DataAccessModule.pas' {DataAccess: TDataModule},
  Login in 'Login.pas' {LoginForm},
  MemManage in 'MemManage.pas' {MemForm},
  RentSeat in 'RentSeat.pas' {SeatForm},
  MyReserve in 'MyReserve.pas' {MyReserveForm},
  MyPage in 'MyPage.pas' {MyForm},
  MyMessenger in 'MyMessenger.pas' {MsgForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDataAccess, DataAccess);
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TMsgForm, MsgForm);
  Application.Run;
end.
