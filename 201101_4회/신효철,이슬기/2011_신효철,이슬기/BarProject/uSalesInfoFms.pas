unit uSalesInfoFms;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, TeEngine, ExtCtrls, TeeProcs, Chart, DBChart, Grids,
  DBGrids, StdCtrls, Series, Buttons;

type
  TSalesFrm = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    dtpOld: TDateTimePicker;
    dtpNow: TDateTimePicker;
    btnSalesInfo: TButton;
    DBGrid1: TDBGrid;
    DBChart1: TDBChart;
    Series1: TBarSeries;
    Panel1: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnSalesInfoClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SalesFrm: TSalesFrm;

implementation

uses uBarDM;

{$R *.dfm}

procedure TSalesFrm.btnSalesInfoClick(Sender: TObject);
begin

  dm.SalesDateQuery.Close;
  dm.SalesDateQuery.Dataset.Params[0].AsDate := dtpOld.Date;
  dm.SalesDateQuery.Dataset.Params[1].AsDate := dtpnow.Date;
  dm.SalesDateQuery.Open;

end;

procedure TSalesFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//  SalesFrm.Free;
end;

procedure TSalesFrm.FormCreate(Sender: TObject);
begin
  dtpNow.Date := Now;
end;

procedure TSalesFrm.SpeedButton1Click(Sender: TObject);
begin
  DBChart1.Page := DBChart1.NumPages;
end;

procedure TSalesFrm.SpeedButton2Click(Sender: TObject);
begin
  DBChart1.Page := 1;
end;

procedure TSalesFrm.SpeedButton3Click(Sender: TObject);
begin
  DBChart1.PreviousPage;
end;

procedure TSalesFrm.SpeedButton4Click(Sender: TObject);
begin
  DBChart1.NextPage;
end;

end.
