unit uCounterMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCntFms, ExtCtrls, Grids, DBGrids, StdCtrls, Buttons, GIFImg, jpeg,
  ActnList, PlatformDefaultStyleActnCtrls, ActnMan, Menus, SqlTimSt;

type
  RoomArray = Array[0..20] of Integer;
  TCntFrm = class(TForm)
    grpRoom: TGridPanel;
    pnlRoom2: TPanel;
    pnlRoom3: TPanel;
    pnlRoom4: TPanel;
    pnlRoom5: TPanel;
    pnlRoom6: TPanel;
    pnlRoom7: TPanel;
    pnlRoom8: TPanel;
    pnlRoom9: TPanel;
    pnlRoom10: TPanel;
    pnlRoom11: TPanel;
    pnlRoom12: TPanel;
    pnlRoom13: TPanel;
    pnlRoom14: TPanel;
    pnlRoom15: TPanel;
    pnlRoom16: TPanel;
    pnlRoom17: TPanel;
    pnlRoom18: TPanel;
    pnlRoom19: TPanel;
    pnlRoom20: TPanel;
    grpOrder: TGridPanel;
    btnPay: TBitBtn;
    btnCancle: TBitBtn;
    pnlStart: TPanel;
    RsrListBtn: TPanel;
    SalesBtn: TPanel;
    FdBtn: TPanel;
    AdjBtn: TPanel;
    pnlRoom1: TPanel;
    Image1: TImage;
    Image2: TImage;
    sgOrderList: TStringGrid;
    pmRoom: TPopupMenu;
    Actionmanager: TActionManager;
    OdListAction: TAction;
    OdList: TMenuItem;
    sgCalculation: TStringGrid;
    edtGetMoney: TEdit;
    edtOutMoney: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure RsrListBtnClick(Sender: TObject);
    procedure SalesBtnClick(Sender: TObject);
    procedure FdBtnClick(Sender: TObject);
    procedure AdjBtnClick(Sender: TObject);
    procedure pnlRoom1Click(Sender: TObject);
    procedure pnlStartClick(Sender: TObject);
    procedure btnPayClick(Sender: TObject);
    procedure edtGetMoneyChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCancleClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CntFrm: TCntFrm;
  RoomInfo: RoomArray;

procedure OrderListOutput(iSlipNum: Integer; sgOrderList: TStringGrid; sgCalculation: TStringGrid);
procedure RoomIsEmpty(iSlipNum: Integer);
procedure OrderlistReset;
procedure RoomColorChange;
implementation

uses uBarDM, uRsrvListFms, uSalesInfoFms, uFoodListFms, uAdjustmentFms;
var
  i, j: byte;{for문용 임시변수}
  h: String;
  iInit: Integer; //방번호
  osNum: Integer;  //폼을 create할 때 Order_Sales테이블의 os_num의 가장 큰 값을 넣기 위해
  oNum: Integer;   //폼을 create할 때 Order_Info테이블의 o_num의 가장 큰 값을 넣기 위해
  sNum: Integer;   //폼을 create할 때 Sales_Info테이블의 s_num의 가장 큰 값을 넣기 위해
  slipNum: Integer;
  iRowCount: Integer; //주문리스트의 Row값.
{$R *.dfm}

procedure OrderlistReset;  //주문내역을 초기화 시킨다.
begin
  with CntFrm do
  begin
    for i := 1 to iRowCount do
      for j := 0 to 3 do
        sgOrderList.Cells[j,i] := '';
    sgOrderList.RowCount := 1;
    sgOrderList.ColCount := 4;
    sgCalculation.Cells[1,0] := '';
    edtGetMoney.Text := '0';
    edtOutMoney.Text := '0';
  end;
end;

procedure OrderListOutput(iSlipNum:Integer; sgOrderList: TStringGrid; sgCalculation: TStringGrid);
var
  strTemp: String;
  iSumTemp: Integer;
