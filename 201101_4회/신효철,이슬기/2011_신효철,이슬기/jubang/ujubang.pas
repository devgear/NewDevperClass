{$A8,B-,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M-,N-,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$WARN SYMBOL_DEPRECATED ON}
{$WARN SYMBOL_LIBRARY ON}
{$WARN SYMBOL_PLATFORM ON}
{$WARN SYMBOL_EXPERIMENTAL ON}
{$WARN UNIT_LIBRARY ON}
{$WARN UNIT_PLATFORM ON}
{$WARN UNIT_DEPRECATED ON}
{$WARN UNIT_EXPERIMENTAL ON}
{$WARN HRESULT_COMPAT ON}
{$WARN HIDING_MEMBER ON}
{$WARN HIDDEN_VIRTUAL ON}
{$WARN GARBAGE ON}
{$WARN BOUNDS_ERROR ON}
{$WARN ZERO_NIL_COMPAT ON}
{$WARN STRING_CONST_TRUNCED ON}
{$WARN FOR_LOOP_VAR_VARPAR ON}
{$WARN TYPED_CONST_VARPAR ON}
{$WARN ASG_TO_TYPED_CONST ON}
{$WARN CASE_LABEL_RANGE ON}
{$WARN FOR_VARIABLE ON}
{$WARN CONSTRUCTING_ABSTRACT ON}
{$WARN COMPARISON_FALSE ON}
{$WARN COMPARISON_TRUE ON}
{$WARN COMPARING_SIGNED_UNSIGNED ON}
{$WARN COMBINING_SIGNED_UNSIGNED ON}
{$WARN UNSUPPORTED_CONSTRUCT ON}
{$WARN FILE_OPEN ON}
{$WARN FILE_OPEN_UNITSRC ON}
{$WARN BAD_GLOBAL_SYMBOL ON}
{$WARN DUPLICATE_CTOR_DTOR ON}
{$WARN INVALID_DIRECTIVE ON}
{$WARN PACKAGE_NO_LINK ON}
{$WARN PACKAGED_THREADVAR ON}
{$WARN IMPLICIT_IMPORT ON}
{$WARN HPPEMIT_IGNORED ON}
{$WARN NO_RETVAL ON}
{$WARN USE_BEFORE_DEF ON}
{$WARN FOR_LOOP_VAR_UNDEF ON}
{$WARN UNIT_NAME_MISMATCH ON}
{$WARN NO_CFG_FILE_FOUND ON}
{$WARN IMPLICIT_VARIANTS ON}
{$WARN UNICODE_TO_LOCALE ON}
{$WARN LOCALE_TO_UNICODE ON}
{$WARN IMAGEBASE_MULTIPLE ON}
{$WARN SUSPICIOUS_TYPECAST ON}
{$WARN PRIVATE_PROPACCESSOR ON}
{$WARN UNSAFE_TYPE OFF}
{$WARN UNSAFE_CODE OFF}
{$WARN UNSAFE_CAST OFF}
{$WARN OPTION_TRUNCATED ON}
{$WARN WIDECHAR_REDUCED ON}
{$WARN DUPLICATES_IGNORED ON}
{$WARN UNIT_INIT_SEQ ON}
{$WARN LOCAL_PINVOKE ON}
{$WARN MESSAGE_DIRECTIVE ON}
{$WARN TYPEINFO_IMPLICITLY_ADDED ON}
{$WARN RLINK_WARNING ON}
{$WARN IMPLICIT_STRING_CAST ON}
{$WARN IMPLICIT_STRING_CAST_LOSS ON}
{$WARN EXPLICIT_STRING_CAST OFF}
{$WARN EXPLICIT_STRING_CAST_LOSS OFF}
{$WARN CVT_WCHAR_TO_ACHAR ON}
{$WARN CVT_NARROWING_STRING_LOST ON}
{$WARN CVT_ACHAR_TO_WCHAR ON}
{$WARN CVT_WIDENING_STRING_LOST ON}
{$WARN XML_WHITESPACE_NOT_ALLOWED ON}
{$WARN XML_UNKNOWN_ENTITY ON}
{$WARN XML_INVALID_NAME_START ON}
{$WARN XML_INVALID_NAME ON}
{$WARN XML_EXPECTED_CHARACTER ON}
{$WARN XML_CREF_NO_RESOLVE ON}
{$WARN XML_NO_PARM ON}
{$WARN XML_NO_MATCHING_PARM ON}
unit ujubang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, SqlExpr;

type
  Tjubang = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    sgOrderList: TStringGrid;
    btnCompleted: TButton;
    btnStock: TButton;
    btnClose: TButton;
    Timer1: TTimer;
    procedure btnCloseClick(Sender: TObject);
    procedure sgOrderListDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure btnCompletedClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure btnStockClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  jubang: Tjubang;

implementation

uses uBarDM;
var
  Transdesc:TTransactionDesc;//트랜젝션
{$R *.dfm}

procedure Tjubang.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure Tjubang.btnCompletedClick(Sender: TObject);
var
  slipnum:byte; //전표번호
