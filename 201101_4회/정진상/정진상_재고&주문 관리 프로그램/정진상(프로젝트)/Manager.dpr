program Manager;

uses
  Forms,
  Umain in 'Umain.pas' {Mainform},
  Udm in 'Udm.pas' {dm: TDataModule},
  Uorder in 'Uorder.pas' {orderform},
  Uproduct in 'Uproduct.pas' {productform},
  Ulogin in 'Ulogin.pas' {loginform},
  Usale in 'Usale.pas' {saleform},
  Uordering in 'Uordering.pas' {orderingform};

{$R *.res}

begin
  Application.Initialize;
 // Application.ShowMainForm := False;
  LoginCheck;
  LoginThread.Waitfor;
  //LoginForm := TLoginForm.Create(nil);
  //LoginForm.showmodal;
  if start then
    begin
      Application.MainFormOnTaskbar := True;
      Application.CreateForm(TMainform, Mainform);
  Application.CreateForm(Tdm, dm);
  Application.Run;
    end;

end.
