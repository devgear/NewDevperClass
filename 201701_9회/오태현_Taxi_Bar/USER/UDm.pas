unit UDm;

interface

uses
  System.SysUtils, System.Classes, Data.DBXDataSnap, IPPeerClient,
  Data.DBXCommon, Data.DB, Data.SqlExpr, Datasnap.DBClient, Datasnap.DSConnect,
  UClientClass,
  FMX.ListBox, FMX.Objects, FMX.Types, FMX.StdCtrls;
// listbox, objects, types, stdctrls uses해야 이용내역 가져오기의 동적 변수 사용 가능

type
  TDm = class(TDataModule)
    SQLConnection1: TSQLConnection;
    DSProviderConnection1: TDSProviderConnection;
    UserQueryDataSet: TClientDataSet;
    TaxiDataSet: TClientDataSet;
    CheckOrdersDataSet: TClientDataSet;
    UDDetailDataSet: TClientDataSet;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Btn_Map: array of TButton; // 버튼 동적할당 (배열) TButton = FMX.StdCtrls
    Btn_Del: array of TButton; // 배열 정적할당법 -> a: array[0..10] of Integer;
    procedure Get_UD(Phone: string); // 이용내역 열람
    procedure Del_UD(Num: Integer);  // 이용내역 삭제
    function Calc_Distance: Integer; // 택시 거리계산 및 지도에 출력
    procedure Get_UD_Detail(Num:string);
  end;

var
  Dm: TDm;
  demo: TServerMethods1Client; // 서버 메소드 사용하기 위한 변수

implementation

{ %CLASSGROUP 'FMX.Controls.TControl' }

uses Umain_Mobile, System.Math;

{$R *.dfm}

function TDm.Calc_Distance: Integer; // 거리계산 및 2KM이내의 택시 값 리턴
var
  theta, dist: double;
  count: Integer;
