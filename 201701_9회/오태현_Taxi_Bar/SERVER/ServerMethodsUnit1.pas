unit ServerMethodsUnit1;

interface

uses System.SysUtils, System.Classes, System.Json,
  Datasnap.DSServer, Datasnap.DSAuth, Datasnap.DSProviderDataModuleAdapter,
  Data.DBXInterBase, Data.DB, Data.SqlExpr, Data.FMTBcd, Datasnap.Provider;

type
  TServerMethods1 = class(TDSServerModule)
    SQLConnection1: TSQLConnection;
    Taxi_Table: TSQLTable;
    SQL_User_Query: TSQLQuery;
    Taxi_Table_Provider: TDataSetProvider;
    SQL_User_Query_Provider: TDataSetProvider;
    Order_Table: TSQLTable;
    SQL_Taxi_Query: TSQLQuery;
    Order_Table_Provider: TDataSetProvider;
    SQL_Taxi_Query_Provider: TDataSetProvider;
    SQL_Check_Order: TSQLQuery;
    SQL_Check_Order_Provider: TDataSetProvider;
    SQL_UD_Detail: TSQLQuery;
    SQL_UD_Detail_Provider: TDataSetProvider;
    procedure DSServerModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    procedure Sign_Up(Phone: string); // 가입
    function Sign_In(Phone: string): Boolean; // 로그인
    procedure Insert_Order(Phone, Lat, Long, Types: string); // 콜택시 추가
    procedure Update_Order(Phone, Lat, Long: string); // 콜택시 위치 변경
    function Check_Order(Phone: string): Boolean; // 콜택시 호출여부 확인
    procedure Get_UD(Phone: string); // 이용내역 가져오기
    procedure Del_UD(Num: string); // 이용내역 삭제
    procedure Get_UD_Detail(Num: string);

    function Taxi_Sign_In(Phone: string): Boolean; // 택시 로그인
    procedure Change_State(Phone, State: string); // 택시 상태 변경
    function Change_Types(Phone, Types, TaxiNum: string): Boolean; // 예약 상태 변경
    function Insert_UD(UD_SLAT, UD_SLONG, T_NUM, C_PHONE: string): Integer; // 이용내역 추가
    procedure Update_UD(UD_ARRIVE, UD_ALAT, UD_ALONG, UD_DIS, UD_PRICE, UD_NUM: string);
    procedure Update_Taxi_Locate(Phone, Lat, Long: string);// 택시 위치 변경
    procedure Del_Order(Phone: string); // 콜택시 호출 삭제(이용내역 추가전에 호출내역 삭제)
    procedure Insert_UD_Detail(Num, Lat, Long, Time: string);
  end;

implementation

{$R *.dfm}

uses System.StrUtils;

procedure TServerMethods1.Change_State(Phone, State: string);   //택시의 운행 상태를 체크하는 함수
begin
  SQL_Taxi_Query.Close;
  SQL_Taxi_Query.SQL.Clear;
  SQL_Taxi_Query.SQL.Text :=
    'update TAXI set T_STATE = :T_STATE where T_PHONE = :T_PHONE;';
  SQL_Taxi_Query.ParamByName('T_STATE').AsString := State;
  SQL_Taxi_Query.ParamByName('T_PHONE').AsString := Phone;

  try
    SQL_Taxi_Query.ExecSQL();
  except
    raise;
  end;
end;

function TServerMethods1.Change_Types(Phone, Types, TaxiNum: string): Boolean;
begin
  SQL_Taxi_Query.Close;
  SQL_Taxi_Query.SQL.Clear;
  SQL_Taxi_Query.SQL.Text := 'select * from ORDERS where C_PHONE = :C_PHONE;';
  SQL_Taxi_Query.ParamByName('C_PHONE').AsString := Phone;
  SQL_Taxi_Query.Open;

  if (SQL_Taxi_Query.FieldByName('O_TYPE').AsInteger = 0) or
    (SQL_Taxi_Query.FieldByName('O_TYPE').AsInteger = 1) then
  begin
    SQL_Taxi_Query.Close;
    SQL_Taxi_Query.SQL.Clear;
    SQL_Taxi_Query.SQL.Text :=
      'update ORDERS set O_TYPE = :O_TYPE, T_NUM = :T_NUM where C_PHONE = :C_PHONE;';
    SQL_Taxi_Query.ParamByName('O_TYPE').AsString := Types;
    SQL_Taxi_Query.ParamByName('T_NUM').AsString := TaxiNum;
    SQL_Taxi_Query.ParamByName('C_PHONE').AsString := Phone;

    try
      SQL_Taxi_Query.ExecSQL();
      Result := True;
    except
      raise;
    end;
  end
  else
    Result := False;