begin
  //for문을 돌려서 주문리스트를 뿌린다. (리스트출력) *Order_Sales 테이블의 iSlipNum

  with DM.BarQuery, sgOrderList do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from ORDER_INFO where slip_num = :Pslip_num and open_date = :Popen_date');
    Params[0].AsInteger := iSlipNum;
    Params[1].AsDateTime := Date;
    Open;

    First;
    i := 0;
    while not EOF do //레코드 마지막까지?
    begin
      Inc(i);
      RowCount := RowCount + 1;
      sgOrderList.cells[0, i] := IntToStr(i);                       //순번값
      cells[2, i] := IntToStr(FieldByName('o_count').AsInteger);      //수량
      strTemp := IntToStr(FieldByName('f_num').AsInteger);
      next;
    end;

    Close;
    SQL.Clear;
    SQL.Add('select f.f_name, f.f_price from food_info f, order_info o');
    SQL.Add('where o.f_num = f.f_num and o.open_date=:Popen_date and o.slip_num = :Pslip_num');
    ParambyName('Popen_date').AsDatetime := date;
    ParambyName('Pslip_num').AsInteger := iSlipNum;
    Open;

    i := 0;
    First;
    while not EOF do
    begin
      Inc(i);
      cells[3, i] := IntToStr(FieldByName('f_price').AsInteger);
      cells[1, i] := FieldByName('f_name').AsString;
      iSumTemp := iSumTemp + (StrToInt(Cells[2,i])*StrToInt(Cells[3,i]));
      Next;
    end;{while문}
  end;{with~do문}
  sgCalculation.Cells[1,0] := IntToStr(iSumTemp);
  iRowCount := i;
end;

procedure RoomIsEmpty(iSlipNum: Integer);
begin
  with DM.BarQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Add('delete from ORDER_SALES where open_date = :Popen_date and slip_num = :Pslip_Num');
    ParamByName('Popen_date').AsDateTime := Date;
    ParamByName('Pslip_num').AsInteger := iSlipNum;
    ExecSQL;
  end;{with~do문}
end;

procedure TCntFrm.AdjBtnClick(Sender: TObject);
begin
  AdjFrm := TAdjFrm.Create(Application);
  AdjFrm.Show;
end;

procedure TCntFrm.btnCancleClick(Sender: TObject);
begin
  OrderlistReset;
end;

procedure TCntFrm.btnPayClick(Sender: TObject);
var
  iTableNum: Integer; //table_num을 잠시 넣어두는 임시 변수
  iOsNum: Integer;    //os_Num을 잠시 넣어두는 임시 변수
begin
  //결제 루틴
  if edtGetMoney.Text = '' then
  begin
    ShowMessage('받은 돈을 입력하세요. 거스름돈이 계산됩니다.');
    edtGetMoney.SetFocus;
    exit;
  end;

  Inc(sNum);
  with DM.BarQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select table_num, os_num from ORDER_SALES where slip_num = :Pslip_num');
    ParamByName('Pslip_num').AsInteger := SlipNum;
    Open;

    iTableNum := FieldByName('table_num').AsInteger;
    iOsNum := FieldByName('os_num').AsInteger;

    Close;
    SQL.Clear;
    SQL.Add('insert into SALES_INFO (s_num, open_date, slip_num, table_num, s_sum, s_time, os_num) values');
    SQL.Add('(:Ps_num, :Popen_date, :Pslip_num, :Ptable_num, :Ps_sum, :Ps_time, :Pos_num);');
    ParamByName('Ps_num').AsInteger := sNum;
    ParamByName('Popen_date').AsDateTime := Date;
    ParamByName('Pslip_num').AsInteger := SlipNum;
    ParamByName('Ptable_num').AsInteger := iTableNum;
    ParamByName('Ps_sum').AsInteger := StrToInt(sgCalculation.Cells[1,0]);
    ParamByName('Ps_time').AsString := FormatDateTime('hh:nn:ss', Now());
    ParamByName('Pos_num').AsInteger := iOsNum;
    ExecSQL;

    ShowMessage('결제되었습니다.');
    OrderlistReset; //주문서 초기화.
    RoomColorChange;
  end;
end;

procedure TCntFrm.edtGetMoneyChange(Sender: TObject);
begin
  if edtGetMoney.Text <> '0' then
    edtOutMoney.Text := IntToStr(StrToInt(edtGetMoney.Text) - StrToInt(sgCalculation.Cells[1,0]));
end;

procedure TCntFrm.FdBtnClick(Sender: TObject);
begin
  FdFrm := TFdFrm.Create(CntFrm);
  FdFrm.Show;
end;

