unit uRsrvListFms;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ExtCtrls, uCntFms, jpeg;

type
  TRvFrm = class(TForm)
    Panel21: TPanel;
    Panel2: TPanel;
    ResvDBGrid: TDBGrid;
    Timer: TTimer;
    Image1: TImage;
    lblTimer: TLabel;
    Image2: TImage;
    Label10: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TimerTimer(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Panel21Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RvFrm: TRvFrm;

implementation

uses uBarDM;

{$R *.dfm}

procedure TRvFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  RvFrm.Free;
end;

procedure TRvFrm.FormCreate(Sender: TObject);
begin
  with DM.ResvQuery do
  begin
    Close;
    dataset.Params[0].AsDateTime := Date;
    Open;
  end;
end;

procedure TRvFrm.Panel21Click(Sender: TObject);
begin
  with DM.BarQuery do
  begin
    DM.ResvQuery.Delete;
    DM.ResvQuery.ApplyUpdates(-1);
  end;
end;

procedure TRvFrm.Panel2Click(Sender: TObject);
begin
  Close;
end;

procedure TRvFrm.TimerTimer(Sender: TObject);
begin
  lblTimer.Caption := FormatDateTime('yyyy-mmmm-dd dddd hh:nn:ss am/pm', now);
end;

end.
