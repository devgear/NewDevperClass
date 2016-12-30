unit Umain_Vcl;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, SHDocVw, MSHTML, Vcl.OleCtrls,
  Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components,
  Data.Bind.DBScope;

type
  TPcForm = class(TForm)
    WebBrowser1: TWebBrowser;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    Btn_Payment: TButton;
    Btn_AddMenu: TButton;
    ListBox1: TListBox;
    Timer1: TTimer;
    Memo1: TMemo;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    ComboBox1: TComboBox;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkFillControlToField1: TLinkFillControlToField;
    Timer2: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ListBox1DblClick(Sender: TObject);
    procedure Btn_PaymentClick(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    HTMLWindow2: IHTMLWindow2;
  end;

var
  PcForm: TPcForm;

implementation

uses
  ActiveX, UDm;

{$R *.dfm}

const
  HTMLStr: ANSIString = '<!DOCTYPE html>' + '<html>' + '<head>' +
    '<meta charset="utf-8">' + '<title>다음 지도 API</title>' + '</head>' + '<body>'
    + '<div id="map" style="width:890px;height:350px;"></div>'

    + '<script src="http://apis.daum.net/maps/maps3.js?apikey=68f86bb3c0448b7089e8fcd79e94caf0"></script>'
    + '<script>'

    + 'var map;' + 'var markers = [];'

    + 'var markerImageArray = [''http://postfiles14.naver.net/20150130_237/hunter450_1422563689145EE0NF_PNG/EDIYA.png?type=w3''];'

    + 'function SetMap(lat, long, count){' +
    'var mapContainer = document.getElementById(''map''),' // 지도를 표시할 div
    + 'mapOption = {' + 'center: new daum.maps.LatLng(lat, long),' // 지도의 중심좌표
    + 'level: 4,' // 지도의 확대 레벨
    + 'mapTypeId : daum.maps.MapTypeId.ROADMAP' // 지도종류
    + '};' + 'map = new daum.maps.Map(mapContainer, mapOption);'

    + 'var markerImageUrl = markerImageArray[count],' +
    'markerImageSize = new daum.maps.Size(38, 33),' // 마커 이미지의 크기
    + 'markerImageOptions = {' + 'offset : new daum.maps.Point(19, 33)'
  // 마커 좌표에 일치시킬 이미지 안의 좌표
    + '};'

    + 'var markerImage = new daum.maps.MarkerImage(markerImageUrl, markerImageSize, markerImageOptions);'

    + 'marker = new daum.maps.Marker({' +
    'position: new daum.maps.LatLng(lat, long),' + 'image : markerImage,' +
    'map: map' + '});' + '}'

    + 'function AddCafeMarkers(lat,long, count){' // 카페 마커 추가
    + 'var markerImageUrl = markerImageArray[count],' +
    'markerImageSize = new daum.maps.Size(38, 33),' + 'markerImageOptions = {' +
    'offset : new daum.maps.Point(19, 33)' + '};' +
    'var markerImage = new daum.maps.MarkerImage(markerImageUrl, markerImageSize, markerImageOptions);'

    + 'var marker = new daum.maps.Marker({' +
    'position: new daum.maps.LatLng(lat,long),' // 마커의 좌표
    + 'image : markerImage,' // 마커의 이미지
    + 'map: map' // 마커를 표시할 지도 객체
    + '});' + '}'

    + 'function AddCustMarkers(lat, long, name){' // 손님 위치 마커 추가
    + 'var markerImageUrl = ''http://postfiles16.naver.net/20150130_239/hunter450_1422569121242T7voO_PNG/User.png?type=w3'','
    + 'markerImageSize = new daum.maps.Size(25, 33),' // 마커 이미지의 크기
    + 'markerImageOptions = {' + 'offset : new daum.maps.Point(13, 33)'
  // 마커 좌표에 일치시킬 이미지 안의 좌표
    + '};'

    + 'var markerImage = new daum.maps.MarkerImage(markerImageUrl, markerImageSize, markerImageOptions);'

    + 'marker = new daum.maps.Marker({' +
    'position: new daum.maps.LatLng(lat, long),' + 'image : markerImage,' +
    'map: map' + '});'

    + 'daum.maps.event.addListener(marker, ''click'', (function(marker) {'
  // 손님 마커 클릭 시 이벤트 등록
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

    + '</script>' + '</body>' + '</html>';

procedure TPcForm.Btn_PaymentClick(Sender: TObject); // 결제 완료 버튼
begin
  if MessageDlg(ListBox1.Items[ListBox1.ItemIndex] + ' 결제 완료 하시겠습니까?',
    mtConfirmation, [mbOK, mbCancel], 0) = mrok then
  begin
    try
      demo.Delete_Reserve(Dm.GetReserveDataSet.FieldByName('R_NUM').AsString);
      // 결제 완료 및 지우기
    except
      raise Exception.Create('삭제 실패, 잠시 후 다시 시도해 주세요.');
    end;
    Dec(Dm.BeforeRNum);
    ListBox1.Items[ListBox1.ItemIndex].Empty;
    Memo1.Lines.Clear;
    ShowMessage('결제가 완료 되었습니다.');
  end;
end;

procedure TPcForm.ComboBox1Change(Sender: TObject); // 해당 지점 손님 확인
var
  lat, long: string;
  a: integer;
begin
  Dm.CurrentRNum := 0;
  Dm.BeforeRNum := 0;
  a := ComboBox1.ItemIndex;
  Dm.CafeInfoDataSet.First;
  Dm.CafeInfoDataSet.MoveBy(ComboBox1.ItemIndex);
  lat := Dm.CafeInfoDataSet.FieldByName('C_LAT').AsString;
  // 선택한 까페지점의 위도 경도 받아오기
  long := Dm.CafeInfoDataSet.FieldByName('C_LONG').AsString;

  HTMLWindow2.execScript('panTo(' + lat + ',' + long + ')', 'JavaScript');
  // 해당 지점으로 지도API 화면 이동

  Timer1Timer(Timer1);

end;

procedure TPcForm.FormCreate(Sender: TObject);
var
  aStream: TMemoryStream;
begin
  WebBrowser1.Navigate('about:blank');
  if Assigned(WebBrowser1.Document) then // 다음 지도 API사용을 위한 초기 작업
  begin
    aStream := TMemoryStream.Create;
    try
      aStream.WriteBuffer(Pointer(HTMLStr)^, Length(HTMLStr));
      aStream.Seek(0, soFromBeginning);
      (WebBrowser1.Document as IPersistStreamInit)
        .Load(TStreamAdapter.Create(aStream));
    finally
      aStream.Free;
    end;
    HTMLWindow2 := (WebBrowser1.Document as IHTMLDocument2).parentWindow;

  end;

end;

procedure TPcForm.ListBox1Click(Sender: TObject); // 손님 정보 아이템 클릭
var
  lat, long: string;
begin
  Dm.GetReserveDataSet.First;
  Dm.GetReserveDataSet.MoveBy(ListBox1.ItemIndex);
  lat := Dm.GetReserveDataSet.FieldByName('U_LAT').AsString;
  long := Dm.GetReserveDataSet.FieldByName('U_LONG').AsString;
  HTMLWindow2.execScript('panTo(' + lat + ',' + long + ')', 'JavaScript');
  // 해당 손님의 위치로 지도 화면 이동
end;

procedure TPcForm.ListBox1DblClick(Sender: TObject); // 손님 정보 아이템 더블 클릭
begin
  Dm.GetReserveDataSet.First;
  Dm.GetReserveDataSet.MoveBy(ListBox1.ItemIndex); // 손님 상세 예약 정보 출력
  Dm.Get_Reserve_Detail;
end;

procedure TPcForm.Timer1Timer(Sender: TObject); // 지정된 시간마다 예약된 손님 정보 갱신
begin
  Dm.Get_Reserve;
  StaticText2.Caption := IntToStr(Dm.GetReserveDataSet.RecordCount);
end;

procedure TPcForm.Timer2Timer(Sender: TObject); // 지도 API 출력
var
  lat, long: string;
begin
  Timer2.Enabled := false; // 한번만 작동
  lat := Dm.CafeInfoDataSet.FieldByName('C_LAT').AsString;
  long := Dm.CafeInfoDataSet.FieldByName('C_LONG').AsString;
  HTMLWindow2.execScript('SetMap(' + lat + ',' + long + ',0)', 'JavaScript'); // 지도 API생성

  while not Dm.CafeInfoDataSet.Eof do // 생성된 지도 API에 까페 위치 아이콘 뿌리기
  begin
    Dm.CafeInfoDataSet.Next;
    lat := Dm.CafeInfoDataSet.FieldByName('C_LAT').AsString;
    long := Dm.CafeInfoDataSet.FieldByName('C_LONG').AsString;
    HTMLWindow2.execScript('AddCafeMarkers(' + lat + ',' + long + ', 0)',
      'JavaScript');
  end;

  Dm.CafeInfoDataSet.First;
end;

end.