begin
  count := 0;
  TaxiDataSet.Close;
  TaxiDataSet.Open;
  TaxiDataSet.First; // 가져온 데이터의 첫번째 줄로 이동

  UserMF.WebBrowser1.EvaluateJavaScript('hideMarkers();');

  while not TaxiDataSet.EOF do
  begin

    theta := TaxiDataSet.FieldByName('T_LONG').AsFloat - StrToFloat(UserMF.Long);
    dist := sin(degTorad(TaxiDataSet.FieldByName('T_LAT').AsFloat)) *
    // degTorad 사용 - System.Math 라이브러리
      sin(degTorad(StrToFloat(UserMF.Lat))) +
      cos(degTorad(TaxiDataSet.FieldByName('T_LAT').AsFloat)) *
      cos(degTorad(StrToFloat(UserMF.Lat))) * cos(degTorad(theta));
    dist := arccos(dist);
    dist := radTodeg(dist);
    dist := dist * 60 * 1.1515;
    dist := dist * 1.609344;
    // 위도, 경도를 이용한 거리 계산 끝

    if (2 >= dist) and (TaxiDataSet.FieldByName('T_STATE').AsInteger = 1) then // 거리가 2KM이내이고 Taxi의 상태가 1(빈차)인 경우에 실행
    begin
      UserMF.WebBrowser1.EvaluateJavaScript('AddTaxiMarkers(' +
        TaxiDataSet.FieldByName('T_LAT').AsString + ',' +
        TaxiDataSet.FieldByName('T_LONG').AsString + ',''' + TaxiDataSet.FieldByName('T_NUM').AsString +
        ' ' + FormatFloat('(약0.0Km)', dist) + ''');');
      Inc(count); // count 변수의 값 1씩 증가

      TaxiDataSet.Next; // 테이블 다음 줄로 이동
    end
    else
      TaxiDataSet.Next;
  end;

  Result := count;
end;

procedure TDm.DataModuleCreate(Sender: TObject);
begin
  SQLConnection1.Connected := True;
  demo := TServerMethods1Client.Create(SQLConnection1.DBXConnection);
end;


procedure TDm.Del_UD(Num: Integer); // 이용내역 삭제 프로시저
var
  InputNum: string;
begin
   UserQueryDataSet.First;
  UserQueryDataSet.MoveBy(Num);
  InputNum := UserQueryDataSet.FieldByName('UD_NUM').AsString;
  // Del_UD에 한번에 넣어도 됨
  demo.Del_UD(InputNum);
end;

procedure TDm.Get_UD(Phone: string); // 해당 번호의 이용내역 가져오기
var
  ListBoxItem: TListBoxItem; // FMX.ListBox
  Num, Content: TText; // FMX.Objects
  Arrive: TDateTime;
  i: Integer;
begin
  demo.Get_UD(Phone); // 이용내역을 서버로부터 받아옴
  UserQueryDataSet.Close; // 데이터셋을 열고닫아 서버로부터 데이터 갱신
  UserQueryDataSet.Open;
  UserQueryDataSet.First;

  UserMF.List_UD.Clear; // 리스트박스 항목 초기화
  i := 0;
  Btn_Map := nil; // 배열 초기화                                              -
  Btn_Del := nil;

  SetLength(Btn_Map, UserQueryDataSet.RecordCount); // 배열 크기 지정
  SetLength(Btn_Del, UserQueryDataSet.RecordCount);

  UserQueryDataSet.First; // 첫번째 줄로 이동
  while not UserQueryDataSet.EOF do // EOF = End Of Final, not이 붙어있어 끝이아닐경우 while문을 반복함
  begin
    ListBoxItem := TListBoxItem.Create(UserMF.List_UD); // ListBoxItem 동적 생성
    UserMF.List_UD.AddObject(ListBoxItem); // ListBoxItem 추가

    Num := TText.Create(ListBoxItem); // Text 동적 생성
    Num.Parent := ListBoxItem;  // 부모 정해주기
    Num.Text := IntToStr(i + 1);  // 텍스트에 값 넣기
    Num.Align := TAlignLayout.Left; // FMX.Types
    Num.Width := 40;

    Content := TText.Create(ListBoxItem);
    Content.Parent := ListBoxItem;
    Arrive := UserQueryDataSet.FieldByName('UD_ARRIVE').AsDateTime; // Datetime형식으로 값 변환
    Content.Text := FormatDateTime('yy년 mm월 dd일 ampm hh:nn', Arrive) + ', ';
    Content.Text := Content.Text + FormatFloat('0.##', UserQueryDataSet.FieldByName('UD_DIS')
      .AsFloat) + 'Km, ';
    Content.Text := Content.Text + UserQueryDataSet.FieldByName('UD_PRICE')
      .AsString + '원';
    Content.Align := TAlignLayout.Client;
    Content.TextSettings.HorzAlign := TTextAlign.Center;


    Btn_Map[i] := TButton.Create(ListBoxItem); // 버튼 동적 생성
    Btn_Map[i].Parent := ListBoxItem;
    Btn_Map[i].Text := '지도';
    Btn_Map[i].Align := TAlignLayout.Right; // Align 설정
    Btn_Map[i].Width := 60;
    Btn_Map[i].Tag := i; // 태그 값 지정
    Btn_Map[i].OnClick := UserMF.Btn_MapClick; // 버튼의 이벤트 코드로 물려주는 법

    Btn_Del[i] := TButton.Create(ListBoxItem);
    Btn_Del[i].Parent := ListBoxItem;
    Btn_Del[i].Text := '삭제';
    Btn_Del[i].Align := TAlignLayout.MostRight;
    Btn_Del[i].Width := 60;
    Btn_Del[i].Tag := i;
    Btn_Del[i].OnClick := UserMF.Btn_DelClick; // 버튼의 이벤트 코드로 물려주는 법

    Inc(i); // Dec(i);
    UserQueryDataSet.Next; // 다음 줄로 이동
  end;

end;

procedure TDm.Get_UD_Detail(Num: string);
var
  Time: TDateTime;
  i : Integer;
begin
 demo.Get_UD_Detail(Num);
 UDDetailDataSet.Close;
 UDDetailDataSet.Open;
 UDDetailDataSet.First;
 i := 1;

 while not UDDetailDataSet.EOF do
 begin
  Time := UDDetailDataSet.FieldByName('UD_TIME').AsDateTime;
  UserMF.WebBrowser1.EvaluateJavaScript('AddTaxiMarkers(' +
        UDDetailDataSet.FieldByName('UD_LAT').AsString + ',' +
        UDDetailDataSet.FieldByName('UD_LONG').AsString + ',''' + IntToStr(i) +
        '번 ' + FormatDateTime('ampm hh:nn', Time) + ''');');

  UDDetailDataSet.Next;
  Inc(i);
 end;
end;

end.
