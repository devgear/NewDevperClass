unit ServerMethodsUnit1;

interface

uses System.SysUtils, System.Classes, System.Json,
  Datasnap.DSServer, Datasnap.DSAuth, Datasnap.DSProviderDataModuleAdapter,
  Data.DBXInterBase, Data.DB, Data.SqlExpr, Data.FMTBcd, Datasnap.Provider,
  Datasnap.DBClient, SimpleDS, FMX.ListBox;

type
  TServerMethods1 = class(TDSServerModule)
    SQLConnection1: TSQLConnection;
    SQL_UserQuery: TSQLQuery;
    SQL_UserQuery_Provider: TDataSetProvider;
    Cafe_Table_Provider: TDataSetProvider;
    Cafe_Table: TSQLTable;
    Cafe_TableC_NAME: TWideStringField;
    Cafe_TableC_LOCA: TWideStringField;
    Cafe_TableC_LAT: TSingleField;
    Cafe_TableC_LONG: TSingleField;
    Menu_Table: TSQLTable;
    Menu_TableM_NAME: TWideStringField;
    Menu_TableM_PRICE: TIntegerField;
    Menu_TableM_EPRICE: TIntegerField;
    Menu_TableM_INFO: TWideStringField;
    Menu_TableM_PHOTO: TBlobField;
    Menu_TableM_CAFENAME: TWideStringField;
    Menu_Table_Provider: TDataSetProvider;
    AlphaBet_Table: TSQLTable;
    AlphaBet_Table_Provider: TDataSetProvider;
    AlphaBet_TableI_ALPHABET: TBlobField;
    SQL_Reserve_Check_Provider: TDataSetProvider;
    SQL_Reserve_Check: TSQLQuery;
    SQL_Reserve_CheckR_NUM: TIntegerField;
    SQL_Reserve_CheckR_ARRIVAL: TSQLTimeStampField;
    SQL_Reserve_CheckC_NAME: TWideStringField;
    SQL_Reserve_CheckC_LOCA: TWideStringField;
    SQL_Reserve_CheckR_PAYMENT_PLAN: TWideStringField;
    SQL_Reserve_CheckR_TOTAL_AMOUNT: TIntegerField;
    SQL_Reserve_CheckR_COMMENT: TWideStringField;
    SQL_ReserveDetail_Check: TSQLQuery;
    SQL_ReserveDetail_Check_Provider: TDataSetProvider;
    PC_Query: TSQLQuery;
    PC_Query_Provider: TDataSetProvider;
    PC_QueryR_NUM: TIntegerField;
    PC_QueryR_TOTAL_AMOUNT: TIntegerField;
    PC_QueryR_ARRIVAL: TSQLTimeStampField;
    PC_QueryR_PAYMENT_PLAN: TWideStringField;
    PC_QueryU_LAT: TSingleField;
    PC_QueryU_LONG: TSingleField;
    PC_QueryR_COMMENT: TWideStringField;
    PC_QueryU_ID: TWideStringField;
    PC_QueryU_NAME: TWideStringField;
    PC_QueryU_PHONENUM: TWideStringField;
    PC_QueryU_GENDER: TBooleanField;
    procedure DSServerModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    procedure Sign_Up(ID, Name, Password, Phone: string; Gender, Age: integer);
    procedure Reserve_Coffee(Total_Amount: integer; Arrival: TDateTime;
      Payment_Plan, U_Lat, U_Long, U_ID, C_NAME, C_LOCA, COMMENT: string);
    function Get_R_Num(U_ID: string): integer;
    procedure Reserve_list(R_Num, Quantity, Price : integer; M_Name: string);
    procedure Get_Reserve(U_ID: string);
    procedure Get_Reserve_Detail(Num: string);
    procedure Delete_Reserve(Num: string);
    procedure Get_Reserve_info(C_LOCA: string);
    function Log_in(U_ID,U_Password: string): boolean;
  end;

implementation

{$R *.dfm}

uses System.StrUtils;

procedure TServerMethods1.Delete_Reserve(Num: string); //예약취소
begin
  SQL_UserQuery.Close;
  SQL_UserQuery.SQL.Clear;
  SQL_UserQuery.SQL.Text := 'delete from RESERVE_LIST where R_NUM = :NUM';
  SQL_UserQuery.ParamByName('NUM').AsString := Num;
  SQL_UserQuery.ExecSQL();

  SQL_UserQuery.Close;
  SQL_UserQuery.SQL.Clear;
  SQL_UserQuery.SQL.Text := 'delete from RESERVE where R_NUM = :NUM';
  SQL_UserQuery.ParamByName('NUM').AsString := Num;
  SQL_UserQuery.ExecSQL();
end;

procedure TServerMethods1.DSServerModuleCreate(Sender: TObject);
begin
  SQLConnection1.Connected := true;
  SQL_UserQuery.Active := true;
  Cafe_Table.Active := true;
  AlphaBet_Table.Active := true;
  Menu_Table.Active := true;
  SQL_Reserve_Check.Active := true;
end;

function TServerMethods1.EchoString(Value: string): string;
begin
  Result := Value;
end;

