unit DataAccessModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.IB,
  FireDAC.Phys.IBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDataAccess = class(TDataModule)
    LibraryConnection: TFDConnection;
    qryUser: TFDQuery;
    qryRent: TFDQuery;
    qryCheckLOGIN: TFDQuery;
    qryDuplicatedID: TFDQuery;
    qryLibAddress: TFDQuery;
    qryLib: TFDQuery;
    LibSource: TDataSource;
    qryDuplicatedNum: TFDQuery;
    qryDupSeat: TFDQuery;
    qryMyData: TFDQuery;
    qryTalk: TFDQuery;
    qryTalkMES_SEQ: TIntegerField;
    qryTalkMES_CONTENT: TWideStringField;
    qryTalkMES_TIME: TTimeField;
    qryTalkMES_DATE: TDateField;
    qryTalkUSERFROM_ID: TStringField;
    qryTalkUSERTO_ID: TStringField;
    qryLibAddressLIBADDRESS: TWideStringField;
    qryRentRENT_SEQ: TFDAutoIncField;
    qryRentUSER_SEQ: TIntegerField;
    qryRentRENT_DATE: TDateField;
    qryRentRENT_Stime: TTimeField;
    qryRentRENT_Etime: TTimeField;
    qryRentRENT_YN: TStringField;
    qryRentLIB_SEQ: TIntegerField;
    qryRentRENT_SEATNUM: TIntegerField;
    qryDupSeatRENT_SEATNUM: TIntegerField;
    qryRentLIBROOMNUM: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
    myseq: integer;
    mySNum: integer;
    mySeatNum: integer;

    function CheckLOGIN(AID: string; APW: string): Boolean;
    function DuplicatedID(AID: string): Boolean;
    function Duplicatednum(ADATE: TDate; ALIBSEQ: integer;
      ARent_SeatNum: integer): Boolean;
    function CheckSeat(ADATE: TDate; ALIBSEQ: integer): Boolean;
  end;

var
  DataAccess: TDataAccess;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

function TDataAccess.DuplicatedID(AID: string): Boolean; // 아이디 중복체크
begin
  Result := False;
  qryDuplicatedID.Close;
  qryDuplicatedID.SQL.Text := 'SELECT USER_ID FROM USERS WHERE USER_ID = :ID';
  qryDuplicatedID.ParamByName('ID').AsString := AID;
  qryDuplicatedID.Open;

  if (qryDuplicatedID.RecordCount > 0) then
    Result := True;
end;

function TDataAccess.CheckLOGIN(AID: string; APW: string): Boolean; // 아이디 비번 체크
begin
  Result := False;
  qryCheckLOGIN.Close;
  qryCheckLOGIN.SQL.Text :=
    'SELECT USER_SEQ FROM USERS WHERE USER_ID = :ID AND USER_PW = :PW';

  qryCheckLOGIN.ParamByName('ID').AsString := AID;
  qryCheckLOGIN.ParamByName('PW').AsString := APW;
  // qryCheckLOGIN.Fields[0].Asinteger := myseq;
  qryCheckLOGIN.Open;

  if (qryCheckLOGIN.RecordCount > 0) then
  begin
    myseq := qryCheckLOGIN.FieldByName('User_Seq').AsInteger;
    Result := True;
  end;

end;

function TDataAccess.Duplicatednum(ADATE: TDate; ALIBSEQ: integer;
  ARent_SeatNum: integer): Boolean;
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
    mySeatNum := qryDupSeat.FieldByName('RENT_SEATNUM').AsInteger;
    Result := True;
  end;

end;

function TDataAccess.CheckSeat(ADATE: TDate; ALIBSEQ: integer): Boolean;
// 예약된 좌석번호 찾기
begin
  Result := False;
  qryDupSeat.Close;
  qryDupSeat.SQL.Text :=
    'SELECT RENT_SEATNUM FROM RENT WHERE RENT_DATE = :DATE AND LIB_SEQ = :LIBSEQ';

  qryDupSeat.ParamByName('DATE').Asdate := ADATE;
  qryDupSeat.ParamByName('LIBSEQ').AsInteger := ALIBSEQ;
  qryDupSeat.Open;

  if (qryDupSeat.RecordCount > 0) then
  begin
    mySNum := qryDupSeat.FieldByName('RENT_SEATNUM').AsInteger;
    Result := True;
  end;
end;

end.