procedure TCntFrm.FormCreate(Sender: TObject);
begin
  //주문리스트의 문구와 선이 출력.
  with sgOrderList do
  begin
    RowCount := 1; // 초기 셋팅.
    ColCount := 4;
    cells[0,0] := '순번';
    cells[1,0] := '음식명';
    cells[2,0] := '수량';
    cells[3,0] := '가격';

  end;{with~do}
  //계산리스트의 문구와 선이 출력.
  with sgCalculation do
  begin
    RowCount := 1; // 초기 셋팅.
    ColCount := 2;
    cells[0,0] := '총 금액';
  end;{with~do}
end;

procedure TCntFrm.FormShow(Sender: TObject);
begin
  pnlRoom1.Enabled := false;
  pnlRoom2.Enabled := false;
  pnlRoom3.Enabled := false;
  pnlRoom4.Enabled := false;
  pnlRoom5.Enabled := false;
  pnlRoom6.Enabled := false;
  pnlRoom7.Enabled := false;
  pnlRoom8.Enabled := false;
  pnlRoom9.Enabled := false;
  pnlRoom10.Enabled := false;
  pnlRoom11.Enabled := false;
  pnlRoom12.Enabled := false;
  pnlRoom13.Enabled := false;
  pnlRoom14.Enabled := false;
  pnlRoom15.Enabled := false;
  pnlRoom16.Enabled := false;
  pnlRoom17.Enabled := false;
  pnlRoom18.Enabled := false;
  pnlRoom19.Enabled := false;
  pnlRoom20.Enabled := false;

  btnPay.Enabled := false;
  btnCancle.Enabled := false;
  RsrListBtn.Enabled := false;
  SalesBtn.Enabled := false;
  FdBtn.Enabled := false;
  AdjBtn.Enabled := false;

end;

procedure TCntFrm.pnlStartClick(Sender: TObject);
var
  islipNum: Integer; //여러손님이 동시에 주문을 받을 시를 생각해서.
begin
  DM.SQLConnection.Connected := True; // "시작"버튼을 누르면
                                      // 디비가 연결되면서 영업이 시작된다.

  DM.BarQuery.Close;
  DM.BarQuery.SQL.Clear;
  // 시작버튼을 누르면 나머지 버튼이 활성화된다.
  pnlRoom1.Enabled := True;
  pnlRoom2.Enabled := True;
  pnlRoom3.Enabled := True;
  pnlRoom4.Enabled := True;
  pnlRoom5.Enabled := True;
  pnlRoom6.Enabled := True;
  pnlRoom7.Enabled := True;
  pnlRoom8.Enabled := True;
  pnlRoom9.Enabled := True;
  pnlRoom10.Enabled := True;
  pnlRoom11.Enabled := True;
  pnlRoom12.Enabled := True;
  pnlRoom13.Enabled := True;
  pnlRoom14.Enabled := True;
  pnlRoom15.Enabled := True;
  pnlRoom16.Enabled := True;
  pnlRoom17.Enabled := True;
  pnlRoom18.Enabled := True;
  pnlRoom19.Enabled := True;
  pnlRoom20.Enabled := True;

  btnPay.Enabled := True;
  btnCancle.Enabled := True;
  RsrListBtn.Enabled := True;
  SalesBtn.Enabled := True;
  FdBtn.Enabled := True;
  AdjBtn.Enabled := True;

  //각각의 테이블의 고유번호의 값을 전역변수에 대입
  with DM.BarQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select Max(os_num) as os_num from ORDER_SALES');
    Open;

    osNum := FieldByName('os_num').AsInteger;

    Close;
    SQL.Clear;
    SQL.Add('select Max(o_num) as o_num from ORDER_INFO');
    Open;

    oNum := FieldByName('o_num').AsInteger;

    Close;
    SQL.Clear;
    SQL.Add('select Max(s_num) as s_num from SALES_INFO');
    Open;

    sNum := FieldByName('s_num').AsInteger;

    Close;
    SQL.Clear;
    SQL.Add('select * from ORDER_SALES where open_date = :Popen_date');
    ParamByName('Popen_date').AsDatetime := Date;
    Open;

    if Not IsEmpty then //오늘의 정보가 있으면
    begin
      ShowMessage('오늘의 판매정보가 존재합니다. 마감 시, 정산버튼을 누르세요.');
