unit UDm;

interface

uses
  System.SysUtils, System.Classes, Data.DBXDataSnap, IPPeerClient,
  Data.DBXCommon, Datasnap.DBClient, Datasnap.DSConnect, Data.DB, Data.SqlExpr,
  UClientClass, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TDm = class(TDataModule)
    SQLConnection1: TSQLConnection;
    DSProviderConnection1: TDSProviderConnection;
    CafeInfoDataSet: TClientDataSet;
    GetReserveDataSet: TClientDataSet;
    GetReserveDetailDataSet: TClientDataSet;
    GetReserveDataSetR_TOTAL_AMOUNT: TIntegerField;
    GetReserveDataSetR_ARRIVAL: TSQLTimeStampField;
    GetReserveDataSetR_PAYMENT_PLAN: TWideStringField;
    GetReserveDataSetU_LAT: TSingleField;
    GetReserveDataSetU_LONG: TSingleField;
    GetReserveDataSetR_COMMENT: TWideStringField;
    GetReserveDataSetU_ID: TWideStringField;
    GetReserveDataSetU_NAME: TWideStringField;
    GetReserveDataSetU_PHONENUM: TWideStringField;
    GetReserveDataSetU_GENDER: TBooleanField;
    GetReserveDataSetR_NUM: TIntegerField;
    CafeInfoDataSet_Source: TDataSource;
    CafeInfoDataSetC_NAME: TWideStringField;
    CafeInfoDataSetC_LOCA: TWideStringField;
    CafeInfoDataSetC_LAT: TSingleField;
    CafeInfoDataSetC_LONG: TSingleField;
    GetReserveDetailDataSetR_NUM: TIntegerField;
    GetReserveDetailDataSetM_NAME: TWideStringField;
    GetReserveDetailDataSetRL_QUANTITY: TIntegerField;
    GetReserveDetailDataSetRL_PRICE: TIntegerField;
    GetReserveDetailDataSetM_PRICE: TIntegerField;
    GetReserveDetailDataSetM_INFO: TWideStringField;
    GetReserveDetailDataSetM_PHOTO: TBlobField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    BeforeRNum: integer;
    CurrentRNum: integer;
    procedure Get_Reserve;
    procedure Get_Reserve_Detail;
  end;

var
  Dm: TDm;
  demo: TServerMethods1Client;

implementation

{ %CLASSGROUP 'Vcl.Controls.TControl' }

uses Umain_Vcl, System.Math;

{$R *.dfm}

procedure TDm.DataModuleCreate(Sender: TObject);
begin
  SQLConnection1.Connected := true;
  demo := TServerMethods1Client.Create(SQLConnection1.DBXConnection);
  BeforeRNum := 0;
  CurrentRNum := 0;
end;

procedure TDm.Get_Reserve; // 예약 정보 가져오기
var
  i, j: integer;
  lat, long: string;
  name, arrival: string;
  theta, dist: double;
begin
  demo.Get_Reserve_info(CafeInfoDataSet.FieldByName('C_LOCA').AsString);
  GetReserveDataSet.Close;
  GetReserveDataSet.Open;
  CurrentRNum := GetReserveDataSet.RecordCount;

  if CurrentRNum > BeforeRNum then // 사용자가 예약 시
  begin
    i := CurrentRNum - BeforeRNum;
    ShowMessage(IntToStr(i) + '명의 손님이예약 했습니다. 총 ' +
      IntToStr(CurrentRNum) + '명');

    PcForm.ListBox1.Clear;

  end
  else if CurrentRNum < BeforeRNum then // 사용자가 예약 취소 시
  begin
    i := BeforeRNum - CurrentRNum;
    ShowMessage(IntToStr(i) + '명의 손님이 예약취소했습니다. 총' +
      IntToStr(CurrentRNum) + '명');
    PcForm.Memo1.Lines.Clear;
  end;
  // 같을때 수정하면 어떻게 알려야할까?

  PcForm.ListBox1.Clear;
  GetReserveDataSet.First;

  PcForm.HTMLWindow2.execScript('hideMarkers()', 'JavaScript'); // 마커 초기화
  while not GetReserveDataSet.Eof do // 손님 정보 리스트박스에 뿌리기
  begin
    name := GetReserveDataSet.FieldByName('U_NAME').AsString + '님';
    arrival := GetReserveDataSet.FieldByName('R_ARRIVAL').AsString;
    PcForm.ListBox1.Items.Add(name + '   ' + arrival);
    lat := GetReserveDataSet.FieldByName('U_LAT').AsString;
    long := GetReserveDataSet.FieldByName('U_LONG').AsString;

    theta := CafeInfoDataSet.FieldByName('C_LONG').AsFloat - StrToFloat(long);
    dist := sin(degTorad(CafeInfoDataSet.FieldByName('C_LAT').AsFloat)) *
      sin(degTorad(StrToFloat(lat))) +
      cos(degTorad(CafeInfoDataSet.FieldByName('C_LAT').AsFloat)) *
      cos(degTorad(StrToFloat(lat))) * cos(degTorad(theta));
    dist := arccos(dist);
    dist := radTodeg(dist);
    dist := dist * 60 * 1.1515;
    dist := dist * 1.609344; // 손님과 카페위치 거리 계산

    PcForm.HTMLWindow2.execScript('AddCustMarkers(' + lat + ',' + long + ',''' +
      name + ' ' + FormatFloat('(약0.0km)', dist) + ''')', 'JavaScript');
    // 마커및 윈포윈도우 추가

    GetReserveDataSet.Next;
  end;
  GetReserveDataSet.First;

  BeforeRNum := CurrentRNum;
end;

procedure TDm.Get_Reserve_Detail; // 상세 예약정보 가져오기
var
  num: string;
begin
  num := GetReserveDataSet.FieldByName('R_NUM').AsString;
  demo.Get_Reserve_Detail(num); // 예약번호로 상세정보 가져오기
  GetReserveDetailDataSet.Close; // 갱신
  GetReserveDetailDataSet.Open;

  PcForm.Memo1.Lines.Clear;
  PcForm.Memo1.Lines.Add('이름: ' + GetReserveDataSet.FieldByName('U_NAME')
    .AsString);
  PcForm.Memo1.Lines.Add('도착예정시간: ' + GetReserveDataSet.FieldByName('R_ARRIVAL')
    .AsString);
  PcForm.Memo1.Lines.Add('전화번호: ' + GetReserveDataSet.FieldByName('U_PHONENUM')
    .AsString);
  PcForm.Memo1.Lines.Add('결제방식: ' + GetReserveDataSet.FieldByName
    ('R_PAYMENT_PLAN').AsString);
  PcForm.Memo1.Lines.Add('총 결제금액:' + GetReserveDataSet.FieldByName
    ('R_TOTAL_AMOUNT').AsString + '원');
  PcForm.Memo1.Lines.Add('추가요구사항:' + GetReserveDataSet.FieldByName('R_COMMENT')
    .AsString);

  GetReserveDetailDataSet.First;
  while not GetReserveDetailDataSet.Eof do // 주문내역
  begin
    PcForm.Memo1.Lines.Add('주문품목: ' + GetReserveDetailDataSet.FieldByName
      ('M_NAME').AsString + '  ' + GetReserveDetailDataSet.FieldByName
      ('RL_QUANTITY').AsString + '잔' + '(' + GetReserveDetailDataSet.FieldByName
      ('RL_PRICE').AsString + '원)');
    GetReserveDetailDataSet.Next;
  end;

end;

end.
