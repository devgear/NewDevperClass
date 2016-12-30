unit USales;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, FMTBcd, DB, SqlExpr, ComCtrls, Grids, DBGrids,
  OleAuto;

type
  TSales = class(TFrame)
    Panel1: TPanel;
    Panel2: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    DBGrid1: TDBGrid;
    DateTimePicker1: TDateTimePicker;
    ComboBox1: TComboBox;
    SQLStoredProc1: TSQLStoredProc;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure ComboBox1Enter(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure SaveExcel;
    procedure check;
  private

    { Private declarations }
  public
    { Public declarations }
  end;

var
  Sales: TSales;
  TD: TTransactionDesc;

implementation

uses Udm;

{$R *.dfm}

procedure TSales.Button1Click(Sender: TObject);
begin

  try
    with SQLStoredProc1 do
    begin
      params[0].AsInteger := StrToInt(Edit1.Text);
      params[1].AsInteger := StrToInt(Edit2.Text);
      params[2].AsDate := DateTimePicker1.Date;
      params[3].AsInteger := StrToInt(ComboBox1.Text);
      execproc;
      SaveExcel;
      dm.SalseQuery.Refresh;
    end;
  except
    check;
  end;
end;

procedure TSales.Button2Click(Sender: TObject);
begin
  dm.SQLConnection1.StartTransaction(TD);
  try
    dm.SalseQuery.UpdateRecord;
    dm.SalseQuery.ApplyUpdates(-1);
    dm.SQLConnection1.commit(TD)
  except
    check;
    dm.SQLConnection1.Rollback(TD);
  end;

end;

procedure TSales.Button3Click(Sender: TObject);
begin
  dm.SQLConnection1.StartTransaction(TD);
  try
    dm.SalseQuery.Delete;
    dm.SalseQuery.ApplyUpdates(-1);
    dm.SQLConnection1.commit(TD)
  except
    raise Exception.Create('삭제 에러');
    dm.SQLConnection1.Rollback(TD);
  end;
end;

procedure TSales.check;
begin
  if Edit1.Text='' then
    ShowMessage('판매번호를 입력하세요')
  else if edit2.Text='' then
    ShowMessage('판매금액을 입력하세요');
end;

procedure TSales.ComboBox1Enter(Sender: TObject);
var
  I: INTEGER;
  sql: string;
begin
  ComboBox1.clear;
  sql := 'select C_CODE from commodity';
  dm.CommodityQuery.Close;
  dm.CommodityQuery.DataSet.CommandText := sql;
  dm.CommodityQuery.Open;
  dm.CommodityQuery.FindFirst;
  for I := 1 to dm.CommodityQuery.RecordCount do
  begin
    ComboBox1.Items.add(dm.CommodityQuery.FieldByName('C_CODE').asString);
    dm.CommodityQuery.FindNext;
  end;
end;

procedure TSales.SaveExcel;
var
  xlWk, xlSheet, xlAppl: Olevariant;
  filepath:string;
  i, j, ip_index: INTEGER;
begin
  xlAppl := createoleobject('excel.application');
  filepath:=ExtractFileDir(Application.ExeName)+'\'+  DateToStr(Now) +'판매금.xls';
  xlWk:=xlAppl.workbooks.add;
  xlSheet:=xlWk.worksheets.add;

  xlSheet.name:='종합결과';

  xlSheet.cells[1,1].value:='a';
  xlSheet.cells[1,2].value:='b';
  xlSheet.cells[1,3].value:='c';
  xlSheet.cells[1,4].value:='d';

  dm.SalseQuery.Close;
  dm.SalseQuery.Open;
  dm.SalseQuery.FindFirst;

  for I := 2 to dm.SalseQuery.RecordCount do
  begin
    xlSheet.cells[I, 1].value := dm.SalseQuery.FieldByName('S_CODE').AsString;
    xlSheet.cells[I, 2].value := dm.SalseQuery.FieldByName('S_MONEY').AsString;
    xlSheet.cells[I, 3].value := dm.SalseQuery.FieldByName('S_DATA').AsString;
    xlSheet.cells[I, 4].value := dm.SalseQuery.FieldByName('C_CODE').AsString;
    dm.SalseQuery.FindNext;
  end;
  try
    if FileExists(filepath) then
    DeleteFile(filepath);
    xlAppl.workbooks.add;
    xlWk.SaveAs(filepath);
    xlAppl.DisplayAlerts:=False;
    xlWk.close;
  except
    raise Exception.Create('엑셀저장 에러');
  end;

end;

end.
