program Project;

uses
  Vcl.Forms,
  UPrjMain in 'UPrjMain.pas' {MainForm},
  UDm in 'UDm.pas' {Dm: TDataModule},
  Vcl.Themes,
  Vcl.Styles,
  UPrjSearch in 'UPrjSearch.pas' {PrjSearchForm},
  UMemSearch in 'UMemSearch.pas' {MemSearchForm},
  UDeptSearch in 'UDeptSearch.pas' {DeptSearchForm},
  UPrjMemSerch in 'UPrjMemSerch.pas' {PrjMSrForm},
  Usplash in 'Usplash.pas' {SplashForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  SplashForm := TsplashForm.create(Application);
  splashForm.show;
  splashForm.Refresh;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TDm, Dm);
  SplashForm.hide;
  SplashForm.free;
  Application.Run;
end.




