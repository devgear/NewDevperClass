unit UChart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, TeEngine, Series, ExtCtrls, TeeProcs, Chart, DBChart, StdCtrls;

type
  TChart = class(TFrame)
    DBChart1: TDBChart;
    Series1: TPieSeries;
    ComboBox1: TComboBox;
    procedure btnClick(Sender: TObject);
    procedure ComboBox1Enter(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
chart:TChart;
sql:string;

implementation

uses USales, Udm;
var
btn:TButton;

{$R *.dfm}

procedure TChart.btnClick(Sender: TObject);
begin
  btn.Visible:=false;
  dm.SalseChartQuery.Close;
  dm.SalseChartQuery.DataSet.Params[0].AsString := '돼지고기';
  dm.SalseChartQuery.Open;
  DBChart1.Title.Text.Text:='돼지고기 판매율';
end;

procedure TChart.ComboBox1Change(Sender: TObject);
begin
  dm.SalseChartQuery.Close;
  dm.SalseChartQuery.DataSet.Params[0].AsString := ComboBox1.Text;
  dm.SalseChartQuery.Open;
  DBChart1.Title.Text.Text:=ComboBox1.Text+' 판매율';
end;

procedure TChart.ComboBox1Enter(Sender: TObject);
var
i:integer;
begin
  ComboBox1.clear;
  sql := 'select C_TYPE from commodity group by C_TYPE';
  dm.CommodityQuery.Close;
  dm.CommodityQuery.DataSet.CommandText := sql;
  dm.CommodityQuery.Open;
  dm.CommodityQuery.FindFirst;
  for i := 1 to dm.CommodityQuery.RecordCount do
  begin
    ComboBox1.Items.add(dm.CommodityQuery.FieldByName('C_TYPE').AsString);
    dm.CommodityQuery.FindNext;
  end;
  ComboBox1.Text := '';
end;

end.