procedure TServerMethods1.Get_Reserve(U_ID: string);  //예약 정보 확인 (모바일 사용자)
begin
  SQL_Reserve_Check.Close;
  SQL_Reserve_Check.SQL.Clear;
  SQL_Reserve_Check.SQL.Text := 'select R_NUM,R_ARRIVAL,C_NAME,C_LOCA, R_PAYMENT_PLAN, R_TOTAL_AMOUNT, R_COMMENT from RESERVE where U_ID like :U_ID order by R_ARRIVAL';
  SQL_Reserve_Check.ParamByName('U_ID').AsString := U_ID;
  SQL_Reserve_Check.Open;
end;

procedure TServerMethods1.Get_Reserve_Detail(Num: string);  // 상세 예약 정보 확인 (모바일 사용자)
begin
  SQL_ReserveDetail_Check.Close;
  SQL_ReserveDetail_Check.SQL.Clear;
  SQL_ReserveDetail_Check.SQL.Text := 'select R_NUM, M_NAME, RL_QUANTITY, RL_PRICE, M_PRICE, M_INFO, M_PHOTO from RESERVE, RESERVE_LIST, MENU WHERE RESERVE.R_NUM = RESERVE_LIST.R_NUM AND MENU.M_NAME = RESERVE_LIST.M_NAME AND R_NUM = :NUM';
  SQL_ReserveDetail_Check.ParamByName('NUM').AsString := Num;
  SQL_ReserveDetail_Check.Open;
end;

procedure TServerMethods1.Get_Reserve_info(C_LOCA: string); // 해당 까페 예약 정보 확인 (PC용)
begin
  PC_Query.Close;
  PC_Query.SQL.Clear;
  PC_Query.SQL.Text := 'select R_NUM, R_TOTAL_AMOUNT, R_ARRIVAL, R_PAYMENT_PLAN, U_LAT, U_LONG, R_COMMENT, U_ID, U_NAME, U_PHONENUM, U_GENDER  from RESERVE, USERS where RESERVE.U_ID = USERS.U_ID AND C_LOCA = :LOCA order by R_ARRIVAL';
  PC_Query.ParamByName('LOCA').AsString := C_LOCA;
  PC_Query.Open;
end;

function TServerMethods1.Get_R_Num(U_ID: string): integer; // 주문번호 확인
begin
  SQL_UserQuery.Close;
  SQL_UserQuery.SQL.Clear;
  SQL_UserQuery.SQL.Text := 'select R_NUM from RESERVE where U_ID like '''+U_ID + ''''+ 'order by R_NUM desc';
  SQL_UserQuery.Open;
  SQL_UserQuery.First;
  result := SQL_UserQuery.FieldByName('R_NUM').AsInteger;
end;

function TServerMethods1.Log_in(U_ID, U_Password: string): boolean; // 로그인 SQL
begin
  SQL_UserQuery.Close;
  SQL_UserQuery.SQL.Clear;
  SQL_UserQuery.SQL.Text := 'select U_PASSWORD from USERS where U_ID like :U_ID';
  SQL_UserQuery.ParamByName('U_ID').AsString := U_ID;
  try
  SQL_UserQuery.Open;
  except
   raise;
  end;
  SQL_UserQuery.First;
  if SQL_UserQuery.FieldByName('U_PASSWORD').AsString = U_Password then
  begin
    result := true;
  end
  else
    result := false;


end;

procedure TServerMethods1.Reserve_Coffee(Total_Amount: integer; // 커피 예약
  Arrival: TDateTime; Payment_Plan, U_Lat, U_Long, U_ID, C_NAME, C_LOCA,
  COMMENT: string);
begin
  SQL_UserQuery.Close;
  SQL_UserQuery.SQL.Clear;
  SQL_UserQuery.SQL.Text := 'insert into RESERVE values (NULL,' +
    IntToStr(Total_Amount) + ',''' + FormatDateTime('yyyy-mm-dd hh:nn:ss',
    Arrival) + ''',''' + Payment_Plan + ''',' + U_Lat + ',' + U_Long + ',''' + U_ID + ''',''' + C_NAME +
    ''',''' + C_LOCA + ''',''' + COMMENT + ''')';
  SQL_UserQuery.ExecSQL();
end;

procedure TServerMethods1.Reserve_list(R_Num, Quantity, Price: integer; // 커피 예약 상세 항목
  M_Name: string);
begin
  SQL_UserQuery.Close;
  SQL_UserQuery.SQL.Clear;
  SQL_UserQuery.SQL.Text := 'insert into RESERVE_LIST values ('+IntToStr(R_NUM)+','+''''+M_NAME+''''+','+IntToStr(Quantity)+','+IntToStr(Price)+')';
  SQL_UserQuery.ExecSQL();
end;

function TServerMethods1.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;

procedure TServerMethods1.Sign_Up(ID, Name, Password, Phone: string; // 회원가입
  Gender, Age: integer);
begin
  SQL_UserQuery.Close;
  SQL_UserQuery.SQL.Clear;
  SQL_UserQuery.SQL.Text := 'insert into USERS values (''' + ID + ''',''' + Name
    + ''',''' + Password + ''',''' + Phone + ''',' + IntToStr(Gender) + ',' +
    IntToStr(Age) + ')';
  try
    SQL_UserQuery.ExecSQL();
  except
    raise;
  end;
end;

end.
