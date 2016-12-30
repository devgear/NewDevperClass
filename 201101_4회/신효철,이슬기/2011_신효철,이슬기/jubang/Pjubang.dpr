program Pjubang;

uses
  Forms,
  ujubang in 'ujubang.pas' {jubang},
  uBarDM in 'uBarDM.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tjubang, jubang);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
