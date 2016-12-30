program Psales;

uses
  Forms,
  uSalesInfoFms in 'uSalesInfoFms.pas' {SalesFrm},
  uDM in 'uDM.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TSalesFrm, SalesFrm);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
