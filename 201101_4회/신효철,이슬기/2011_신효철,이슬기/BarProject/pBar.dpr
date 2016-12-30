program pBar;

uses
  Forms,
  uCounterMain in 'uCounterMain.pas' {CntFrm},
  uRsrvListFms in 'uRsrvListFms.pas' {RvFrm},
  uSalesInfoFms in 'uSalesInfoFms.pas' {SalesFrm},
  uFoodListFms in 'uFoodListFms.pas' {FdFrm},
  uAdjustmentFms in 'uAdjustmentFms.pas' {AdjFrm},
  uBarDM in 'uBarDM.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TCntFrm, CntFrm);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
