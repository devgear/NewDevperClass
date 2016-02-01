program Project_Manager;

uses
  Vcl.Forms,
  UManager_Dm in 'UManager_Dm.pas' {DM: TDataModule},
  Vcl.Themes,
  Vcl.Styles,
  UManager_Main in 'UManager_Main.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Light');
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
