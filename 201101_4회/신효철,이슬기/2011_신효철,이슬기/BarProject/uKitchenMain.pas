unit uKitchenMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, uCntFms, ExtCtrls;

type
  TKitchenFrm = class(TForm)
    CounterFrame1: TCounterFrame;
    StringGrid1: TStringGrid;
    CounterFrame2: TCounterFrame;
    Panel21: TPanel;
    Panel1: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  KitchenFrm: TKitchenFrm;

implementation

{$R *.dfm}

end.
