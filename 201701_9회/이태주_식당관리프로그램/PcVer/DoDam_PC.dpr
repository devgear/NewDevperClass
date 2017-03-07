program DoDam_PC;

uses
  Vcl.Forms,
  PC_MainFrm in 'PC_MainFrm.pas' {FrmMain},
  PC_TableFrm in 'PC_TableFrm.pas' {frmHall},
  PC_CalculFrm in 'PC_CalculFrm.pas' {FrmCalcul},
  Vcl.Themes,
  Vcl.Styles,
  PC_Dm in 'PC_Dm.pas' {Dm_PC: TDataModule},
  PC_AccountDiaryFrm in 'PC_AccountDiaryFrm.pas' {FrmAccountDiary},
  Unit2 in 'Unit2.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.CreateForm(TfrmHall, frmHall);
  Application.CreateForm(TDm_PC, Dm_PC);
  Application.CreateForm(TFrmCalcul, FrmCalcul);
  Application.CreateForm(TFrmAccountDiary, FrmAccountDiary);
  Application.Run;
end.
