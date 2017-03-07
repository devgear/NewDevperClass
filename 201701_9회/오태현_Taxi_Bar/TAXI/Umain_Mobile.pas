unit Umain_Mobile;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Edit,
  FMX.Objects, FMX.Layouts, FMX.Controls.Presentation, FMX.StdCtrls,
  FMX.TabControl, FMX.WebBrowser, System.Sensors, System.Sensors.Components,
  FMX.ListBox, FMX.EditBox, FMX.NumberBox, System.Bluetooth,
  System.Bluetooth.Components;

type
  TTaxiMF = class(TForm)
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    Timer1: TTimer;
    Btn_Sign_In: TButton;
    Layout1: TLayout;
    Layout2: TLayout;
    Text1: TText;
    Edit1: TEdit;
    ToolBar1: TToolBar;
    WebBrowser1: TWebBrowser;
    Btn_State: TButton;
    Btn_Customer: TButton;
    ToolBar2: TToolBar;
    LocationSensor1: TLocationSensor;
    ListBox_User: TListBox;
    Dis_Box: TNumberBox;
    Price_Box: TNumberBox;
    Text3: TText;
    Text4: TText;
    Btn_Search_Customer: TButton;
    Text2: TText;
    Timer2: TTimer;
    ComboBox1: TComboBox;
    StyleBook1: TStyleBook;
    Timer3: TTimer;
    Timer4: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure Btn_Sign_InClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Btn_StateClick(Sender: TObject);
    procedure Btn_CustomerClick(Sender: TObject);
    procedure LocationSensor1LocationChanged(Sender: TObject;
      const OldLocation, NewLocation: TLocationCoord2D);
    procedure Btn_Select_Customer(Sender: TObject);
    procedure Btn_Locate(Sender: TObject);
    procedure Btn_Search_CustomerClick(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
  private
    { Private declarations }
    CusPhone: string; // 손님 전화번호
    CusType: string; // 손님 타입
    Clat: string; // 손님 위도
    Clong: string; // 손님 경도
  public
    { Public declarations }
    TextTime: Integer;
    Lat, BLat: string; // 택시기사 위도, 10초전 위도
    Long, BLong: string; // 택시기사 경도, 10초전 경도
    Phone: string; // 택시기사 전화번호
    TaxiNum: string; // 택시번호
    Customer: Integer; // 손님 수
    MapLevel: Integer; // 맵 크기 설정
    IsSelect: Boolean; // 손님 선택시 Timer를 이용해 주변손님 검색 하지 않게 하는 변수
    Dist_Fee: Double; // 거리당 금액 계산 변수
  end;

var
  TaxiMF: TTaxiMF;

implementation

{$R *.fmx}
{$IFDEF ANDROID}

// 안드로이드일경우 해당 영역 실행
uses
  UDm, Androidapi.JNI.Location, Androidapi.JNIBridge,
  // 안드로이드 API ( GPS 센서 이용해 위치값 받아오고 전화번호 가져오기 위해 사용)
  Androidapi.JNI.JavaTypes,
  Androidapi.Helpers, Androidapi.JNI.GraphicsContentViewText,
  Androidapi.JNI.Telephony, FMX.Helpers.Android, System.Math;
// System.Math는 델파이에서 제공하는 수학관련 라이브러리
{$ENDIF}
{$IFDEF MSWINDOWS}

// 윈도우일경우 해당 영역 실행
uses
  UDm, System.Math;
{$ENDIF}

const // 상수
  HTMLStr: UnicodeString = '<!DOCTYPE html>' + '<html>' + '<head>' +
    '<meta charset="utf-8">' + '<title>다음 지도 API</title>' + '</head>' + '<body>'
    + '<div id="map" style="width:100%;height:300px;"></div>'

    + '<script src="http://apis.daum.net/maps/maps3.js?apikey=68f86bb3c0448b7089e8fcd79e94caf0"></script>'
    + '<script>'

    + 'var map;' + 'var markers = [];' + 'var samarkers = [];'

    + 'var markerImageArray = [''http://postfiles10.naver.net/20160113_73/hunter450_14526261888591piAy_PNG/start2.png?type=w3'',''http://postfiles4.naver.net/20160113_163/hunter450_1452626188640w5IYS_PNG/arrive2.png?type=w3'''
    + ' , ''http://postfiles2.naver.net/20160113_49/hunter450_1452626396176TWcLj_PNG/taxi2.png?type=w3''];'

    + 'function SetMap(lat, long){' +
    'var mapContainer = document.getElementById(''map''),' // 지도를 표시할 div
    + 'mapOption = {' + 'center: new daum.maps.LatLng(lat, long),' // 지도의 중심좌표
    + 'level: 5,' // 지도의 확대 레벨
    + 'mapTypeId : daum.maps.MapTypeId.ROADMAP' // 지도종류
    + '};' + 'map = new daum.maps.Map(mapContainer, mapOption);' + '}'

    + 'function AddSAMarkers(lat, long, name, count){' // 출발, 도착 마커 추가
    + 'var markerImageUrl = markerImageArray[count],' +
    'markerImageSize = new daum.maps.Size(25, 36),' // 마커 이미지의 크기
    + 'markerImageOptions = {' + 'offset : new daum.maps.Point(11, 36)'
  // 마커 좌표에 일치시킬 이미지 안의 좌표
    + '};'

    + 'var markerImage = new daum.maps.MarkerImage(markerImageUrl, markerImageSize, markerImageOptions);'

    + 'marker = new daum.maps.Marker({' +
    'position: new daum.maps.LatLng(lat, long),' + 'image : markerImage,' +
    'map: map' + '});'

    + 'daum.maps.event.addListener(marker, ''click'', (function(marker) {'
  // 출발,도착 마커 클릭 시 이벤트 등록
    + 'return function() {' + 'var infowindow = new daum.maps.InfoWindow({' +
    'content: ''<p style="margin:7px 22px 7px 12px;font:12px/1.5 sans-serif">'' + name + ''</p>'','
    + 'removable : true ' + '});' + 'infowindow.open(map, marker);' + '}' +
    '})(marker));' + 'samarkers.push(marker);' + '}'

    + 'function setSAMarkers(map) {' // 마커 셋팅
    + 'for (var i = 0; i < samarkers.length; i++) {' +
    'samarkers[i].setMap(map);' + '}' + '}'

    + 'function hideSAMarkers() {' // 마커 모두 지우기
    + 'setSAMarkers(null);' + '}'

    + 'function AddTaxiMarkers(lat, long, name){' // 택시 위치 마커 추가
    + 'var markerImageUrl = ''http://postfiles2.naver.net/20160113_49/hunter450_1452626396176TWcLj_PNG/taxi2.png?type=w3'','
    + 'markerImageSize = new daum.maps.Size(28, 34),' // 마커 이미지의 크기
    + 'markerImageOptions = {' + 'offset : new daum.maps.Point(14, 34)'
  // 마커 좌표에 일치시킬 이미지 안의 좌표
    + '};'

    + 'var markerImage = new daum.maps.MarkerImage(markerImageUrl, markerImageSize, markerImageOptions);'

    + 'marker = new daum.maps.Marker({' +
    'position: new daum.maps.LatLng(lat, long),' + 'image : markerImage,' +
    'map: map' + '});'

    + 'daum.maps.event.addListener(marker, ''click'', (function(marker) {'
  // 택시 마커 클릭 시 이벤트 등록
    + 'return function() {' + 'var infowindow = new daum.maps.InfoWindow({' +
    'content: ''<p style="margin:7px 22px 7px 12px;font:12px/1.5 sans-serif">'' + name + ''</p>'','
    + 'removable : true ' + '});' + 'infowindow.open(map, marker);' + '}' +
    '})(marker));' + 'markers.push(marker);' + '}'

    + 'function setMarkers(map) {' // 마커 셋팅
    + 'for (var i = 0; i < markers.length; i++) {' + 'markers[i].setMap(map);'
    + '}' + '}'

    + 'function hideMarkers() {' // 마커 모두 지우기
    + 'setMarkers(null);' + '}'

    + 'function panTo(lat,long) {'
  // 이동할 위도 경도 위치를 생성합니다
    + 'var moveLatLon = new daum.maps.LatLng(lat, long);'
  // 지도 중심을 부드럽게 이동시킵니다
  // 만약 이동할 거리가 지도 화면보다 크면 부드러운 효과 없이 이동합니다
    + 'map.panTo(moveLatLon);' + '}'

    + 'function MapLevels(count) {' + 'map.setLevel(count);' + '}'

    + '</script>' + '</body>' + '</html>';

procedure TTaxiMF.Btn_Locate(Sender: TObject);
var
  SLat, SLong: string;
begin
  IsSelect := True;
  Timer2.Enabled := False;
  Text2.Text := '손님찾기 기능이 정지되었습니다.';
  Btn_Search_Customer.Text := '손님찾기';
  Text2.Text := IntToStr(ListBox_User.ItemIndex + 1) + '번 손님 선택';
  Dm.OrderDataSet.First;
  Dm.OrderDataSet.MoveBy((Sender as TButton).Tag);
  SLat := Dm.OrderDataSet.FieldByName('O_LAT').AsString;
  SLong := Dm.OrderDataSet.FieldByName('O_LONG').AsString;
  WebBrowser1.EvaluateJavaScript('panTo(' + SLat + ',' + SLong + ');');
end;

procedure TTaxiMF.Btn_Search_CustomerClick(Sender: TObject);
begin
  if IsSelect then
  begin
    Btn_Search_Customer.Text := '검색중';
    IsSelect := False;
    Timer2.Enabled := True;
  end
  else
  begin
    Btn_Search_Customer.Text := '손님찾기';
    IsSelect := True;
    Timer2.Enabled := False;
    Text2.Text := '손님찾기 기능이 정지되었습니다.';
  end;
end;

procedure TTaxiMF.Btn_Select_Customer(Sender: TObject);
var
  SLat, SLong: string;
begin
  IsSelect := True;
  Timer2.Enabled := False;
  Text2.Text := '손님찾기 기능이 정지되었습니다.';
  Btn_Search_Customer.Text := '손님찾기';
  Dm.OrderDataSet.First;
  Dm.OrderDataSet.MoveBy((Sender as TButton).Tag);
  SLat := Dm.OrderDataSet.FieldByName('O_LAT').AsString;
  SLong := Dm.OrderDataSet.FieldByName('O_LONG').AsString;
  WebBrowser1.EvaluateJavaScript('panTo(' + SLat + ',' + SLong + ');');
  CusPhone := Dm.OrderDataSet.FieldByName('C_PHONE').AsString;
  CusType := IntToStr(Dm.OrderDataSet.FieldByName('O_TYPE').AsInteger + 2);

  MessageDlg(IntToStr(ListBox_User.ItemIndex + 1) + '번째 손님을 태우시겠습니까?',
    TMsgDlgType.mtInformation, [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], 0,
    procedure(const AResult: TModalResult)
    begin
      if AResult = mrYes then
      begin
        if demo.Change_Types(CusPhone, CusType, TaxiNum) then
        begin
          Text2.Text := '고객 전화번호: ' + CusPhone;
          ShowMessage(IntToStr(ListBox_User.ItemIndex + 1) + '번째 손님으로 설정되었습니다');
          demo.Change_State(Phone, '0');
          Btn_State.Text := '검색허용';
          Clat := SLat;
          Clong := SLong;
        end
        else
        begin
          ShowMessage('다른 콜택시가 해당손님을 태우러 가는 중입니다. 새로운 손님을 검색합니다.');
          Dm.Calc_Distance;
          Btn_Search_Customer.OnClick(Btn_Search_Customer);
        end;
      end;
    end);
end;

procedure TTaxiMF.Btn_Sign_InClick(Sender: TObject);
{$IFDEF ANDROID}
var
  obj: JObject;
  locationManager: JLocationManager;
{$ENDIF}
begin
{$IFDEF ANDROID}
  if not demo.Taxi_Sign_In(Edit1.Text) then
    raise Exception.Create('등록되지 않은 택시기사번호입니다.');
  Phone := Edit1.Text;
  Dm.MyDataSet.Close;
  Dm.MyDataSet.Open;
  TaxiNum := Dm.MyDataSet.FieldByName('T_NUM').AsString;

  if not LocationSensor1.Active then
    LocationSensor1.Active := True;

  obj := SharedActivityContext.getSystemService // GPS 상태 가져오기
    (TJContext.JavaClass.LOCATION_SERVICE);
  locationManager := TJLocationManager.Wrap((obj as ILocalObject).GetObjectID);

  if locationManager.isProviderEnabled(TJLocationManager.JavaClass.GPS_PROVIDER)
  then
  // GPS on / off 확인 then
  begin
    try
      if Lat = '' then
        raise Exception.Create('위치정보가 정확하지 않습니다. 잠시 후 다시 실행해 주세요');

      WebBrowser1.Parent := TabItem2;
      WebBrowser1.EvaluateJavaScript('SetMap(37.56682,126.97865);');
      WebBrowser1.EvaluateJavaScript('hideSAMarkers();');
      WebBrowser1.EvaluateJavaScript('MapLevels(5);');
      WebBrowser1.EvaluateJavaScript('panTo(' + Lat + ',' + Long + ');');
      WebBrowser1.EvaluateJavaScript('AddTaxiMarkers(' + Lat + ',' + Long +
        ',''현재위치'');');
      Timer1.Enabled := True;
      Timer2.Enabled := True;
      Dm.Calc_Distance;
    except
      raise Exception.Create('위치정보가 정확하지 않습니다. 잠시 후 다시 실행해 주세요');
    end;

    TabControl1.ActiveTab := TabItem2;
  end
  else
    ShowMessage('GPS를 켜주세요');
{$ENDIF}
end;

procedure TTaxiMF.Btn_StateClick(Sender: TObject);
begin
  if Btn_State.Text = '검색허용' then
  begin
    demo.Change_State(Phone, '1');
    Btn_State.Text := '검색불가';
  end
  else
  begin
    demo.Change_State(Phone, '0');
    Btn_State.Text := '검색허용';
  end;
end;

procedure TTaxiMF.ComboBox1Change(Sender: TObject);
begin
  if ComboBox1.ItemIndex <> 0 then
    MapLevel := ComboBox1.ItemIndex + 2; // 지도 크기 변경
  WebBrowser1.EvaluateJavaScript('MapLevels(' + IntToStr(MapLevel) + ');');
end;

procedure TTaxiMF.Btn_CustomerClick(Sender: TObject);
begin
  if Btn_Customer.Text = '손님탑승' then
  begin
    // Btn_State.OnClick(Btn_State);
    if ListBox_User.ItemIndex = -1 then
      raise Exception.Create('선택된 손님이 없습니다.');
    MessageDlg('손님 탑승 확인', TMsgDlgType.mtInformation,
      [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], 0,
      procedure(const AResult: TModalResult)
      begin
        Btn_Customer.Text := '요금계산';
        IsSelect := True;
        Timer2.Enabled := False;
        Price_Box.Value := 2800;
        Dis_Box.Value := 0;
        Timer3.Enabled := True;
        Timer4.Enabled := True;
        if CusType = '2' then
        begin
          Dm.Insert_UD(Clat, Clong, CusPhone);
        end;

      end);

  end
  else
  begin
    MessageDlg(Dis_Box.Text + 'Km, ' + Price_Box.Text + '원 결제하시겠습니까?',
      TMsgDlgType.mtInformation, [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], 0,
      procedure(const AResult: TModalResult)
      begin
        if AResult = mrYes then
        begin
          try
            if CusType = '2' then
            begin
              Dm.Update_UD(Lat, Long, FormatFloat('0.##', Dis_Box.Value),
                Price_Box.Text);
                Price_Box.Value := 2800;
                Dis_Box.Value := 0;
              // Dm.Insert_UD(Clat, Clong, Lat, Long, FormatFloat('0.##',
              // Dis_Box.Value), Price_Box.Text, CusPhone);
            end;
            demo.Del_Order(CusPhone);
            Timer3.Enabled := False;
            Timer4.Enabled := False;

          except
            raise Exception.Create('결제 오류, 다시 시도해 주세요');
          end;
          ShowMessage('결제가 완료되었습니다.');
          Btn_Customer.Text := '손님탑승';
          Btn_Search_Customer.Text := '검색중';
          IsSelect := False;
          Timer2.Enabled := True;
          demo.Change_State(Phone, '1');
          Btn_State.Text := '검색불가';
        end;
      end);
  end;
end;

procedure TTaxiMF.FormCreate(Sender: TObject);
var
  aStream: TMemoryStream; // 웹브라우저 초기화변수
  TelephonyServiceNative: JObject;
  TelephonyManager: JTelephonyManager;
begin
  //Phone := '01087664920'; // 직원번호 미리 할당 ( 테스트 하기 힘듬 )
  TabControl1.TabPosition := TTabPosition.None;
  TabControl1.ActiveTab := TabItem1;
  MapLevel := 5;
  IsSelect := False;
  TextTime := 0;

  // 웹브라우저 초기화 시작
  WebBrowser1.Navigate('about:blank');
  aStream := TMemoryStream.Create;
  try
    aStream.WriteBuffer(Pointer(HTMLStr)^, Length(HTMLStr)); // 자바스크립트 읽어오기
    aStream.Seek(0, soFromBeginning);
    WebBrowser1.LoadFromStrings(HTMLStr, HTMLStr);
  finally
    aStream.Free;
  end;
  // 웹브라우저 초기화 끝

  TelephonyServiceNative := SharedActivityContext.getSystemService
    (TJContext.JavaClass.TELEPHONY_SERVICE);
  TelephonyManager := TJTelephonyManager.Wrap
    ((TelephonyServiceNative as ILocalObject).GetObjectID);

  Edit1.Text := JStringToString(TelephonyManager.getLine1Number);
end;

procedure TTaxiMF.LocationSensor1LocationChanged(Sender: TObject;
const OldLocation, NewLocation: TLocationCoord2D);
begin
  BLat := Lat;
  BLong := Long;
  Lat := FormatFloat('#.#####', NewLocation.Latitude);
  Long := FormatFloat('#.#####', NewLocation.Longitude);
  if BLat = '' then
  begin
    BLat := Lat;
    BLong := Long;
  end;

end;

procedure TTaxiMF.Timer1Timer(Sender: TObject);
begin
  WebBrowser1.EvaluateJavaScript('hideMarkers();');
  WebBrowser1.EvaluateJavaScript('MapLevels(' + IntToStr(MapLevel) + ');');
  WebBrowser1.EvaluateJavaScript('panTo(' + Lat + ',' + Long + ');');
  WebBrowser1.EvaluateJavaScript('AddTaxiMarkers(' + Lat + ',' + Long +
    ',''현재위치'');');
  demo.Update_Taxi_Locate(Phone, Lat, Long);

  if not IsSelect then // 손님 선택시 Timer를 이용해 주변손님 검색 하지 않게 함
    Customer := Dm.Calc_Distance;



end;

procedure TTaxiMF.Timer2Timer(Sender: TObject);
begin
  if TextTime = 0 then
    Text2.Text := '손님 검색중'
  else if TextTime = 1 then
    Text2.Text := '손님 검색중.'
  else if TextTime = 2 then
    Text2.Text := '손님 검색중..'
  else if TextTime = 3 then
    Text2.Text := '손님 검색중...';

  Inc(TextTime);
  TextTime := TextTime mod 4;
end;

procedure TTaxiMF.Timer3Timer(Sender: TObject);
var
  theta, dist: Double;
  dis_price: Double;
  price_count: Integer;
begin
  theta := StrToFloat(BLong) - StrToFloat(Long);
  dist := sin(degTorad(StrToFloat(BLat))) *
  // degTorad 사용 - System.Math 라이브러리
    sin(degTorad(StrToFloat(Lat))) + cos(degTorad(StrToFloat(BLat))) *
    cos(degTorad(StrToFloat(Lat))) * cos(degTorad(theta));
  dist := arccos(dist);
  dist := radTodeg(dist);
  dist := dist * 60 * 1.1515;
  dist := dist * 1.609344;
  Dis_Box.Value := Dis_Box.Value + dist;

  if Dis_Box.Value >= 2 then
  begin // 기본 2km = 2800원
    // Dis_Box.Value >= 2, (Dis_Box.Value - 2) 부분의 숫자 2를 변경해 기본요금 조절 가능
    // 0.1로 해놓으면 기본요금으로 이동할 수 있는 거리가 0.1 km
    dis_price := (Dis_Box.Value - 2) / 0.15; // 150미터당 100원추가
    // dis_price := (Dis_Box.Value - 2) / 0.15; <- 0.15숫자를 변경하면 100원당 거리조절 가능( 0.1로 해놓으면 100미터당 100원추가 )
    price_count := Trunc(dis_price);
    Price_Box.Value := 2800 + (price_count * 100);
  end;
end;

procedure TTaxiMF.Timer4Timer(Sender: TObject);
begin
  Dm.Insert_UD_Detail(Lat, Long);
end;

end.
