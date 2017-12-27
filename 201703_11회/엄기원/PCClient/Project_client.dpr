program Project_client;

uses
  Vcl.Forms,
  Client_login in 'Client_login.pas' {Form_client_main},
  Client_Module in 'Client_Module.pas' {ClientModule1: TDataModule},
  Client_New_User in 'Client_New_User.pas' {Form_newuser},
  Unit3 in 'Unit3.pas',
  Client_fun in 'Client_fun.pas' {Form_fun},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10 SlateGray');
  Application.CreateForm(TForm_client_main, Form_client_main);
  Application.CreateForm(TClientModule1, ClientModule1);
  Application.Run;
end.
