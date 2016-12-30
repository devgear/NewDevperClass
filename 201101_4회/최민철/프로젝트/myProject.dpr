program myProject;

uses
  Forms,
  Windows,
  Umain in 'Umain.pas' {mainform},
  Udm in 'Udm.pas' {dm: TDataModule},
  dbtables,
  UVendors in 'UVendors.pas' {Vendors: TFrame},
  Ucommodity in 'Ucommodity.pas' {Commodity: TFrame},
  USales in 'USales.pas' {Sales: TFrame},
  UChart in 'UChart.pas' {Chart: TFrame},
  Ulist in 'Ulist.pas' {Frame1: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(Tmainform, mainform);
  //  loginform := Tloginform.Create(Application);
//  loginform.ShowModal;
//
//  if loginform.i then
//  begin
//    Application.CreateForm(Tmainform, mainform);
//    loginform.Free;
//    Application.Run;
//  end
//  else
//  begin
//    loginform.Free;
//    Application.Terminate;
//  end;
  Application.Run;

end.
