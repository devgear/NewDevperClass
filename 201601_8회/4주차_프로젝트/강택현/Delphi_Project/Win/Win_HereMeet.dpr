program Win_HereMeet;

uses
  Vcl.Forms,
  W_Main in 'W_Main.pas' {Form1},
  W_DataModule in 'W_DataModule.pas' {DataModule2: TDataModule},
  W_Main_Class in 'W_Main_Class.pas',
  Chat_Room in 'Chat_Room.pas' {Form4},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Sky');
  Application.CreateForm(TDataModule2, DataModule2);
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.
