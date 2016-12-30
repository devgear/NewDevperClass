program Project1;

uses
  Vcl.Forms,
  PROJECT in 'PROJECT.pas' {Form1},
  UDB in 'UDB.pas' {DM: TDataModule},
  UPro in 'UPro.pas' {ProForm},
  USa in 'USa.pas' {SaForm},
  UBu in 'UBu.pas' {BuForm},
  USplash in 'USplash.pas' {SplashForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  SplashForm := TsplashForm.create(Application);
  SplashForm.Show;
  SplashForm.Refresh;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TProForm, ProForm);
  SplashForm.Hide;
  SplashForm.free;
  Application.Run;
end.
