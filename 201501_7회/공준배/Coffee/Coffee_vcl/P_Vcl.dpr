program P_Vcl;

uses
  Vcl.Forms,
  Umain_Vcl in 'Umain_Vcl.pas' {PcForm},
  UDm in 'UDm.pas' {Dm: TDataModule},
  UClientClass in 'UClientClass.pas',
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Aqua Graphite');
  Application.CreateForm(TDm, Dm);
  Application.CreateForm(TPcForm, PcForm);
  Application.Run;
end.
