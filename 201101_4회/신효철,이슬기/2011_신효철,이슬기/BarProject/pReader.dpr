program pReader;

uses
  Forms,
  uReaderMain in 'uReaderMain.pas' {Readerfrm},
  uCntFms in 'uCntFms.pas' {CounterFrame: TFrame},
  uReaderDM in 'uReaderDM.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TReaderfrm, Readerfrm);
  Application.Run;
end.
