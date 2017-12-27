unit ServerMethodsUnit1;

interface

uses System.SysUtils, System.Classes, System.Json,
  DataSnap.DSProviderDataModuleAdapter,
  DataSnap.DSServer, DataSnap.DSAuth, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.Phys.IB, FireDAC.Phys.IBDef, FireDAC.Comp.UI, DataSnap.Provider;

type
  TServerMethods1 = class(TDSServerModule)
    LibConnection: TFDConnection;
    qryUser: TFDQuery;
    qryLib: TFDQuery;
    qryRent: TFDQuery;
    qryUser_provider: TDataSetProvider;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    qryCheckLogin: TFDQuery;
    qryDuplicatedID: TFDQuery;
    qryLib_provider: TDataSetProvider;
    qryRent_provider: TDataSetProvider;
    qryDuplicatedID_provider: TDataSetProvider;
    qryCheckLogin_Provider: TDataSetProvider;
    qryLibAddress: TFDQuery;
    qryLibAddress_Provider: TDataSetProvider;
    qryLibName: TFDQuery;
    qryLibname_Provider: TDataSetProvider;
    qryDupSeat: TFDQuery;
    qryDupSeat_Provider: TDataSetProvider;
    qrySeat: TFDQuery;
    qrySeat_Provider: TDataSetProvider;
    qryDuplicatedNum: TFDQuery;
    qryDuplicatedNum_Provider: TDataSetProvider;
    qryTalking: TFDQuery;
    qryTalking_Provider: TDataSetProvider;
    qryUserUSER_SEQ: TFDAutoIncField;
    qryUserUSER_NAME: TWideStringField;
    qryUserUSER_ID: TWideStringField;
    qryUserUSER_PW: TStringField;
    qryUserUSER_PHONE: TStringField;
    qryUserUSER_MAIL: TWideStringField;
    qryUserUSER_OUT_YN: TStringField;
    qryLibLIB_SEQ: TFDAutoIncField;
    qryLibLIBNAME: TWideStringField;
    qryLibLIBADDRESS: TWideStringField;
    qryLibLIBOPEN: TTimeField;
    qryLibLIBCLOSE: TTimeField;
    qryLibLIBHOLIDAY: TDateField;
    qryRentRENT_SEQ: TFDAutoIncField;
    qryRentUSER_SEQ: TIntegerField;
    qryRentRENT_DATE: TDateField;
    qryRentRENT_Stime: TTimeField;
    qryRentRENT_Etime: TTimeField;
    qryRentRENT_YN: TStringField;
    qryRentLIB_SEQ: TIntegerField;
    qryRentRENT_SEATNUM: TIntegerField;
    qrySeatRENT_SEATNUM: TIntegerField;
    qryDuplicatedNumRENT_SEATNUM: TIntegerField;
    qryTalkingMES_SEQ: TFDAutoIncField;
    qryTalkingMES_CONTENT: TWideStringField;
    qryTalkingMES_TIME: TTimeField;
    qryTalkingMES_DATE: TDateField;
    qryTalkingUSERFROM_ID: TStringField;
    qryTalkingUSERTO_ID: TStringField;
    qryLibNameLIBNAME: TWideStringField;
    qryLibNameLIBADDRESS: TWideStringField;
    qryLibAddressLIBADDRESS: TWideStringField;
    qryCheckLoginUSER_SEQ: TIntegerField;
    qryCheckLoginUSER_NAME: TWideStringField;
    qryCheckLoginUSER_ID: TWideStringField;
    qryCheckLoginUSER_PW: TStringField;
    qryCheckLoginUSER_PHONE: TStringField;
    qryCheckLoginUSER_MAIL: TWideStringField;
    qryCheckLoginUSER_OUT_YN: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    myseq: integer;
    mySNum: integer;
    mySeatNum: integer;
    MyUser: string;
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    function CheckLogin(AID: string; APW: string): boolean;
    function DuplicatedID(AID: string): boolean;
    function CheckSeat(ADATE: TDateTime; ALIBSEQ: integer): boolean;
    function Duplicatednum(ADATE: TDateTime; ALIBSEQ: integer; ARent_SeatNum: integer): boolean;
  end;

implementation

{$R *.dfm}

uses System.StrUtils;

function TServerMethods1.Duplicatednum(ADATE: TDateTime; ALIBSEQ: integer; ARent_SeatNum: integer): boolean;
// 좌석번호 중복체크
begin
  Result := False;
  qryDuplicatedNum.Close;
  qryDuplicatedNum.SQL.Text :=
    'SELECT RENT_SEATNUM FROM RENT WHERE RENT_DATE = :DATE AND LIB_SEQ = :LIBSEQ AND RENT_SEATNUM = :Rent_SeatNum';
  qryDuplicatedNum.ParamByName('DATE').Asdate := ADATE;
  qryDuplicatedNum.ParamByName('LIBSEQ').AsInteger := ALIBSEQ;
  qryDuplicatedNum.ParamByName('Rent_SeatNum').AsInteger := ARent_SeatNum;
  qryDuplicatedNum.Open;

  if (qryDuplicatedNum.RecordCount > 0) then
  begin
    mySeatNum := qryDuplicatedNum.FieldByName('RENT_SEATNUM').AsInteger;
    Result := True;
  end;

end;

function TServerMethods1.CheckLogin(AID: string; APW: string): boolean; // 아이디 비번 로그인체크
begin
  qryCheckLogin.Close;
  qryCheckLogin.SQL.Text := 'SELECT USER_SEQ FROM USERS WHERE USER_ID = :ID AND USER_PW = :PW';
  qryCheckLogin.ParamByName('ID').AsString := AID;
  qryCheckLogin.ParamByName('PW').AsString := APW;
  qryCheckLogin.Open;

  if (qryCheckLogin.RecordCount > 0) then
  begin
    myseq := qryCheckLogin.FieldByName('User_Seq').AsInteger;
//    MyUser := qryCheckLogin.FieldByName('User_ID').AsString;
    Result := True;
  end;

end;

function TServerMethods1.DuplicatedID(AID: string): boolean; // 아이디 중복체크
begin
  Result := False;
  qryDuplicatedID.Close;
  qryDuplicatedID.SQL.Text := 'SELECT USER_ID FROM USERS WHERE USER_ID = :ID';
  qryDuplicatedID.ParamByName('ID').AsString := AID;
  qryDuplicatedID.Open;

  if (qryDuplicatedID.RecordCount > 0) then
    Result := True;
end;

function TServerMethods1.CheckSeat(ADATE: TDateTime; ALIBSEQ: integer): boolean; // dd
// 예약된 좌석번호 찾기
begin
  Result := False;
  qryDupSeat.Close;
  qryDupSeat.SQL.Text := 'SELECT RENT_SEATNUM FROM RENT WHERE RENT_DATE = :DATE AND LIB_SEQ = :LIBSEQ';

  qryDupSeat.ParamByName('DATE').AsDateTime := ADATE; // dd
  qryDupSeat.ParamByName('LIBSEQ').AsInteger := ALIBSEQ;
  qryDupSeat.Open;

  if (qryDupSeat.RecordCount > 0) then
  begin
    mySNum := qryDupSeat.FieldByName('RENT_SEATNUM').AsInteger;
    Result := True;
  end;
end;

function TServerMethods1.EchoString(Value: string): string;
begin
  Result := Value;
end;

function TServerMethods1.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;

end.
