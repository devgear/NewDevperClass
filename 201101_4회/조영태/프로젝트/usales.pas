unit usales;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, Grids, DBGrids, StdCtrls, ComCtrls;

type
  TFrame4 = class(TFrame)
    DBGrid1: TDBGrid;
    monthComboBox: TComboBox;
    monthLabel: TLabel;
    procedure monthComboBoxChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses udm;

{$R *.dfm}

procedure TFrame4.monthComboBoxChange(Sender: TObject);
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

 dm.crt.Filtered :=true;
 dm.crt.Filter := 'indate >=' + datetimetostr(startday) + ' and indate <=' + datetimetostr(endday);


end;

end.