end;

function TServerMethods1.Check_Order(Phone: string): Boolean; //콜 주문 상태
begin
  SQL_Check_Order.Close;
  SQL_Check_Order.SQL.Clear;
  SQL_Check_Order.SQL.Text :=
    'select * from ORDERS where C_PHONE like :C_PHONE;';
  SQL_Check_Order.ParamByName('C_PHONE').AsString := Phone;
  try
    SQL_Check_Order.Open;
  except
    raise;
  end;
  SQL_Check_Order.First;
  if SQL_Check_Order.FieldByName('C_PHONE').AsString = Phone then
  begin
    Result := True;
  end
  else
    Result := False;
end;

procedure TServerMethods1.Del_Order(Phone: string);  //콜 주문을 삭제
begin
  SQL_Taxi_Query.Close;
  SQL_Taxi_Query.SQL.Clear;
  SQL_Taxi_Query.SQL.Text := 'delete from ORDERS where C_PHONE = :C_PHONE;';
  SQL_Taxi_Query.ParamByName('C_PHONE').AsString := Phone;
  try
    SQL_Taxi_Query.ExecSQL();
  except
    raise;
  end;
end;

procedure TServerMethods1.Del_UD(Num: string);  //유저 데이터를 삭제
begin
  SQL_User_Query.Close;
  SQL_User_Query.SQL.Clear;
  SQL_User_Query.SQL.Text := 'delete from UD where UD_NUM = :UD_NUM;';
  SQL_User_Query.ParamByName('UD_NUM').AsString := Num;
  try
    SQL_User_Query.ExecSQL();
  except
    raise;
  end;
end;

procedure TServerMethods1.DSServerModuleCreate(Sender: TObject);//모듈이 생성될때
begin
  Taxi_Table.Active := True;
  Order_Table.Active := True;
end;

function TServerMethods1.EchoString(Value: string): string;
begin
  Result := Value;
end;

procedure TServerMethods1.Get_UD(Phone: string); //유저데이터를 가져오기
begin
  SQL_User_Query.Close;
  SQL_User_Query.SQL.Clear;
  SQL_User_Query.SQL.Text := 'select * from UD where C_PHONE like :C_PHONE;';
  SQL_User_Query.ParamByName('C_PHONE').AsString := Phone;
  try
    SQL_User_Query.Open;
  except
    raise;
  end;
end;

procedure TServerMethods1.Get_UD_Detail(Num: string); //유저 디테일 가져오기
begin
  SQL_UD_Detail.Close;
  SQL_UD_Detail.SQL.Clear;
  SQL_UD_Detail.SQL.Text :=
    'select * from UD_DETAIL where UD_NUM = :UD_NUM;';
  SQL_UD_Detail.ParamByName('UD_NUM').AsString := Num;
  try
    SQL_UD_Detail.Open;
  except
    raise;
  end;
end;

procedure TServerMethods1.Insert_Order(Phone, Lat, Long, Types: string); // 콜 주문 추가하기
begin
  SQL_User_Query.Close;
  SQL_User_Query.SQL.Clear;
  SQL_User_Query.SQL.Text :=
    'insert into ORDERS values (:C_PHONE, :O_LAT, :O_LONG, :O_TIME, :O_TYPE, NULL);';
  SQL_User_Query.ParamByName('C_PHONE').AsString := Phone;
  SQL_User_Query.ParamByName('O_LAT').AsString := Lat;
  SQL_User_Query.ParamByName('O_LONG').AsString := Long;
  SQL_User_Query.ParamByName('O_TIME').AsString :=
    FormatDateTime('yyyy-mm-dd hh:nn:ss', Now);
  SQL_User_Query.ParamByName('O_TYPE').AsString := Types;

  try
    SQL_User_Query.ExecSQL();
  except
    raise;
  end;
