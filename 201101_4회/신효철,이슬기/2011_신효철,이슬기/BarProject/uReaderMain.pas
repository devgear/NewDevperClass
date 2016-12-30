unit uReaderMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DBCtrls, Buttons, Grids, jpeg;

type
  StockArray = Array[0..20] of String;
  TReaderfrm = class(TForm)
    Image1: TImage;
    cbRoomNum: TComboBox;
    cbOrderMenu: TComboBox;
    sgOrderList: TStringGrid;
    pnlReset: TPanel;
    pnlOrder: TPanel;
    pnlOrderList: TPanel;
    cbOrderCount: TComboBox;
    MenuTimer: TTimer;
    RoomTimer: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbOrderMenuSelect(Sender: TObject);
    procedure sgOrderListClick(Sender: TObject);
    procedure cbOrderCountClick(Sender: TObject);
    procedure pnlResetClick(Sender: TObject);
    procedure cbOrderMenuClick(Sender: TObject);
    procedure pnlOrderClick(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

procedure GetOrderMenu;
var
  Readerfrm: TReaderfrm;
  strStock: StockArray; //재고없는 음식명을 담을 배열
implementation

uses uReaderDM;
var
  i, intRowCount: Integer;
  iCountRowInfo: Integer; // 콤보상자에서 수량의 값이 바뀔 때 해당 음식정보의 Row값.
{$R *.dfm}

procedure GetOrderMenu;
begin
  // FOOD 테이블을 통해 주문음식 리스트를 단말기에 뿌린다.
  with DM.ReaderQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from Food_INFO where f_check = 1 order by F_NUM');
    Open;

    First;
    for i := 0 to (RecordCount - 1) do
    begin
      Readerfrm.cbOrderMenu.Items.Add(FieldByName('f_name').AsString);
      next;
    end;{for문}
  end;{with~do문}
end;

procedure TReaderfrm.cbOrderCountClick(Sender: TObject);
begin
  sgOrderList.Cells[1,iCountRowInfo] := IntToStr(cbOrderCount.ItemIndex + 1);
end;

procedure TReaderfrm.cbOrderMenuClick(Sender: TObject);
begin
  MenuTimer.OnTimer := TimerTimer;
  if cbRoomNum.ItemIndex = -1 then
  begin
    ShowMessage('방번호를 선택해야 주문이 가능합니다!');
    cbRoomNum.SetFocus;
  end;
  MenuTimer.OnTimer := Nil;
end;

procedure TReaderfrm.cbOrderMenuSelect(Sender: TObject);
var
  iFoodNum: Integer;       //컴보박스에서 선택한 음식의 itemIndex값
  intFTTemp: Integer;      //등록된 상품이 있는지의 여부
  strFoodName: string;
  intRowNumTemp: Integer;  //해당 상품의 row값.
begin
  iFoodNum := (Sender as TComboBox).ItemIndex;
  strFoodName := (Sender as TComboBox).Items[iFoodNum];

  intFTTemp := 0;

  for i:=1 to sgOrderList.RowCount + 1 do
  begin
    if strFoodName = sgOrderList.Cells[0,i] then
    begin
      intFTTemp := 1;    //이미 상품이 등록되어있다는 의미.
      intRowNumTemp := i;
      break;             //상품등록여부를 체크했으니 빠져나간다.
    end
    else
      intFTTemp := 0;   //상품이 등록되어있지 않다는 의미.
  end;{for문}

  //위의 체크여부에 따라 상품리스트에 등록.
  with sgOrderList do
  begin
    if intFTTemp = 1 then              // 1.이미 상품이 등록되어있으면 수량증가.
    begin
      Cells[1,intRowNumTemp] := IntToStr(StrToInt(Cells[1,intRowNumTemp])+1);                  //수량
    end
    else
    begin   // 2.새로운 상품을 리스트에 등록.
      RowCount := intRowCount + 1;                    //표의 열수 늘리기.
      Cells[0,intRowCount] := strFoodName;            //음식이름
      Cells[1,intRowCount] := IntToStr(1);            //수량
      Inc(intRowCount);
    end;
  end;{if~else문}
end;

procedure TReaderfrm.FormCreate(Sender: TObject);
begin
  DM.SQLConnection.Connected := True;
  intRowCount := 1;
end;

procedure TReaderfrm.FormShow(Sender: TObject);
var
  strTemp: String;
begin
  GetOrderMenu; // 음식정보테이블에서 재고가 있는 음식의 정보를 단말기의 메뉴얼에 뿌린다.
  with sgOrderList do
  begin
    Cells[0,0] := '주문음식 리스트';
    Cells[1,0] := '수량';
    RowCount := 1;
  end;
end;

procedure TReaderfrm.pnlOrderClick(Sender: TObject);
var
  iSlipNum: Integer;
  osNum: Integer;
  oNum: Integer;
  strFoodTemp: String;
  iFoodNum: Integer;
  iStockCheck: Integer;
begin
  //주문테이블에 주문정보를 저장하기 앞서 방번호를 선택했는지 확인한다.
  if cbRoomNum.ItemIndex = -1 then
  begin
    ShowMessage('주문 전에 방번호를 선택하세요.');
    cbRoomNum.SetFocus;
  end
  else
  begin
    with DM.ReaderQuery do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select Max(slip_num) as slip_num from ORDER_SALES');
      SQL.Add('where open_date = :Popen_date and table_num = :Ptable_num');
      SQL.Add('Group by open_date ');
      ParamByName('Popen_date').AsDateTime := Date;
      ParamByName('PTable_num').AsInteger := cbRoomNum.ItemIndex + 1; //os_num도 같이 select 하면 DBError(invalid colum reference)가 나서 따로 돌림.
      Open;

      iSlipNum := FieldByName('slip_num').AsInteger; //전표번호

      Close;
      SQL.Clear;
      SQL.Add('select os_num from ORDER_SALES');
      SQL.Add('where open_date = :popen_date and slip_num = :Pslip_num');
      ParamByName('Popen_date').AsDateTime := Date;
      ParamByName('Pslip_num').AsInteger := iSlipNum;
      Open;

      osNum := FieldByName('os_num').AsInteger;

      Close;
      SQL.Clear;
      SQL.Add('select Max(o_num) as o_num from ORDER_INFO');
      Open;
      oNum := FieldByName('o_num').AsInteger;
      Inc(oNum);

      close;
      SQL.Clear;
      SQL.Add('select f_name from FOOD_INFO where f_check = 0');
      Open;

      if NOT IsEmpty then //만약 주문한 음식 중 재고가 없을 수 있으므로 다시 체크.
      begin
        First;
        for i := 0 to sgOrderList.RowCount do
        begin
          if sgOrderList.Cells[0,i] = FieldByName('f_name').AsString then
          begin
            strStock[i] := sgOrderList.Cells[0,i];
            sgOrderList.Cells[1,i] := IntToStr(0); //재고가 없는 주문 음식은 수량을 0 처리한다.
            iStockCheck := 1;
          end;
        end;
      end;

      for i := 1 to sgOrderList.RowCount-1 do //Order테이블에 주문정보입력.
      begin
        Close;
        SQL.Clear;
        SQL.Add('select f_num from FOOD_INFO where f_name = :Pf_name');
        ParamByName('Pf_name').AsString := sgOrderList.Cells[0, i];
        Open;

        iFoodNum := FieldByName('f_num').AsInteger;

        Close;
        SQL.Clear;
        SQL.Add('insert into ORDER_INFO (o_num, open_date, slip_num, f_num, o_count, o_time, os_num, o_check)');
        SQL.Add('values (:Po_num, :Popen_date, :Pslip_num, :Pf_num, :Po_count, :Po_time, :Pos_num, :Po_check)');
        ParamByName('Po_num').AsInteger := oNum;
        ParamByName('Popen_date').AsDateTime := Date;
        ParamByName('Pslip_num').AsInteger := iSlipNum;
        ParamByName('Pf_num').AsInteger := iFoodNum;
        ParamByName('Po_count').AsInteger := StrToInt(sgOrderList.Cells[1, i]);
        ParamByName('Po_time').AsString := FormatDateTime('hh:nn:ss', now());
        ParamByName('Pos_num').AsInteger := osNum;
        ParamByName('Po_check').AsString := '1';
        ExecSQL;
        Inc(oNum);
      end;{for문}
    end;{with~do문}
    pnlResetClick(pnlReset);  //주문완료 후, 화면을 리셋한다.
    ShowMessage('주문이 완료되었습니다!');
    if iStockCheck = 1 then
    begin
      for i := 0 to 19 do
      begin
        if (strStock[i] <> '') then
          ShowMessage('['+ strStock[i] +'] 재고없음! 주문리스트에서 삭제했습니다.');
      end;{for문}
    end;{if문}
  end;{if~else문}
end;

procedure TReaderfrm.pnlResetClick(Sender: TObject);
begin
  with sgOrderList do
  begin
    for i := 1 to RowCount-1 do
    begin
      Cells[0,i] := '';
      Cells[1,i] := '';
    end;
    RowCount := 1;
    intRowCount := 1;
  end;
  cbOrderMenu.ItemIndex := -1;
end;

procedure TReaderfrm.sgOrderListClick(Sender: TObject);
var
  iTemp: Integer;
begin
  iTemp := sgOrderList.Row;   //클릭한 Row의 값을 임시로 저장.
  cbOrderCount.ItemIndex := StrToInt(sgOrderList.Cells[1, iTemp])-1; // 값을 연결.
  iCountRowInfo := iTemp; // 콤보상자에서 수량의 값이 바뀔 때 해당 음식정보의 Row값.
end;

procedure TReaderfrm.TimerTimer(Sender: TObject);
begin
  with DM.ReaderQuery do
  begin
    close;
    SQL.Clear;
    SQL.Add('select * from FOOD_INFO where f_check = 0');
    Open;

    if NOT IsEmpty then
      GetOrderMenu;
  end;
end;

initialization
begin
  for i := 0 to 19 do
  begin
    strStock[i] := ''; // StrStock[i] -> 재고없는 음식을 넣기위해
  end;{for문}
end;
end.