//      iSlipNum := FieldByName('slip_num').AsInteger; //전표번호
//      Inc(iSlipNum); //마지막 손님의 전표번호에 +1 증가시켜 프로그램을 껐다 다시
                     //켜도 그 날의 최신정보에 append가 가능하도록 하기 위해.
      Exit;
    end
    else
    begin //없으면 Order_Sales 테이블에 오늘의 날짜로 초기셋팅.
      ShowMessage('영업을 시작합니다.');
      Inc(osNum);
      Close;
      SQL.Clear;
      SQL.Add('insert into order_sales (open_date, slip_num, os_num, table_num) values');
      SQL.Add('(:Popen_date, :Pslip_num, :Pos_num, :Ptable_num)');
      ParamByName('Popen_date').AsDateTime := date;
      ParamByName('Pslip_num').AsInteger := 0;
      ParamByName('Pos_num').AsInteger := osNum;
      ParamByName('Ptable_num').AsInteger := 0;

      ExecSQL;
    end;
  end;{with~do문}
  pnlStart.Enabled := false;
end;

procedure TCntFrm.pnlRoom1Click(Sender: TObject);
var
  iSlipNum: Integer; //전표번호-sql을 통해서 값을 가져오기 때문에 전역변수로 둘 필요없음.(헷갈리지마!)
//  pnlColor: Tcolor;
begin
  h := (Sender as TPanel).Caption;
  iInit := StrToInt(((Sender as TPanel).Caption)[3]); //테이블 번호."방 3"의 문자의 세번째만 변수에 입력.
  i := Length(((Sender as Tpanel).Caption));
  // 방의 숫자가 2개일 경우를 대비해서 패널 캡션의 길이를 구한다.
  if i = 4 then
    iInit := StrToInt(IntToStr(iInit) + (Sender as TPanel).Caption[4]);
  if RoomInfo[iInit] = 0 then //그 방의 색깔이 파란색이면, 혹은 그 방이 빈 방이면
  begin
    RoomInfo[iInit] := 1; // 그 방의 색깔을 빨간색으로, 혹은 그 방을 사용한다.
    (Sender as TPanel).Color := clRed; //RoomInfo[i]-> i는 방의 색깔을 구분하기위해. i:=0이면 파랑, i:=1이면 빨강

    with DM.BarQuery do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select Max(slip_num) as slip_num from ORDER_SALES where open_date = :popen_date;');
      ParamByName('Popen_date').AsDateTime := Date;
      Open;

      iSlipNum := FieldByName('slip_num').AsInteger; //전표번호

      Inc(iSlipNum); //마지막 손님의 전표번호에 +1 증가시켜 프로그램을 껐다 다시
                     //켜도 그 날의 최신정보에 append가 가능하도록 하기 위해.
      Inc(osNum);
      Close;
      SQL.Clear;
      SQL.Add('insert into ORDER_SALES ');
      SQL.Add('(open_date, slip_num, os_num, table_num) values ');
      SQL.Add('(:Popen_date, :Pslip_num, :Po_num, :Ptable_num); ');

      ParamByName('Popen_date').AsDateTime := Date;
      ParamByName('Pslip_num').AsInteger := iSlipNum; //Order_Sales테이블에 새로운 손님의 정보를 등록시키기 위해 insert한다.
      ParamByName('Po_num').AsInteger := osNum; //Order_Sales테이블에 새로운 손님의 정보를 등록시키기 위해 insert한다.
      ParamByName('Ptable_num').AsInteger := iInit; //Order_Sales테이블에 새로운 손님의 정보를 등록시키기 위해 insert한다.

      ExecSQL;

    end;{with~do문}
  end