end;

function TServerMethods1.Insert_UD(UD_SLAT, UD_SLONG, T_NUM, C_PHONE: string): Integer;// 유저 데이터를 추가
begin
  SQL_Taxi_Query.Close;
  SQL_Taxi_Query.SQL.Clear;
  SQL_Taxi_Query.SQL.Text :=
    'insert into UD values (NULL, NULL, :UD_SLAT, :UD_SLONG, NULL, NULL, NULL, NULL, :T_NUM, :C_PHONE);';
  //SQL_Taxi_Query.ParamByName('UD_ARRIVE').AsString := UD_ARRIVE;
  SQL_Taxi_Query.ParamByName('UD_SLAT').AsString := UD_SLAT;
  SQL_Taxi_Query.ParamByName('UD_SLONG').AsString := UD_SLONG;
  //SQL_Taxi_Query.ParamByName('UD_ALAT').AsString := UD_ALAT;
  //SQL_Taxi_Query.ParamByName('UD_ALONG').AsString := UD_ALONG;
  //SQL_Taxi_Query.ParamByName('UD_DIS').AsString := UD_DIS;
  //SQL_Taxi_Query.ParamByName('UD_PRICE').AsString := UD_PRICE;
  SQL_Taxi_Query.ParamByName('T_NUM').AsString := T_NUM;
  SQL_Taxi_Query.ParamByName('C_PHONE').AsString := C_PHONE;

  try
    SQL_Taxi_Query.ExecSQL();
  except
    raise;
  end;

  SQL_Taxi_Query.Close;
  SQL_Taxi_Query.SQL.Clear;
  SQL_Taxi_Query.SQL.Text :=
   'select * from UD where C_PHONE = :C_PHONE ORDER BY UD_NUM desc;';
  SQL_Taxi_Query.ParamByName('C_PHONE').AsString := C_PHONE;
  try
    SQL_Taxi_Query.Open;
  except
    raise;
  end;
  SQL_Taxi_Query.First;
  Result := SQL_Taxi_Query.FieldByName('UD_NUM').AsInteger;
end;

procedure TServerMethods1.Insert_UD_Detail(Num, Lat, Long, Time: string); //유저 디테일 정보 삽입
begin
  SQL_Taxi_Query.Close;
  SQL_Taxi_Query.SQL.Clear;
  SQL_Taxi_Query.SQL.Text :=
    'insert into UD_DETAIL values (:UD_NUM, :UD_LAT, :UD_LONG, :UD_Time);';
  SQL_Taxi_Query.ParamByName('UD_NUM').AsString := Num;
  SQL_Taxi_Query.ParamByName('UD_LAT').AsString := Lat;
  SQL_Taxi_Query.ParamByName('UD_LONG').AsString := Long;
  SQL_Taxi_Query.ParamByName('UD_TIME').AsString := Time;

  try
   SQL_Taxi_Query.ExecSQL();
  except
    raise;
  end;
end;

function TServerMethods1.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;

function TServerMethods1.Sign_In(Phone: string): Boolean;   //콜택시 이용회원 로그인
begin
  SQL_User_Query.Close;
  SQL_User_Query.SQL.Clear;
  SQL_User_Query.SQL.Text :=
    'select C_PHONE from CUSTOMER where C_PHONE like :C_PHONE;';
  SQL_User_Query.ParamByName('C_PHONE').AsString := Phone;
  try
    SQL_User_Query.Open;
  except
    raise;
  end;
  SQL_User_Query.First;
  if SQL_User_Query.FieldByName('C_PHONE').AsString = Phone then
  begin
    Result := True;
  end
  else
    Result := False;
end;

procedure TServerMethods1.Sign_Up(Phone: string); // 콜택시 이용 회원 사용자 등록
begin
  SQL_User_Query.Close;
  SQL_User_Query.SQL.Clear;
  SQL_User_Query.SQL.Text := 'insert into CUSTOMER values (:C_PHONE);';
  SQL_User_Query.ParamByName('C_PHONE').AsString := Phone;

  try
    SQL_User_Query.ExecSQL();
  except
    raise;
  end;
