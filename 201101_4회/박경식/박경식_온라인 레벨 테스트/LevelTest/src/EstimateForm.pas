unit EstimateForm;

interface

uses
  Activex,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, BaseGrid, AdvGrid;

type
  TfrEstimate = class(TForm)
    btEstimate: TButton;
    Memo1: TMemo;
    RadioGroup1: TRadioGroup;
    Memo2: TMemo;
    btEstimateClose: TButton;
    Label1: TLabel;
    AdvStringGrid1: TAdvStringGrid;
    Label2: TLabel;
    AdvStringGrid2: TAdvStringGrid;
    procedure btEstimateCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frEstimate: TfrEstimate;
  GuId: TGuid;

implementation

{$R *.dfm}

procedure TfrEstimate.btEstimateCloseClick(Sender: TObject);
begin
  frEstimate.Close;
  cocreateguid(GuId);
end;

procedure TfrEstimate.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;

end;

end.