//================================================================================
  else // 그 방의 색깔이 빨간색이면
  begin
    with DM.BarQuery do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select Max(slip_num) as slip_num from ORDER_SALES');
      SQL.Add('where open_date = :popen_date and table_num = :Ptable_num');
      SQL.Add('Group by open_date ');
      ParamByName('Popen_date').AsDateTime := Date;
      ParamByName('PTable_num').AsInteger := iInit;

      Open;
      //
      //최근의 테이블 번호와 영업일자가 일치하는 전표번호를 찾고
      //그 전표번호를 토대로 order_info 테이블에서 영업일자와 같이 검색.

      iSlipNum := FieldByName('slip_num').AsInteger; //전표번호

      Close;
      SQL.Clear;
      SQL.Add('select * from ORDER_INFO where slip_num = :Pslip_num and open_date = :Popen_date');
      ParamByName('Pslip_num').AsInteger := iSlipNum;
      ParamByName('Popen_date').AsDateTime := Date;
      Open;

      if Not IsEmpty then //전표번호가 있으면, 1.결제하는 것(결제버튼클릭), 혹은 2. 클릭한 방의 주문서를 보는 것.(보고난 후 취소버튼-상태유지) 둘 중의 하나
      begin
        //주문리스트 출력하는 함수 호출.
        SlipNum := iSlipNum;
        OrderListOutput(iSlipNum, sgOrderList, sgCalculation); //주문서 출력.

      end
      else //전표번호가 없으면 , 1. 아직 주문이 들어가지 않은 것(결제버튼클릭-상태유지), 혹은 2. 주문않고 가게를 나가는 경우(취소버튼-그 손님의 번호 삭제)
      begin
        if Dialogs.MessageDlg(' 주문 내역이 없습니다! 방을 비울려면 [OK]버튼을, 이전 상태로 돌아가려면 [NO]를 눌러주세요.', mtConfirmation, [mbOK, mbNo], 0, mbOK) = mrOK then
        begin
          RoomIsEmpty(iSlipNum); //방을 비우기 위해 Order_Sales 테이블에 저장된 해당 방의 정보를 지운다.
          RoomInfo[iInit] := 0; // 그 방의 색깔을 파란색으로, 혹은 빈 방으로 표시.
          (Sender as TPanel).Color := clGradientInactiveCaption;
        end{if문}
      end;{if문}
    end;{with~do문}
  end;{if~else문}
end;

procedure TCntFrm.RsrListBtnClick(Sender: TObject);
begin
  RvFrm := TRvFrm.Create(CntFrm);
  RvFrm.Show;
end;

procedure TCntFrm.SalesBtnClick(Sender: TObject);
begin
  SalesFrm := TSalesFrm.Create(CntFrm);
  SalesFrm.Show;
end;
procedure RoomColorChange;
begin
  if iInit = 1 then
    CntFrm.pnlRoom1.Color := clGradientInactiveCaption
  else if iInit = 2 then
    CntFrm.pnlRoom2.Color := clGradientInactiveCaption
  else if iInit = 3 then
    CntFrm.pnlRoom3.Color := clGradientInactiveCaption
  else if iInit = 4 then
    CntFrm.pnlRoom4.Color := clGradientInactiveCaption
  else if iInit = 5 then
    CntFrm.pnlRoom5.Color := clGradientInactiveCaption
  else if iInit = 6 then
    CntFrm.pnlRoom6.Color := clGradientInactiveCaption
  else if iInit = 7 then
    CntFrm.pnlRoom7.Color := clGradientInactiveCaption
  else if iInit = 8 then
    CntFrm.pnlRoom8.Color := clGradientInactiveCaption
  else if iInit = 9 then
    CntFrm.pnlRoom9.Color := clGradientInactiveCaption
  else if iInit = 10 then
    CntFrm.pnlRoom10.Color := clGradientInactiveCaption
  else if iInit = 11 then
    CntFrm.pnlRoom11.Color := clGradientInactiveCaption
  else if iInit = 12 then
    CntFrm.pnlRoom12.Color := clGradientInactiveCaption
  else if iInit = 13 then
    CntFrm.pnlRoom13.Color := clGradientInactiveCaption
  else if iInit = 14 then
    CntFrm.pnlRoom14.Color := clGradientInactiveCaption
  else if iInit = 15 then
    CntFrm.pnlRoom15.Color := clGradientInactiveCaption
  else if iInit = 16 then
    CntFrm.pnlRoom16.Color := clGradientInactiveCaption
  else if iInit = 17 then
    CntFrm.pnlRoom17.Color := clGradientInactiveCaption
  else if iInit = 18 then
    CntFrm.pnlRoom18.Color := clGradientInactiveCaption
  else if iInit = 19 then
    CntFrm.pnlRoom19.Color := clGradientInactiveCaption
  else
    CntFrm.pnlRoom20.Color := clGradientInactiveCaption;
end;

initialization
begin
  for i := 0 to 20 do
  begin
    RoomInfo[i] := 0; // RoomInfo[i] -> i는 방의 색깔을 구분하기위해. 0이면 파랑, 1이면 빨강
  end;{for문}
end;

end.
