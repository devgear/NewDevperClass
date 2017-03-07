program jangnamgam;

uses
  Vcl.Forms,
  USubOrder in 'USubOrder.pas' {Form4},
  USub1 in 'USub1.pas' {FormSub},
  UMain in 'UMain.pas' {FormMain},
  Udata in 'Udata.pas' {DataModule5: TDataModule},
  CommonFunctions in 'CommonFunctions.pas',
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Cyan Dusk');
  Application.CreateForm(TDataModule5, DataModule5);
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
