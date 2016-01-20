program ProjectManagement;

uses
  Vcl.Forms,
  UMain in 'UMain.pas' {MainForm},
  UMember in 'UMember.pas' {MemForm},
  UDept in 'UDept.pas' {DeptForm},
  UPorject in 'UPorject.pas' {ProForm},
  Vcl.Themes,
  Vcl.Styles,
  UChart_Frame in '..\메모장&클라이언트서버프로그램\UChart_Frame.pas' {Chart_Frame: TFrame},
  UDM in 'UDM.pas' {DataModule1},
  UCalender in 'UCalender.pas' {CalForm},
  UProma in 'UProma.pas' {PromaForm},
  USplash in 'USplash.pas' {SplashForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Carbon');
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TSplashForm, SplashForm);
  Application.Run;
end.
