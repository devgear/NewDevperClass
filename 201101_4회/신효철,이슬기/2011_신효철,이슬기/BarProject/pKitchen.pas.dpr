program pKitchen.pas;

uses
  Forms,
  uCntFms in 'uCntFms.pas' {CounterFrame: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Run;
end.
