unit Ugo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Uop, Utitle, ExtCtrls, uroom, StdCtrls, Buttons, ImgList;

type
  Tgoroom = class(TForm)
    def: TPanel;
    sidedef: TPanel;
    tatlePanel: TPanel;
    Roombt: TBitBtn;
    moneybt: TBitBtn;
    pubbt: TBitBtn;
    scbt: TBitBtn;
    procedure RoombtClick(Sender: TObject);
    procedure moneybtClick(Sender: TObject);
    procedure scbtClick(Sender: TObject);
    procedure pubbtClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  goroom: Tgoroom;
  roomcreate: Tframe2;

implementation

uses udm, usales, Ucalendar, Umonth, Uroomside, uitems, ucreateroom;

{$R *.dfm}

procedure Tgoroom.moneybtClick(Sender: TObject);
var
  i, j: byte;
  moneycreate: Tframe4; // 매출현황 화면
begin
  // 컴포넌트(여기서 프레임)가 떠있는 수에서 if문으로 체크한후 떠있는 프레임을 내린다.
  for i := componentcount - 1 downto 0 do
    if components[i] is tframe then
      (components[i] as tframe).free;
    // 프레임4를 goroom화면중 def화면에 위와 옆을 맞춰서 나타낸다.
  moneycreate := Tframe4.Create(goroom);
  dm.crt.First;
  for j := 1 to dm.crt.RecordCount do
  moneycreate.Parent := goroom;
  moneycreate.Top := goroom.def.Top;
  moneycreate.Left := goroom.def.Left;
end;

procedure Tgoroom.pubbtClick(Sender: TObject);
var
  i, j: byte;
  itemcreate: titemsframe; // 물품 화면
begin
  // 컴포넌트(여기서 프레임)가 떠있는 수에서 if문으로 체크한후 떠있는 프레임을 내린다.
  for i := componentcount - 1 downto 0 do
    if components[i] is tframe then
      (components[i] as tframe).free;
    // 프레임2를 goroom화면중 def화면에 위와 옆을 맞춰서 나타낸다.

  itemcreate := titemsframe.Create(goroom);
  itemcreate.itemStringGrid.RowCount := dm.items.RecordCount + 2;

  with itemcreate.itemStringGrid do
  begin
    Cells[0, 0] := '목록';
    Cells[1, 0] := '지출금';
    Cells[2, 0] := '개수';
    Cells[3, 0] := '총합';
    for j := 1 to dm.items.RecordCount do
    begin
      Cells[0, j] := '';
      Cells[1, j] := '';
      Cells[2, j] := '';
      Cells[3, j] := '';
    end;
    dm.items.First;
    for j := 1 to dm.items.RecordCount do
    begin
      Cells[0, j] := dm.items.FieldByName('iname').AsString;
      Cells[1, j] := dm.items.fieldbyname('exp').AsString;
      Cells[2, j] := dm.items.fieldbyname('ta').AsString;
      Cells[3, j] := dm.items.fieldbyname('total').AsString;
      dm.items.Next;
    end;
  end;
  itemcreate.Parent := goroom;
  itemcreate.Top := goroom.def.Top;
  itemcreate.Left := goroom.def.Left;




end;

procedure Tgoroom.RoombtClick(Sender: TObject);
begin
  crroomform := tcrroomform.Create(goroom);
  crroomform.Show;
end;

procedure Tgoroom.scbtClick(Sender: TObject);
var
  i: byte;
  calcreate: tframe5; // 달력화면
begin
  // 컴포넌트(여기서 프레임)가 떠있는 수에서 if문으로 체크한후 떠있는 프레임을 내린다.
  for i := componentcount - 1 downto 0 do
    if components[i] is tframe then
      (components[i] as tframe).free;
    // 프레임5를 goroom화면중 def화면에 위와 옆을 맞춰서 나타낸다.
    calcreate := tframe5.Create(goroom);
  calcreate.Parent := goroom;
  calcreate.Top := goroom.def.Top;
  calcreate.Left := goroom.def.Left;
end;

end.
