unit Umain_Mobile;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.TabControl, FMX.WebBrowser,
  System.Sensors, System.Sensors.Components, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView,
  FMX.Objects, FMX.Layouts, FMX.Edit, FMX.ListBox, UClientClass;

type
  TUserMF = class(TForm)
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    TabItem3: TTabItem;
    Btn_Start: TButton;
    Btn_Search_CallTaxi: TButton;
    Btn_UsageDetail: TButton;
    TabItem4: TTabItem;
    Btn_CallTaxi: TButton;
    LocationSensor1: TLocationSensor;
    Btn_ReCall: TButton;
    Layout2: TLayout;
    Text1: TText;
    Layout1: TLayout;
    Edit_Phone: TEdit;
    List_UD: TListBox;
    ToolBar2: TToolBar;
    ToolBar3: TToolBar;
    Btn_GoBack2: TButton;
    Timer1: TTimer;
    Btn_GoBack1: TButton;
    Text3: TText;
    StyleBook1: TStyleBook;
    Timer2: TTimer;
    WebBrowser1: TWebBrowser;
    Image1: TImage;
    Timer3: TTimer;
    Text4: TText;
    ToolBar1: TToolBar;
    Timer4: TTimer;
    Text2: TText;
    Text5: TText;
    Btn_Route: TButton;
    Timer5: TTimer;
    Call_Cancel: TButton;
    Timer6: TTimer;
    procedure Btn_StartClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Btn_Search_CallTaxiClick(Sender: TObject);
    procedure LocationSensor1LocationChanged(Sender: TObject;
      const OldLocation, NewLocation: TLocationCoord2D);
    procedure Btn_CallTaxiClick(Sender: TObject);
    procedure Btn_ReCallClick(Sender: TObject);
    procedure Btn_MapClick(Sender: TObject);
    procedure Btn_DelClick(Sender: TObject);
    procedure Btn_GoBack2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Btn_GoBack1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Btn_UsageDetailClick(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
    procedure Btn_RouteClick(Sender: TObject);
    procedure Timer5Timer(Sender: TObject);
    procedure Call_CancelClick(Sender: TObject);
    procedure Timer6Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Lat: string;
    Long: string;
    Phone: string;
    ReOrderIndex: Integer;
    NearbyTaxi: Integer;
    TextTime: Integer;
    MapLevel: Integer;
    count : Integer;
  end;

var
  UserMF: TUserMF;

implementation

{$R *.fmx}

{$IFDEF ANDROID} //안드로이드일경우 해당 영역 실행
uses
  UDm, Androidapi.JNI.Location, Androidapi.JNIBridge,  // 안드로이드 API ( GPS 센서 이용해 위치값 받아오고 전화번호 가져오기 위해 사용)
  Androidapi.JNI.JavaTypes,
  Androidapi.Helpers, Androidapi.JNI.GraphicsContentViewText,
  Androidapi.JNI.Telephony, FMX.Helpers.Android, System.Math; // System.Math는 델파이에서 제공하는 수학관련 라이브러리
{$ENDIF}

{$IFDEF MSWINDOWS} //윈도우일경우 해당 영역 실행
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

procedure TUserMF.Btn_DelClick(Sender: TObject);
var
  Index: Integer;
begin
  Timer5.Enabled := False;
  MessageDlg('해당 이용내역을 삭제하시겠습니까?', TMsgDlgType.mtInformation,
    [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], 0,
    procedure(const AResult: TModalResult)
    begin
      if AResult = mrYes then // MessageDlg에서 Yes 선택시 실행
      begin
        Index := (Sender as TButton).Tag; // Sender를 활용한 소스 줄이기
        try
          Dm.Del_UD(Index); // 이용내역 삭제
        except
          raise Exception.Create('삭제 오류, 잠시 후 다시 시도해주세요');
        end;
        ShowMessage('삭제 완료');
        Dm.Get_UD(Phone); // 이용내역 갱신
      end;
    end);
end;

procedure TUserMF.Btn_MapClick(Sender: TObject);
var
  SLat, SLong: string;
  ALat, ALong: string;
  MLat, MLong: Double;
  theta, dist: Double;
begin
  Timer5.Enabled := False;
  WebBrowser1.EvaluateJavaScript('hideSAMarkers();'); // html의 함수 실행하는 방법( FMX폼에서 이렇게 사용 )
  ReOrderIndex := (Sender as TButton).Tag;
  Dm.UserQueryDataSet.First; // 데이터테이블의 타겟을 첫번째로이동
  Dm.UserQueryDataSet.MoveBy(ReOrderIndex); // Index블럭만큼 데이터테이블 이동
  SLat := Dm.UserQueryDataSet.FieldByName('UD_SLAT').AsString;
  SLong := Dm.UserQueryDataSet.FieldByName('UD_SLONG').AsString;
  WebBrowser1.EvaluateJavaScript('AddSAMarkers(' + SLat + ',' + SLong +
    ',''출발지'',0);');

  ALat := Dm.UserQueryDataSet.FieldByName('UD_ALAT').AsString;
  ALong := Dm.UserQueryDataSet.FieldByName('UD_ALONG').AsString;
  WebBrowser1.EvaluateJavaScript('AddSAMarkers(' + ALat + ',' + ALong +
    ',''도착지'',1);');

  Dm.Get_UD_Detail(Dm.UserQueryDataSet.FieldByName('UD_NUM').AsString);

  MLat := (StrToFloat(SLat) + StrToFloat(ALat)) / 2;
  MLong := (StrToFloat(SLong) + StrToFloat(ALong)) / 2;

  // 2개의 좌표값을 활용해 거리 계산
  theta := StrToFloat(ALong) - StrToFloat(SLong);
  dist := sin(degTorad(StrToFloat(ALat))) *
  // degTorad 사용 - System.Math 라이브러리
    sin(degTorad(StrToFloat(SLat))) + cos(degTorad(StrToFloat(ALat))) *
    cos(degTorad(StrToFloat(SLat))) * cos(degTorad(theta));
  dist := arccos(dist);
  dist := radTodeg(dist);
  dist := dist * 60 * 1.1515;
  dist := dist * 1.609344;
  // 2개의 좌표값을 활용해 거리 계산 끝

  if dist <= 0.3 then // 거리가 0.3km이면 맵크기를 4로 설정
    MapLevel := 4
  else if dist <= 0.7 then // 거리가 0.7km이면 맵크기를 5로 설정
    MapLevel := 5
  else if dist <= 1.8 then // 똑같이 반복
    MapLevel := 6
  else if dist <= 3.5 then
    MapLevel := 7
  else if dist <= 7 then
    MapLevel := 8
  else if dist <= 14 then
    MapLevel := 9
  else if dist <= 28 then
    MapLevel := 10
  else if dist <= 56 then
    MapLevel := 11
  else if dist <= 112 then
    MapLevel := 12
  else if dist <= 224 then
    MapLevel := 13
  else if dist <= 448 then // 거리가 448km이면 맵크기 14로 설정
    MapLevel := 14;

  WebBrowser1.EvaluateJavaScript('MapLevels(' + IntToStr(MapLevel) + ');');
  WebBrowser1.EvaluateJavaScript('panTo(' + FloatToStr(MLat) + ',' +
    FloatToStr(MLong) + ');');
end;

procedure TUserMF.Btn_StartClick(Sender: TObject);
var
  checklog: Boolean;
begin

  if Edit_Phone.Text = '' then // raise를 이용한 함수 나오기 (에러처리)
    raise Exception.Create('공기계는 이용할 수 없습니다');

  checklog := demo.Sign_In(Edit_Phone.Text); // 로그인 SQL
  if checklog then
  begin
    TabControl1.ActiveTab := TabItem2;
    Phone := Edit_Phone.Text;
    Timer2.Enabled := True;
    Timer4.Enabled := True;
  end
  else
    MessageDlg('전화번호는 회원님과 택시기사를 연결하기 위해 사용합니다. 전화번호를 등록하시겠습니까?',
      TMsgDlgType.mtInformation, [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], 0,
      procedure(const AResult: TModalResult)
      begin
        if AResult = mrYes then
        begin
          demo.Sign_Up(Edit_Phone.Text);
          TabControl1.ActiveTab := TabItem2;
          Phone := Edit_Phone.Text;
          Timer2.Enabled := True;
        end;
      end);
end;

procedure TUserMF.Btn_Search_CallTaxiClick(Sender: TObject);
{$IFDEF ANDROID}
var
  obj: JObject;
  locationManager: JLocationManager;
{$ENDIF}
begin
{$IFDEF ANDROID}
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

      WebBrowser1.Parent := TabItem3;
      WebBrowser1.EvaluateJavaScript('hideSAMarkers();');
      WebBrowser1.EvaluateJavaScript('MapLevels(5);');
      WebBrowser1.EvaluateJavaScript('panTo(' + Lat + ',' + Long + ');');
      WebBrowser1.EvaluateJavaScript('AddSAMarkers(' + Lat + ',' + Long +
        ',''현재위치'',0);');
      Timer1.Enabled := True;
      NearbyTaxi := Dm.Calc_Distance;
    except
      raise Exception.Create('위치정보가 정확하지 않습니다. 잠시 후 다시 실행해 주세요');
    end;
    Timer3.Enabled := True;
    TabControl1.ActiveTab := TabItem3;
  end
  else
    ShowMessage('GPS를 켜주세요');
{$ENDIF}
end;
procedure TUserMF.Btn_UsageDetailClick(Sender: TObject);
begin
  TabControl1.ActiveTab := TabItem4;
  WebBrowser1.Parent := TabItem4;
  Dm.Get_UD(Phone);
  WebBrowser1.EvaluateJavaScript('hideSAMarkers();');
  WebBrowser1.EvaluateJavaScript('hideMarkers();');
end;

procedure TUserMF.Call_CancelClick(Sender: TObject);
begin
     if not demo.Check_Order(phone) then
     begin
        showmessage('콜택시를 호출 하지 않으셨습니다.');
     end
     else
     begin
        MessageDlg('콜택시를 취소하시겠습니까?',TMSgDlgType.mtInformation,[TMSgDlgBtn.mbYes, TMsgDlgBtn.mbNo],0,
        procedure(const CanResult: TModalResult)
        begin
          if CanResult = mrYes then
          begin
            demo.Del_Order(phone);
          end;
        end);
     end;
end;

procedure TUserMF.Btn_CallTaxiClick(Sender: TObject); //콜택시를 다시 부르기로 부르면 UD테이블에 다시 저장하지 않음
begin
  if NearbyTaxi = 0 then
  begin
    Showmessage('근처에 콜택시가 한대도 존재하지 않습니다.');
  end
  else
  begin
     MessageDlg('근처에 ' + IntToStr(NearbyTaxi) + '대의 콜택시 존재, 콜택시를 부르시겠습니까?',
    TMsgDlgType.mtInformation, [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], 0,
    procedure(const AResult: TModalResult)
    begin
      if AResult = mrYes then
      begin
        if not demo.Check_Order(Phone) then
        begin
          demo.Insert_Order(Phone, Lat, Long, '0');
          ShowMessage('콜택시를 불렀습니다');
          Timer3.Enabled:=false;
          Timer4.Enabled:= True;
          Call_cancel.Enabled := true;
        end
        else
        begin
          MessageDlg('콜택시를 이미 요청했었습니다. 위치를 재변경하시겠습니까?',
            TMsgDlgType.mtInformation, [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], 0,
            procedure(const Result: TModalResult)
            begin
              if Result = mrYes then
              begin
                demo.Update_Order(Phone, Lat, Long);
                ShowMessage('위치가 변경되었습니다');
                Timer4.Enabled:= True;
              end;
            end);
        end;
      end;
    end);
  end;
end;

procedure TUserMF.Btn_ReCallClick(Sender: TObject);
var
  O_Lat: string;
  O_Long: string;
begin
  if ReOrderIndex = -1 then
  begin
    ShowMessage('다시 이용할 항목의 지도 버튼을 눌러주세요');
  end
  else
  begin
    if dm.CheckOrdersDataSet.FieldByName('T_NUM').AsString <> '' then
    raise Exception.Create('현재 택시가 운행중이지 않습니다.');
    MessageDlg(IntToStr(ReOrderIndex + 1) + '번을 재이용하시겠습니까?',
      TMsgDlgType.mtInformation, [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], 0,
      procedure(const AResult: TModalResult)
      begin
        if AResult = mrYes then
        begin
          if not demo.Check_Order(Phone) then
          begin
            Dm.UserQueryDataSet.First;
            Dm.UserQueryDataSet.MoveBy(ReOrderIndex);
            O_Lat := Dm.UserQueryDataSet.FieldByName('UD_SLAT').AsString;
            O_Long := Dm.UserQueryDataSet.FieldByName('UD_SLONG').AsString;
            demo.Insert_Order(Phone, O_Lat, O_Long, '1');
            ShowMessage('콜택시를 불렀습니다');
            Timer4.Enabled:= True;
          end
          else
            ShowMessage('이미 콜택시를 불렀습니다');
        end;
      end);
  end;
end;

procedure TUserMF.Btn_RouteClick(Sender: TObject);
var
  SLat, SLong: string;
  ALat, ALong: string;
begin

  if ReOrderIndex = -1 then
  begin
    ShowMessage('경로를 표시할 지도 버튼을 클릭해주세요');
  end
  else
  begin
    WebBrowser1.EvaluateJavaScript('hideSAMarkers();');
    WebBrowser1.EvaluateJavaScript('hideMarkers();');
    MapLevel := MapLevel - 1;
    WebBrowser1.EvaluateJavaScript('MapLevels(' + IntToStr(MapLevel) + ');');
    Dm.UserQueryDataSet.First; // 데이터테이블의 타겟을 첫번째로이동
    Dm.UserQueryDataSet.MoveBy(ReOrderIndex); // Index블럭만큼 데이터테이블 이동
    Dm.UDDetailDataSet.First;
    count := 0;
    Timer5.Enabled := True;
  end;
end;

procedure TUserMF.Btn_GoBack2Click(Sender: TObject);
begin
  TabControl1.ActiveTab := TabItem2;
  ReOrderIndex := -1;
  Timer5.Enabled := False;
end;

procedure TUserMF.Btn_GoBack1Click(Sender: TObject);
begin
  Timer1.Enabled := False;   //택시 검색 멈춤
  TabControl1.ActiveTab := TabItem2;
  Timer3.Enabled := False;   //현재 상태 점검
end;

procedure TUserMF.FormActivate(Sender: TObject);
begin
  Btn_Start.OnClick(self);
end;

procedure TUserMF.FormCreate(Sender: TObject);
var
{$IFDEF ANDROID}
  TelephonyServiceNative: JObject; // 사용자 전화번호 가져오는 변수
  TelephonyManager: JTelephonyManager; // 사용자 전화번호 가져오는 변수
{$ENDIF}
  aStream: TMemoryStream; // 웹브라우저 초기화변수
begin
  TabControl1.TabPosition := TTabPosition.None;
  TabControl1.ActiveTab := TabItem1;
  Layout1.Height := UserMF.ClientHeight / 3;
  List_UD.Height := UserMF.ClientHeight / 3;
  Lat := '';
  Long := '';
  ReOrderIndex := -1;

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

  // 사용자 전화번호 가져오기
{$IFDEF ANDROID}
  TelephonyServiceNative := SharedActivityContext.getSystemService
    (TJContext.JavaClass.TELEPHONY_SERVICE);
  TelephonyManager := TJTelephonyManager.Wrap
    ((TelephonyServiceNative as ILocalObject).GetObjectID);

  Edit_Phone.Text := JStringToString(TelephonyManager.getLine1Number);
{$ENDIF}
  // 사용자 전화번호 가져오기 끝

end;

procedure TUserMF.LocationSensor1LocationChanged(Sender: TObject;
const OldLocation, NewLocation: TLocationCoord2D);
begin
  Lat := FormatFloat('#.#####', NewLocation.Latitude);
  Long := FormatFloat('#.#####', NewLocation.Longitude);
end;

procedure TUserMF.Timer1Timer(Sender: TObject);
begin
  Dm.Calc_Distance;
  WebBrowser1.EvaluateJavaScript('panTo(' + Lat + ',' + Long + ');');
end;

procedure TUserMF.Timer2Timer(Sender: TObject);
begin
  Timer2.Enabled := False;
  WebBrowser1.EvaluateJavaScript('SetMap(37.56682,126.97865);');
end;

procedure TUserMF.Timer3Timer(Sender: TObject);
begin
  if TextTime = 0 then // 검색중인 상태 표시내기위해
    Text4.Text := '택시 검색중'
  else if TextTime = 1 then
    Text4.Text := '택시 검색중.'
  else if TextTime = 2 then
    Text4.Text := '택시 검색중..'
  else if TextTime = 3 then
    Text4.Text := '택시 검색중...';

  Inc(TextTime);  //값을 일정하게 증가
  TextTime := TextTime mod 4; // mod = 나눈 나머지 값
end;

procedure TUserMF.Timer4Timer(Sender: TObject);
begin
  if demo.Check_Order(Phone) then
  begin
    Dm.CheckOrdersDataSet.Close;
    Dm.CheckOrdersDataSet.Open;
    Dm.CheckOrdersDataSet.First;

    if Dm.CheckOrdersDataSet.FieldByName('T_NUM').AsString = '' then
    begin
     Text2.Text := '현재 콜받은 택시가 없습니다';
     Text5.Text := '현재 콜받은 택시가 없습니다';
    end
    else
    begin
     Text2.Text := '택시번호 '+ Dm.CheckOrdersDataSet.FieldByName('T_NUM').AsString+ '가 회원님을 태우러 오는중입니다';
     Text5.Text := '택시번호 '+ Dm.CheckOrdersDataSet.FieldByName('T_NUM').AsString+ '가 회원님을 태우러 오는중입니다';
     Text4.Text := '택시번호 '+ Dm.CheckOrdersDataSet.FieldByName('T_NUM').AsString+ '가 회원님을 태우러 오는중입니다';
     ShowMessage('택시번호 '+ Dm.CheckOrdersDataSet.FieldByName('T_NUM').AsString+ '가 회원님을 태우러 오는중입니다');
     Timer4.Enabled := False;
     Call_cancel.Enabled := false;
    end;
  end;
end;

procedure TUserMF.Timer5Timer(Sender: TObject);
var
  Time: TDateTime;
//  i : Integer;
begin
 //demo.Get_UD_Detail(Num);
 if count = 0 then
 begin
//SLat := Dm.UserQueryDataSet.FieldByName('UD_SLAT').AsString;
//  SLong := Dm.UserQueryDataSet.FieldByName('UD_SLONG').AsString;

    WebBrowser1.EvaluateJavaScript('AddSAMarkers(' + Dm.UserQueryDataSet.FieldByName('UD_SLAT').AsString + ',' +
    Dm.UserQueryDataSet.FieldByName('UD_SLONG').AsString +
    ',''출발지'',0);');
    WebBrowser1.EvaluateJavaScript('panTo(' + Dm.UserQueryDataSet.FieldByName('UD_SLAT').AsString + ',' +
  Dm.UserQueryDataSet.FieldByName('UD_SLONG').AsString + ');');
 end
 else if Dm.UDDetailDataSet.Eof then
 begin
     WebBrowser1.EvaluateJavaScript('AddSAMarkers(' + Dm.UserQueryDataSet.FieldByName('UD_ALAT').AsString + ','
     + Dm.UserQueryDataSet.FieldByName('UD_ALONG').AsString +
    ',''도착지'',1);');
    WebBrowser1.EvaluateJavaScript('panTo(' + Dm.UserQueryDataSet.FieldByName('UD_ALAT').AsString + ',' +
  Dm.UserQueryDataSet.FieldByName('UD_ALONG').AsString + ');');
    Timer5.Enabled := False;
 end
 else
 begin
//  ALat := Dm.UserQueryDataSet.FieldByName('UD_ALAT').AsString;
//  ALong := Dm.UserQueryDataSet.FieldByName('UD_ALONG').AsString;


// i := 1;

// while not UDDetailDataSet.EOF do
// begin

  Time := Dm.UDDetailDataSet.FieldByName('UD_TIME').AsDateTime;
  WebBrowser1.EvaluateJavaScript('AddTaxiMarkers(' +
        Dm.UDDetailDataSet.FieldByName('UD_LAT').AsString + ',' +
        Dm.UDDetailDataSet.FieldByName('UD_LONG').AsString + ',''' + IntToStr(count) +
        '번 ' + FormatDateTime('ampm hh:nn', Time) + ''');');
  WebBrowser1.EvaluateJavaScript('panTo(' + Dm.UDDetailDataSet.FieldByName('UD_LAT').AsString + ',' +
  Dm.UDDetailDataSet.FieldByName('UD_LONG').AsString + ');');
  Dm.UDDetailDataSet.Next;
 end;
 Inc(count);
end;

procedure TUserMF.Timer6Timer(Sender: TObject);
begin
   if demo.Check_Order(Phone) then
  begin
    Dm.CheckOrdersDataSet.Close;
    Dm.CheckOrdersDataSet.Open;
    Dm.CheckOrdersDataSet.First;

    if Dm.CheckOrdersDataSet.FieldByName('T_NUM').AsString = '' then
    begin
     Text2.Text := '현재 콜받은 택시가 없습니다';
    end
  end;

end;

end.