end;

function TServerMethods1.Taxi_Sign_In(Phone: string): Boolean;  //택시기사 로그인
begin
  SQL_Taxi_Query.Close;
  SQL_Taxi_Query.SQL.Clear;
  SQL_Taxi_Query.SQL.Text := 'select * from TAXI where T_PHONE like :T_PHONE;';
  SQL_Taxi_Query.ParamByName('T_PHONE').AsString := Phone;
  try
    SQL_Taxi_Query.Open;
  except
    raise;
  end;
  SQL_Taxi_Query.First;
  if SQL_Taxi_Query.FieldByName('T_PHONE').AsString = Phone then
  begin
    Result := True;
  end
  else
    Result := False;
end;

procedure TServerMethods1.Update_Order(Phone, Lat, Long: string); //주문후 위치 변경
begin
  SQL_User_Query.Close;
  SQL_User_Query.SQL.Clear;
  SQL_User_Query.SQL.Text :=
    'update ORDERS set O_LAT = :O_LAT, O_LONG = :O_LONG where C_PHONE = :C_PHONE;';
  SQL_User_Query.ParamByName('O_LAT').AsString := Lat;
  SQL_User_Query.ParamByName('O_LONG').AsString := Long;
  SQL_User_Query.ParamByName('C_PHONE').AsString := Phone;

  try
    SQL_User_Query.ExecSQL();
  except
    raise;
  end;
end;

procedure TServerMethods1.Update_Taxi_Locate(Phone, Lat, Long: string);//택시 위치 변경에따른  gps변경
begin
  SQL_Taxi_Query.Close;
  SQL_Taxi_Query.SQL.Clear;
  SQL_Taxi_Query.SQL.Text :=
    'update TAXI set T_LAT = :T_LAT, T_LONG = :T_LONG where T_PHONE = :T_PHONE;';
  SQL_Taxi_Query.ParamByName('T_LAT').AsString := Lat;
  SQL_Taxi_Query.ParamByName('T_LONG').AsString := Long;
  SQL_Taxi_Query.ParamByName('T_PHONE').AsString := Phone;

  try
    SQL_Taxi_Query.ExecSQL();
  except
    raise;
  end;
end;

procedure TServerMethods1.Update_UD(UD_ARRIVE, UD_ALAT, UD_ALONG, UD_DIS,
  UD_PRICE, UD_NUM: string); //이용내역에 대한 유저대이터 업데이트
begin
  SQL_Taxi_Query.Close;
  SQL_Taxi_Query.SQL.Clear;
  SQL_Taxi_Query.SQL.Text :=
    'update UD set UD_ARRIVE = :UD_ARRIVE, UD_ALAT = :UD_ALAT, UD_ALONG = :UD_ALONG, UD_DIS = :UD_DIS, UD_PRICE = :UD_PRICE where UD_NUM = :UD_NUM;';
  SQL_Taxi_Query.ParamByName('UD_ARRIVE').AsString := UD_ARRIVE;
//  SQL_Taxi_Query.ParamByName('UD_SLAT').AsString := UD_SLAT;
//  SQL_Taxi_Query.ParamByName('UD_SLONG').AsString := UD_SLONG;
  SQL_Taxi_Query.ParamByName('UD_ALAT').AsString := UD_ALAT;
  SQL_Taxi_Query.ParamByName('UD_ALONG').AsString := UD_ALONG;
  SQL_Taxi_Query.ParamByName('UD_DIS').AsString := UD_DIS;
  SQL_Taxi_Query.ParamByName('UD_PRICE').AsString := UD_PRICE;
  SQL_Taxi_Query.ParamByName('UD_NUM').AsString := UD_NUM;
//  SQL_Taxi_Query.ParamByName('T_NUM').AsString := T_NUM;
//  SQL_Taxi_Query.ParamByName('C_PHONE').AsString := C_PHONE;

  try
    SQL_Taxi_Query.ExecSQL();
  except
    raise;
  end;

end;

end.
