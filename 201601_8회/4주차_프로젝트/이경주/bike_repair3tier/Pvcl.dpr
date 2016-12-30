program Pvcl;

uses
  Vcl.Forms,
  bike_repair_vcl in 'bike_repair_vcl.pas' {bike_vcl},
  bike_dm in 'bike_dm.pas' {dm1: TDataModule},
  Unit2 in 'Unit2.pas',
  repairman_management in 'repairman_management.pas' {RepairMan},
  user_managerment in 'user_managerment.pas' {user},
  repair_list in 'repair_list.pas' {Repairlist},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Amethyst Kamri');
  Application.CreateForm(Tbike_vcl, bike_vcl);
  Application.CreateForm(Tdm1, dm1);
  Application.CreateForm(TRepairMan, RepairMan);
  Application.CreateForm(Tuser, user);
  Application.CreateForm(TRepairlist, Repairlist);
  Application.Run;
end.
