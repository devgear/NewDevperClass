unit Usale;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, FMTBcd, DB, SqlExpr, ExtCtrls, DBGrids, StdCtrls, DBClient,
  SimpleDS;

type
  Tsaleform = class(TForm)
    sumquery: TSQLQuery;
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Button1: TButton;
    monthComboBox: TComboBox;
    Label1: TLabel;
    Edit1: TEdit;
    totalpricequery: TSQLQuery;
    Label2: TLabel;
    Label3: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure monthComboBoxChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    //procedure FormCreate(Sender: TObject);
    //procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  saleform: Tsaleform;

implementation

uses Udm;

{$R *.dfm}

{procedure Tsaleform.FormCreate(Sender: TObject);
var
  i : byte;
begin
  with stringgrid1 do
  begin
    rowcount := dm.sale.RecordCount +2;
    cells[0,0] := '주문번호';
    cells[1,0] := '책코드';
    cells[2,0] := '책종류';
    cells[3,0] := '책이름';
    cells[4,0] := '서점코드';
    cells[5,0] := '서점이름';
    cells[6,0] := '수량';
    cells[7,0] := '판매액';
    cells[8,0] := '판매일자';
    for i :=1 to dm.sale.RecordCount + 1 do
    begin
      cells[0,i] := '';
      cells[1,i] := '';
      cells[2,i] := '';
      cells[3,i] := '';
      cells[4,i] := '';
      cells[5,i] := '';
      cells[6,i] := '';
      cells[7,i] := '';
      cells[8,i] := '';
    end;
    dm.sale.First;
    for i :=1 to dm.sale.RecordCount do
    begin
      cells[0,i] := dm.sale.FieldByName('o_num').AsString;
      cells[1,i] := dm.sale.FieldByName('b_code').AsString;
     // totquery.Close;
     // totquery.Params[0].AsString := dm.dept.FieldByName('code').AsString; //현재 보고 있는..
     // totquery.Open;
      cells[2,i] := dm.sale.FieldByName('s_bkind').AsString;
      cells[3,i] := dm.sale.FieldByName('s_bname').AsString;
      cells[4,i] := dm.sale.FieldByName('s_brchcode').AsString;
      cells[5,i] := dm.branch.FieldByName('brch_name').AsString;
      cells[6,i] := dm.sale.FieldByName('s_vol').AsString+'EA';
      cells[7,i] := dm.sale.FieldByName('s_price').AsString+'원';
      cells[8,i] := dm.sale.FieldByName('s_date').AsString;
      //cells[7,i] := sumquery.FieldByName('total').AsString;
      dm.sale.Next;
    end;
    cells[0,i] := '총판매액';
    sumquery.Close;
    sumquery.Params[0].AsString := '%';
    sumquery.Open;
    cells[7,i] := sumquery.FieldByName('total').AsString+'    원';
  end;
end;     }

procedure Tsaleform.Button1Click(Sender: TObject);
begin
  close;
end;

procedure Tsaleform.monthComboBoxChange(Sender: TObject);
var
startday,endday :tdatetime;
Year,yy, Month, Day:word;
days:integer;
const
  DaysInMonth: array[1..12] of Integer = (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
begin
  SysUtils.DecodeDate(now, Year, month, Day);
   yy:= Year;

   days := daysinmonth[monthcombobox.ItemIndex+1] ;

   startday := sysutils.EncodeDate(yy, monthcombobox.ItemIndex+1, 1);
   endday := sysutils.EncodeDate(yy, monthcombobox.ItemIndex+1, days);

 dm.salequery.Filtered :=true;
 dm.salequery.Filter := 'orderdate >=' + datetimetostr(startday) + ' and orderdate <=' + datetimetostr(endday);

end;

procedure Tsaleform.FormActivate(Sender: TObject);
begin
  with totalpricequery do
  begin
    sql.Clear;
    sql.Text := 'Select sum("totalprice") "totalprice" from "orders" where "o_complete" = 1';
    Open;
    edit1.Text := formatfloat('#,##0', fieldbyname('totalprice').AsInteger);
  end;

end;

procedure Tsaleform.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

end.
