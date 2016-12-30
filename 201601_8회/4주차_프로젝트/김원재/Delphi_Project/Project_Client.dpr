program Project_Client;

uses
  Vcl.Forms,
  Main_Client in 'Main_Client.pas' {Form3},
  Main_Class in 'Main_Class.pas',
  Main_Calender in 'Main_Calender.pas' {Main_Form},
  SERCH in 'SERCH.pas' {Form1},
  Room_Info in 'Room_Info.pas' {RoomInfo_Form},
  MoDule1 in 'MoDule1.pas' {DM: TDataModule},
  Vcl.Themes,
  Vcl.Styles,
  Main_home in 'Main_home.pas' {Form6},
  RESERCH in 'RESERCH.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Emerald Light Slate');
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
