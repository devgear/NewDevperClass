unit ProgressForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, TeEngine, ExtCtrls, TeeProcs, Chart;

type
  TfrProgress = class(TForm)
    btPrint: TButton;
    btProgressClose: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Chart1: TChart;
    procedure btProgressCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frProgress: TfrProgress;

implementation

{$R *.dfm}

procedure TfrProgress.btProgressCloseClick(Sender: TObject);
begin
  frProgress.close;
end;

procedure TfrProgress.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
