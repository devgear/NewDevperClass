program Pds;

uses
  Forms,
  Udsmain in 'Udsmain.pas' {MainForm},
  Uds_dm in 'Uds_dm.pas' {dm: TDataModule},
  ULogin in 'ULogin.pas' {LoginForm},
  Uinsert in 'Uinsert.pas' {insertForm},
  Uusersearch in 'Uusersearch.pas' {RecvListForm},
  USearch in 'USearch.pas' {SearchForm};

{$R *.res}

begin
	Application.Initialize;
	Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tdm, dm);
  LoginForm := TLoginForm.Create(Application);
	LoginForm.ShowModal;
	if LoginForm.getChecked then
	begin
		Application.CreateForm(TMainForm, MainForm);
		LoginForm.Free;
		Application.Run;
	end
	else
	begin
		LoginForm.Free;
		Application.Terminate;
	end;

end.