begin

  if sgOrderList.Cells[0,1] = '' then
  begin
    ShowMessage('주문목록이 없습니다.');
  end
  else
  begin
    with DM.orderokQuery do
    begin
      Close;
      SQL.Clear;  //요리완료  slip_num이 작은 것을 선택한다. 테이블 번호와 시작일자를 비교한다.
      SQL.Add('Select min(o.o_num) as o_num From order_sales os, order_info o, food_info f');
      SQL.Add('Where o.open_date = :Popen_date And os.slip_num = o.slip_num And o.o_check = 1 and os.table_num = :Ptable_num');
      ParamByName('Popen_date').AsDateTime := Date;
      ParamByName('Ptable_num').AsInteger := StrToInt(sgOrderList.Cells[0,1]);
      open;

      slipnum := FieldByName('o_num').AsInteger;

      Close;
      SQL.Clear; //완료된 요리는 o_chk를 0으로 업데이트 시킨다.
      SQL.Add('update order_info set o_check=0 where o_num = :Pslip_num');
      ParamByName('Pslip_num').AsInteger := slipnum;
      ExecSQL;
    end;
  end;
end;
procedure Tjubang.btnStockClick(Sender: TObject);
var
  foodname:String; // 음식명
  foodnum:Integer; // 음식번호
begin

  if sgOrderList.Cells[0,1] = '' then
  begin
    ShowMessage('주문목록이 없습니다.');
  end
  else
  begin
    if Dialogs.MessageDlg('재고없음이 확실합니까?', mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
    dm.SQLConnection.StartTransaction(Transdesc); //트랜젝션시작
    try
      try
        with DM.StockQuery do
        begin
          Close;
          SQL.Clear; //sg에서 음식명에 해당하는 num을 가져오기 위해 사용.
          SQL.Add('select * from food_info where f_name = :Pf_name');
          ParamByName('Pf_name').AsString := sgOrderList.Cells[1,1];
          open;

          foodname := FieldByName('f_name').AsString;
          foodnum := FieldByName('f_num').AsInteger;

          Close;
          SQL.Clear; //Food_info에서 재고없음에 해당되는 음식을 False 시킨다.
          SQL.Add('update food_info set f_check = 0 where f_name = :ff_name');
          ParamByName('ff_name').AsString := foodname;
          ExecSQL;
        end;
      except
        ShowMessage('음식정보 테이블의 재고없음을 실패했습니다.');
        raise;
      end;

      try
        with DM.StockQuery do
        begin
          Close;
          SQL.Clear; //order_info에서 재고없음에 해당되는 주문을 삭제한다.
          SQL.Add('delete from order_info where f_num = :of_num and o_check=1');
          ParamByName('of_num').AsInteger := foodnum;
          ExecSQL;
        end;
      except
        ShowMessage('재고가 없는 주문 삭제를 실패했습니다.');
        raise;
      end;
        dm.SQLConnection.Commit(Transdesc);       //커밋
    except
      dm.SQLConnection.Rollback(Transdesc);     //실패
    end;
  end;
end;

procedure Tjubang.sgOrderListDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
  s:string;
  pos:integer;
  oldalign:word;
begin
  s := sgOrderList.Cells[Acol,Arow];
  with sgOrderList.Canvas do
  begin
    FillRect(Rect);

    if Arow = 0 then
    begin
      Font.Color := clWhite;
      Brush.Color := clRed;
      Font.Size := Font.Size+10;
    end;
    font.Size := font.Size+10;
    pos := ((Rect.Right - Rect.Left) - TextWidth(s)) div 2;
    TextRect(Rect, Rect.Left + Pos, Rect.Top + 3, s);
  end;

end;

procedure Tjubang.Timer1Timer(Sender: TObject);
var
 i:byte;
begin
  with sgOrderList do
  begin
    DM.OrderListQuery.Close;     //3개의 테이블을 선택해 OS_num으로 비교하고, o_chk=1이고, f_num이 같으면 출력
    DM.OrderListQuery.SQL.Clear;
    DM.OrderListQuery.SQL.Add('Select f.f_name, os.table_num, o.o_count, o.o_time From food_info f, order_info o, order_sales os');
    DM.OrderListQuery.SQL.Add('Where os.os_num = o.os_num And o.o_check=1 and o.f_num = f.f_num order by o.o_time');
    DM.OrderListQuery.open;

    sgOrderList.Cells[0,0] := '테이블 번호';
    sgOrderList.Cells[1,0] := '주문List';
    sgOrderList.Cells[2,0] := '수량';

    for i := 1 to DM.OrderListQuery.RecordCount do   //초기값
    begin
      Cells[0,i] := '';
      Cells[1,i] := '';
      Cells[2,i] := '';
    end;
    dm.OrderListQuery.First;
    for i := 1 to DM.OrderListQuery.RecordCount do  //테이블에 뿌려준다.
    begin
      Cells[0,i] := DM.OrderListQuery.FieldByName('table_num').AsString;
      Cells[1,i] := DM.OrderListQuery.FieldByName('f_name').AsString;
      Cells[2,i] := DM.OrderListQuery.FieldByName('o_count').AsString;
      DM.OrderListQuery.Next;
    end;
  end;
end;

initialization //초기값지정
begin
  Transdesc.TransactionID := 1;
  Transdesc.IsolationLevel := xilREADCOMMITTED;
end;

end.
