program travel_Vcl;

uses
  Vcl.Forms,
  Vcl_Main in 'Vcl_Main.pas' {MainForm},
  DM_Vcl in 'DM_Vcl.pas' {DM: TDataModule},
  Vcl_Rest in 'Vcl_Rest.pas' {R_Form},
  Vcl_Sights in 'Vcl_Sights.pas' {S_Form},
  Vcl_SBoard in 'Vcl_SBoard.pas' {SB_Form},
  Vcl_RBoard in 'Vcl_RBoard.pas' {RB_Form},
  Vcl_Sights_Add in 'Vcl_Sights_Add.pas' {SA_Form},
  UClientclass_Vcl in 'UClientclass_Vcl.pas',
  Vcl_Rest_Add in 'Vcl_Rest_Add.pas' {RA_Form};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TRA_Form, RA_Form);
  Application.Run;
end.
