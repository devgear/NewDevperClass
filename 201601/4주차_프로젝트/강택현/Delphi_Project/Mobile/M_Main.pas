unit M_Main;

interface

uses
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, System.Sensors,
  System.Sensors.Components, FMX.Controls.Presentation, FMX.StdCtrls,
  FMX.TabControl, FMX.Dialogs, FMX.Edit,
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  FMX.Bind.DBEngExt, System.Rtti,
  Data.Bind.DBScope, FMX.Layouts, FMX.WebBrowser, FMX.ScrollBox, FMX.Memo,
  FMX.ListBox, FMX.ListView.Types, FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base, FMX.ListView, System.Bindings.Outputs,
  FMX.Bind.Editors, Data.Bind.EngExt, Data.Bind.Components, DBXJSON,
  System.Variants, FMX.Objects;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    btnFind_Loc: TButton;
    LocationSensor1: TLocationSensor;
    ToolBar2: TToolBar;
    Label4: TLabel;
    swActiveSensor: TSwitch;
    Label6: TLabel;
    edt_Name: TEdit;
    edt_Lat: TEdit;
    edt_Lng: TEdit;
    WebBrowser1: TWebBrowser;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    TabItem3: TTabItem;
    TabItem4: TTabItem;
    Button1: TButton;
    M_Join_Member: TListBox;
    M_Chat_List: TMemo;
    M_edt_Chat: TEdit;
    Button2: TButton;
    Label3: TLabel;
    edt_M_Room_Create: TEdit;
    Button3: TButton;
    ListView1: TListView;
    M_edt_JoinRoom: TEdit;
    Button4: TButton;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkListControlToField1: TLinkListControlToField;
    LinkControlToField1: TLinkControlToField;
    M_Loc_Mark: TTimer;
    M_Meet_Click: TTimer;
    W_Loc_Mark: TTimer;
    Button5: TButton;
    Label5: TLabel;
    Button6: TButton;
    Button7: TButton;
    Label7: TLabel;
    StyleBook1: TStyleBook;
    Image1: TImage;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    procedure btnFind_LocClick(Sender: TObject);
    procedure LocationSensor1LocationChanged(Sender: TObject;
      const [Ref] OldLocation, NewLocation: TLocationCoord2D);
    procedure swActiveLocationSensor1(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure M_Loc_MarkTimer(Sender: TObject);
    procedure M_Meet_ClickTimer(Sender: TObject);
    procedure W_Loc_MarkTimer(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure TabItem3Click(Sender: TObject);
    procedure TabItem1Click(Sender: TObject);
    procedure TabItem2Click(Sender: TObject);
    procedure TabItem4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ImageViewer1Click(Sender: TObject);
    // procedure FormFocusChanged(Sender: TObject);
    // procedure FormVirtualKeyboardShown(Sender: TObject;
    // KeyboardVisible: Boolean; const [Ref] Bounds: TRect);
    // procedure FormVirtualKeyboardHidden(Sender: TObject;
    // KeyboardVisible: Boolean; const [Ref] Bounds: TRect);
  private
    { Private declarations }
    FGeocoder: TGeocoder;
    procedure OnGeocodeReverseEvent(const Address: TCivicAddress);
    // FKBBounds: TRectF;
    // FNeedOffset: Boolean;
    // procedure CalcContentBoundsProc(Sender: TObject; var ContentBounds: TRectF);
    // procedure RestorePosition;
    // procedure UpdateKBBounds;
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  room: string;
  join_room: Boolean = false;
  exit_room: Boolean = true;
  trans_lat, trans_lng: string;

implementation

{$R *.fmx}

uses System.Math, M_DataModule;

const
  htmlstr: Unicodestring = '<!DOCTYPE html>' + '<html>' + '<head>' +
    '<meta charset="utf8">' + '<title>지도 생성하기</title>' + '<style>' +
    '  .map_wrap, .map_wrap * {margin:0; padding:0;font-family:''Malgun Gothic'',dotum,''돋움'',sans-serif;font-size:12px;} '
    + '.map_wrap {position:relative;width:100%;height:300px;}   ' +
    '.places, .places * {margin:0; padding:0;font-family:''Malgun Gothic'',dotum,''돋움'',sans-serif;font-size:12px;} '
    + '.places {position:relative;width:100%;height:64px;}  ' +
    '#category {top:10px;left:10px;border-radius: 5px; border:1px solid #909090;box-shadow: 0 1px 1px rgba(0, 0, 0, 0.4);background: #fff;overflow: hidden;z-index: 2;}'
    + '#category li {float:left;list-style: none;width:50px;px;border-right:1px solid #acacac;padding:6px 0;text-align: center; cursor: pointer;} '
    + '#category li.on {background: #eee;}' +
    '#category li:hover {background: #ffe6e6;border-left:1px solid #acacac;margin-left: -1px;} '
    + '#category li:last-child{margin-right:0;border-right:0;}' +
    '#category li span {display: block;margin:0 auto 3px;width:27px;height: 28px;} '
    + '#category li .category_bg {background:url(http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/places_category.png) no-repeat;} '
    + '#category li .pharmacy {background-position: -10px -72px;}  ' +
    '#category li.on .category_bg {background-position-x:-46px;}' +
    '.placeinfo_wrap {position:absolute;bottom:28px;left:-150px;width:300px;}' +
    '.placeinfo {position:relative;width:100%;border-radius:6px;border: 1px solid #ccc;border-bottom:2px solid #ddd;padding-bottom: 10px;background: #fff;} '
    + '.placeinfo:nth-of-type(n) {border:0; box-shadow:0px 1px 2px #888;} ' +
    '.placeinfo_wrap .after {content:'''';position:relative;margin-left:-12px;left:50%;width:22px;height:12px;background:url(''http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png'')} '
    + '.placeinfo a, .placeinfo a:hover, .placeinfo a:active{color:#fff;text-decoration: none;} '
    + '.placeinfo a, .placeinfo span {display: block;text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}'
    + '.placeinfo span {margin:5px 5px 0 5px;cursor: default;font-size:13px;} '
    + '.placeinfo .title {font-weight: bold; font-size:14px;border-radius: 6px 6px 0 0;margin: -1px -1px 0 -1px;padding:10px;'
    + ' color: #fff;background: #d95050;background: #d95050 url(http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/arrow_white.png) no-repeat right 14px center;}  '
    + '.placeinfo .tel {color:#0f7833;}' +
    '.placeinfo .jibun {color:#999;font-size:11px;margin-top:0;} ' +
    '#container {overflow:hidden;height:300px;position:relative;}                                                                                                                                                        '
    + '#btnRoadview,  #btnMap {top:5px;left:5px;padding:7px 12px;font-size:12px;border: 1px solid #dbdbdb;background-color: #fff;border-radius: 5px;box-shadow: 0 1px 1px rgba(0,0,0,.04);z-index:1;cursor:pointer;}       '
    + '#btnRoadview:hover,  #btnMap:hover{background-color: #fcfcfc;border: 1px solid #c1c1c1;}                                                                                                                            '
    + '#container.view_map #map_Wrap {z-index: 10;}                                                                                                                                                                        '
    + '#container.view_map #btnMap {display: none;}                                                                                                                                                                        '
    + '#container.view_roadview #map_Wrap {z-index: 0;}                                                                                                                                                                    '
    + '#container.view_roadview #btnRoadview {display: none;}                                                                                                                                                              '
    + '   .MapWalker {position:absolute;margin:-26px 0 0 -51px}                                                                                            '
    + '   .MapWalker .figure {position:absolute;width:25px;left:38px;top:-2px;                                                                             '
    + '       height:39px;background:url(http://i1.daumcdn.net/localimg/localimages/07/2012/roadview/roadview_minimap_wk.png) -298px -114px no-repeat}     '
    +

    '</style>' + '</head>' + '<body>' +

    '<div id="container" class="view_map">                                                                                                                              '
    + '    <div id="map_Wrap" style="width:100%;height:300px;position:relative;">                                                                                         '
    + '        <div id="map" style="width:100%;height:100%"></div>                                                                    '
    + '    </div>                                                                                                                                                         '
    + '    <div id="rvWrapper" style="width:100%;height:300px;position:absolute;top:0;left:0;">                                                                           '
    + '        <div id="roadview" style="height:100%"></div>                                                                        '
    + '    </div>                                                                                                                                                         '
    + '</div>                                                                                                                                                             '
    + '<div id="footer"> <input type="button" id="btnMap" onclick="toggleMap(true)" title="지도 보기" value="지도">                                                       '
    + '<input type="button" id="btnRoadview" onclick="toggleMap(false)" title="로드뷰 보기" value="로드뷰"></div>                                                         '
    +

  // setTimeout(function(){},2000);
    '<script type="text/javascript" src="http://apis.daum.net/maps/maps3.js?apikey=129496d49adf0fecff26ee145d7ccbd1&libraries=services"></script>'
    +

    '<script type="text/javascript">' + 'var mapContainer,mapOption;' +
    'var lat=0,lng=0;' + 'var count=0;' + 'var points=[];' +
    'var bounds = new daum.maps.LatLngBounds();' + 'var flag = false;' +
    'var name;' +
  // 마커를 클릭했을 때 해당 장소의 상세정보를 보여줄 커스텀오버레이입니다
    '   var placeOverlay = new daum.maps.CustomOverlay({zIndex:1}),                                         '
    +
  // 커스텀 오버레이의 컨텐츠 엘리먼트 입니다
    '   contentNode = document.createElement(''div''),            ' +
  // 마커를 담을 배열입니다
    '   markers = [],                                                              '
    +
  // 현재 선택된 카테고리를 가지고 있을 변수입니다
    '   currCategory = '''';                                 ' +

    'mapContainer = document.getElementById("map"),' + // 지도를 표시할 div
    'mapOption = {' + 'center: new daum.maps.LatLng(37.56682, 126.97865),' +
  // 지도의 중심좌표
    'level: 4' + // 지도의 확대 레벨
    '};' +
  // 지도를 생성한다
    'var map = new daum.maps.Map(mapContainer, mapOption);' +

  // 장소 검색 객체를 생성합니다
    'var ps = new daum.maps.services.Places(map);             ' +

  // 지도에 idle 이벤트를 등록합니다
    'daum.maps.event.addListener(map, ''idle'', searchPlaces);   ' +

  // 커스텀 오버레이의 컨텐츠 노드에 css class를 추가합니다
    'contentNode.className = ''placeinfo_wrap'';                ' +

  // 커스텀 오버레이의 컨텐츠 노드에 mousedown, touchstart 이벤트가 발생했을때
  // 지도 객체에 이벤트가 전달되지 않도록 이벤트 핸들러로 daum.maps.event.preventMap 메소드를 등록합니다
    'addEventHandle(contentNode, ''mousedown'', daum.maps.event.preventMap);   '
    + 'addEventHandle(contentNode, ''touchstart'', daum.maps.event.preventMap);  '
    +

  // 커스텀 오버레이 컨텐츠를 설정합니다
    'placeOverlay.setContent(contentNode);                         ' +
  // 각 카테고리에 클릭 이벤트를 등록합니다
    'addCategoryClickEvent();                                      ' +
  // 엘리먼트에 이벤트 핸들러를 등록하는 함수입니다
    'function addEventHandle(target, type, callback) {             ' +
    '    if (target.addEventListener) {                            ' +
    '        target.addEventListener(type, callback);              ' +
    '    } else {                                                  ' +
    '        target.attachEvent(''on'' + type, callback);          ' +
    '    }                                                         ' +
    '}                                                             ' +

  // 카테고리 검색을 요청하는 함수입니다
    'function searchPlaces() {                                                                       '
    + '    if (!currCategory) {                                                                        '
    + '        return;                                                                                 '
    + '    }                                                                                           '
    +
  // 커스텀 오버레이를 숨깁니다
    '    placeOverlay.setMap(null);                                                                  '
    +
  // 지도에 표시되고 있는 마커를 제거합니다
    '    removeMarker();                                                                             '
    + '    ps.categorySearch(currCategory, placesSearchCB,{location: new daum.maps.LatLng(lat,lng)});                       '
    + '}                                                                                               '
    +
  // 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
    'function placesSearchCB( status, data, pagination ) {                                           '
    + '    if (status === daum.maps.services.Status.OK) {                                              '
    +
  // 정상적으로 검색이 완료됐으면 지도에 마커를 표출합니다
    '        displayPlaces(data.places);                                                             '
    + '    } else if (status === daum.maps.services.Status.ZERO_RESULT) {                              '
    +
  // 검색결과가 없는경우 해야할 처리가 있다면 이곳에 작성해 주세요
    '    } else if (status === daum.maps.services.Status.ERROR) {                                    '
    +
  // 에러로 인해 검색결과가 나오지 않은 경우 해야할 처리가 있다면 이곳에 작성해 주세요
    '    }                                                                                           '
    + '}                                                                                               '
    +

  // 지도에 마커를 표출하는 함수입니다
    'function displayPlaces(places) {  ' +

  // 몇번째 카테고리가 선택되어 있는지 얻어옵니다
  // 이 순서는 스프라이트 이미지에서의 위치를 계산하는데 사용됩니다
    '    var order = document.getElementById(currCategory).getAttribute(''data-order'');                                   '
    + '    for ( var i=0; i<places.length; i++ ) {                                                                         '
    +
  // 마커를 생성하고 지도에 표시합니다
    '            var marker = addMarker(new daum.maps.LatLng(places[i].latitude, places[i].longitude), order);           '
    +
  // 마커와 검색결과 항목을 클릭 했을 때
  // 장소정보를 표출하도록 클릭 이벤트를 등록합니다
    '            (function(marker, place) {                                                                              '
    + '                daum.maps.event.addListener(marker, ''click'', function() {                                         '
    + '                    displayPlaceInfo(place);                                                                        '
    + '               });                                                                                                 '
    + '           })(marker, places[i]);                                                                                  '
    + '   }                                                                                                              '
    + '}                                                                                                                   '
    +

  // 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
    'function addMarker(position, order) {                                                                                     '
    + '   var imageSrc = ''http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/places_category.png'',                      '
    +
  // 마커 이미지 url, 스프라이트 이미지를 씁니다
  // 마커 이미지의 크기
    '       imageSize = new daum.maps.Size(27, 28),                                                     '
    + '       imgOptions =  {                                                                                                  '
    +
  // 스프라이트 이미지의 크기
    '           spriteSize : new daum.maps.Size(72, 208),                                         '
    +
  // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
    '           spriteOrigin : new daum.maps.Point(46, (order*36)),        ' +
  // 마커 좌표에 일치시킬 이미지 내에서의 좌표
    '           offset: new daum.maps.Point(11, 28)                            '
    + '       },                                                                                                               '
    + '       markerImage = new daum.maps.MarkerImage(imageSrc, imageSize, imgOptions),                                        '
    + '           marker = new daum.maps.Marker({                                                                              '
    +
  // 마커의 위치
    '           position: position,                                                                           '
    + '           image: markerImage                                                                                           '
    + '       });                                                                                                              '
    +
  // 지도 위에 마커를 표출합니다
    '   marker.setMap(map);                                                                    '
    +
  // 배열에 생성된 마커를 추가합니다
    '   markers.push(marker);                                                             '
    + '   return marker;                                                                                                       '
    + '}                                                                                                                        '
    +

  // 지도 위에 표시되고 있는 마커를 모두 제거합니다
    'function removeMarker() {                               ' +
    '    for ( var i = 0; i < markers.length; i++ ) {        ' +
    '        markers[i].setMap(null);                        ' +
    '    }                                                   ' +
    '    markers = [];                                       ' +
    '}                                                       ' +

  // 클릭한 마커에 대한 장소 상세정보를 커스텀 오버레이로 표시하는 함수입니다
    'function displayPlaceInfo (place) {                                                                                                                                  '
    + 'var content = ''<div class="placeinfo">'' + ' +
    ' ''   <a class="title" href="'' + place.placeUrl + ''" target="_blank" title="'' + place.title + ''">'' + place.title + ''</a>'';   '
    +

    ' if (place.newAddress) {' +
    ' content += ''    <span title="'' + place.newAddress + ''">'' + place.newAddress + ''</span>'' +   '
    + '    ''  <span class="jibun" title="'' + place.address + ''">(지번 : '' + place.address + '')</span>'';  '
    + '}  else {' +
    ' content += ''    <span title="'' + place.address + ''">'' + place.address + ''</span>'';      '
    + ' }  ' +

    ' content += ''    <span class="tel">'' + place.phone + ''</span>'' + ' +
    '   ''</div>'' +    ' + ' ''<div class="after"></div>'';  ' +
    '   contentNode.innerHTML = content;                                                                                                                                 '
    + '   placeOverlay.setPosition(new daum.maps.LatLng(place.latitude, place.longitude));                                                                                 '
    + '   placeOverlay.setMap(map);                                                                                                                                        '
    + '}                                                                                                                                                                    '
    +

  // 각 카테고리에 클릭 이벤트를 등록합니다
    'function addCategoryClickEvent() {                              ' +
    '    var category = document.getElementById(''category''),         ' +
    '        children = category.children;                           ' +
    '    for (var i=0; i<children.length; i++) {                     ' +
    '        children[i].onclick = onClickCategory;                  ' +
    '    }                                                           ' +
    '}                                                               ' +

  // 카테고리를 클릭했을 때 호출되는 함수입니다
    'function onClickCategory() {                                  ' +
    '    var id = this.id,                                        ' +
    '        className = this.className;                          ' +
    '    placeOverlay.setMap(null);                               ' +
    '    if (className === ''on'') {                              ' +
    '        currCategory = '''';                                 ' +
    '        changeCategoryClass();                               ' +
    '        removeMarker();                                      ' +
    '    } else {                                                 ' +
    '        currCategory = id;                                   ' +
    '        changeCategoryClass(this);                           ' +
    '        searchPlaces();                                      ' +
    '    }                                                        ' +
    '}                                                            ' +

  // 클릭된 카테고리에만 클릭된 스타일을 적용하는 함수입니다
    'function changeCategoryClass(el) {                             ' +
    '    var category = document.getElementById(''category''),        ' +
    '        children = category.children,                          ' +
    '        i;                                                     ' +

    '    for ( i=0; i<children.length; i++ ) {                      ' +
    '        children[i].className = '''';                            ' +
    '    }                                                          ' +

    '    if (el) {                                                  ' +
    '        el.className = ''on'';                                   ' +
    '    }                                                          ' +
    '}                                                              ' +

  // 지도와 로드뷰를 감싸고 있는 div의 class를 변경하여 지도를 숨기거나 보이게 하는 함수입니다
    'function toggleMap(active) {  ' + ' if (active) { ' +
  // 지도가 보이도록 지도와 로드뷰를 감싸고 있는 div의 class를 변경합니다
    '  container.className = "view_map" ' + ' } else {   ' +
    'if (flag){          ' +
  // 지도가 숨겨지도록 지도와 로드뷰를 감싸고 있는 div의 class를 변경합니다
    'container.className = "view_roadview";' +
  // 'roadViewFloat();
    '}' + 'else {' + ' alert(''만날 장소를 정해주세요!'');}' + ' }  ' + '}' +

    '  function roadViewFloat(){  ' +

    'var mapCenter =  new daum.maps.LatLng(lat/count, lng/count);' +
    'var rvContainer = document.getElementById(''roadview''); ' +
  // 로드뷰를 표시할 div
    'var rv = new daum.maps.Roadview(rvContainer);' +
  // 로드뷰 객체
    'var rvClient = new daum.maps.RoadviewClient(); ' +
  // 좌표로부터 로드뷰 파노ID를 가져올 로드뷰 helper객체

    'toggleRoadview(mapCenter);' +

  // 마커 이미지를 생성합니다.
    'var markImage = new daum.maps.MarkerImage( ' +
    '     ''http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/roadview_wk.png'', '
    + '  new daum.maps.Size(35,39), ' + ' { ' +
  // 마커의 좌표에 해당하는 이미지의 위치를 설정합니다.
  // 이미지의 모양에 따라 값은 다를 수 있으나, 보통 width/2, height를 주면 좌표에 이미지의 하단 중앙이 올라가게 됩니다.
    '  offset: new daum.maps.Point(14, 39)' + '   }  ' + '); ' +

  // 드래그가 가능한 마커를 생성합니다.
    'var rvMarker = new daum.maps.Marker({    ' +
    '    image : markImage,                   ' +
    '    position: mapCenter,                 ' +
    '    draggable: true,                     ' +
    '    map: map                             ' +
    '});                                      ' +

  // 마커에 dragend 이벤트를 할당합니다
    'daum.maps.event.addListener(rvMarker, ''dragend'', function(mouseEvent) {'
    + '    var position = rvMarker.getPosition(); ' +
  // 현재 마커가 놓인 자리의 좌표
    '    toggleRoadview(position);' +
  // 로드뷰를 토글합니다
    '});   ' +

  // 지도에 클릭 이벤트를 할당합니다
    'daum.maps.event.addListener(map, ''click'', function(mouseEvent){  ' +

  // 현재 클릭한 부분의 좌표를 리턴
    '  var position = mouseEvent.latLng;' +

    '  rvMarker.setPosition(position);' + ' toggleRoadview(position);' +
  // 로드뷰를 토글합니다
    '});  ' +

  // 로드뷰 toggle함수
    'function toggleRoadview(position){' +

  // 전달받은 좌표(position)에 가까운 로드뷰의 panoId를 추출하여 로드뷰를 띄웁니다
    'rvClient.getNearestPanoId(position, 50, function(panoId) { ' +
    ' if (panoId === null) {   ' + '  rvContainer.style.display = ''none'';' +
  // 로드뷰를 넣은 컨테이너를 숨깁니다
    '  map_Wrap.style.width = ''100%'';  ' + '  map.relayout();  ' +
    '  } else { ' + '   map_Wrap.style.width = ''100%''; ' +
    ' map.relayout(); ' +
  // 지도를 감싸고 있는 영역이 변경됨에 따라, 지도를 재배열합니다
    '  rvContainer.style.display = ''block'';' +
  // 로드뷰를 넣은 컨테이너를 보이게합니다
    '  rv.setPanoId(panoId, position);' +
  // panoId를 통한 로드뷰 실행
    'rv.relayout();' + // 로드뷰를 감싸고 있는 영역이 변경됨에 따라, 로드뷰를 재배열합니다
    ' }                 ' + '   }); ' + '} ' + '}' +

    'function insertName(hname){name = hname;}' +

    'function check(hlat,hlng) {' + 'var lat2=hlat,lng2=hlng;' +
    'lat = lat+ lat2;' + 'lng = lng+ hlng;' +
    'points[count]=new daum.maps.LatLng(hlat, hlng);' +
    'bounds.extend(points[count]);' + ' map.setBounds(bounds);' +
    'count=count+1;' +
  // 결과값으로 받은 위치를 마커로 표시합니다
    ' var marker = new daum.maps.Marker({   ' +
    'position: new daum.maps.LatLng(hlat, hlng) ,   ' + ' map: map });    ' +
  // 인포윈도우로 장소에 대한 설명을 표시합니다
    ' var infowindow = new daum.maps.InfoWindow({   ' +
    '  content: ''<div style="padding:5px;">''+name+''</div>''  ' + '  });  ' +
    '  infowindow.open(map, marker); } ' +
  // searchMap func 끝

    'function searchMap(name,address) {' +
    ' var geocoder = new daum.maps.services.Geocoder();  ' +
  // 주소로 좌표를 검색합니다
    'geocoder.addr2coord(address, function(status, result) { ' +

  // 정상적으로 검색이 완료됐으면
    '  if (status === daum.maps.services.Status.OK) {  ' +

    '  var coords = new daum.maps.LatLng(result.addr[0].lat, result.addr[0].lng),position; '
    + 'lat = lat+ result.addr[0].lat;' + 'lng = lng+ result.addr[0].lng;' +
    'points[count]=coords;' + 'bounds.extend(points[count]);' +
    ' map.setBounds(bounds);' + 'count=count+1;' +
  // 결과값으로 받은 위치를 마커로 표시합니다
    ' var marker = new daum.maps.Marker({   ' + 'position: coords,   ' +
    ' map: map ' + ' });    ' +
  // 인포윈도우로 장소에 대한 설명을 표시합니다
    ' var infowindow = new daum.maps.InfoWindow({   ' +
    '  content: ''<div style="padding:5px;">''+name+''</div>'' });  ' +
    '  infowindow.open(map, marker); ' + '  } ' + '}); } ' +

    'function meetHere(){' + 'flag = true;' +
    'var marker = new daum.maps.Marker({  ' + '  map: map, ' +
    'position: new daum.maps.LatLng(lat/count, lng/count) ' + '   });   ' +

  // 인포윈도우로 장 소에 대한 설명을 표시합니다
    '   var infowindow = new daum.maps.InfoWindow({  ' +
    '  content: ''<div style="padding:5px;">여기서 만나!</div>''  ' + ' });  ' +
    ' infowindow.open(map, marker);' + 'roadViewFloat();' + '}' +
  // hereMeet func 끝

    '</script>' + '</body>' + '</html>';

procedure TForm3.btnFind_LocClick(Sender: TObject);
begin
  if edt_Name.Text <> '' then
  begin
    if edt_Lat.Text <> '' then
    begin
      dm.Insert_Qrt(edt_Name.Text, trans_lat, trans_Lng, room);
      btnFind_Loc.Enabled := false;
    end
    else
      showmessage('위치를 찾지 못했습니다.');
  end
  else
    showmessage('이름을 입력해 주세요.');
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
  if meet_Count > 1 then
  begin
    dm.btn_HereMeet_Click(room);
    Button1.Enabled := false;
  end
  else
    showmessage('두명 이상 모여주세요!');
end;

procedure TForm3.Button2Click(Sender: TObject);
var
  chatting: string;
begin
  if edt_Name.Text <> '' then
  begin
    chatting := #13#10 + edt_Name.Text + ': ' + M_edt_Chat.Text;
    dm.Chat_Log(chatting, room);
    M_edt_Chat.Text := '';
  end
  else
    showmessage('내용을 입력하세요!');
end;

procedure TForm3.Button3Click(Sender: TObject); // 채팅방 생성
begin
  room := edt_M_Room_Create.Text;
  dm.Create_Room(room);
  DataModule1.M_ChannelManager.ChannelName := room;
  DataModule1.M_ChannelManager.RegisterCallback(room,
    TM_Client_Callback.Create());
  showmessage('방을 생성하였습니다.');
  join_room := true;
  exit_room := false;
  M_Join_Member.items.Add('접속자 목록');
  TabControl1.ActiveTab := TabItem3;
end;

procedure TForm3.Button4Click(Sender: TObject); // 채팅방 참가
begin
  room := M_edt_JoinRoom.Text;
  DataModule1.M_ChannelManager.ChannelName := room;
  DataModule1.M_ChannelManager.RegisterCallback(room,
    TM_Client_Callback.Create());
  showmessage('방에 참가하였습니다.');
  join_room := true;
  exit_room := false;
  M_Join_Member.items.Add('접속자 목록');
  TabControl1.ActiveTab := TabItem3;
end;

procedure TForm3.Button5Click(Sender: TObject); // 방 나가기
var
  aStream: TMemoryStream;
begin
  aStream := TMemoryStream.Create;
  try
    aStream.WriteBuffer(Pointer(htmlstr)^, Length(htmlstr)); // 자바스크립트 읽어오기
    aStream.Seek(0, soFromBeginning);
    WebBrowser1.LoadFromStrings(htmlstr, htmlstr);
  finally
    aStream.Free;
  end;
  // 웹브라우저 초기화 끝
  DataModule1.M_ChannelManager.UnregisterCallback(room);
  edt_Lat.Text := '';
  edt_Lng.Text := '';
  M_Join_Member.items.Clear;
  M_Chat_List.Lines.Clear;
  btnFind_Loc.Enabled := true;
  Button1.Enabled := true;
  join_room := false;
  exit_room := true;
  TabControl1.ActiveTab := TabItem1;
end;

procedure TForm3.Button6Click(Sender: TObject);
begin
  DataModule1.location_trans.Refresh;
end;

procedure TForm3.Button7Click(Sender: TObject);
begin
  Form3.Destroy;
end;

// procedure TForm3.CalcContentBoundsProc(Sender: TObject;
// var ContentBounds: TRectF);
// begin
// if FNeedOffset and (FKBBounds.Top > 0) then
// begin
// ContentBounds.Bottom := Max(ContentBounds.Bottom,
// 2 * ClientHeight - FKBBounds.Top);
// end;
// end;

procedure TForm3.FormCreate(Sender: TObject);
var
  aStream: TMemoryStream;
begin
  WebBrowser1.Navigate('about:blank');
  aStream := TMemoryStream.Create;
  try
    aStream.WriteBuffer(Pointer(htmlstr)^, Length(htmlstr)); // 자바스크립트 읽어오기
    aStream.Seek(0, soFromBeginning);
    WebBrowser1.LoadFromStrings(htmlstr, htmlstr);
  finally
    aStream.Free;
    TabControl1.TabIndex := 0;
    // M_Chat_List.OnCalcContentBounds := CalcContentBoundsProc;
  end;
  // 웹브라우저 초기화 끝
end;

procedure TForm3.FormDestroy(Sender: TObject);
begin
  Form3.Close;
end;

procedure TForm3.ImageViewer1Click(Sender: TObject);
begin

end;

// procedure TForm3.FormFocusChanged(Sender: TObject);
// begin
// UpdateKBBounds;
// end;

// procedure TForm3.FormVirtualKeyboardHidden(Sender: TObject;
// KeyboardVisible: Boolean; const [Ref] Bounds: TRect);
// begin
// FKBBounds.create(0, 0, 0, 0);
// FNeedOffset := false;
// RestorePosition;
// end;

// procedure TForm3.FormVirtualKeyboardShown(Sender: TObject;
// KeyboardVisible: Boolean; const [Ref] Bounds: TRect);
// begin
// FKBBounds := TRectF.create(Bounds);
// FKBBounds.TopLeft := ScreenToClient(FKBBounds.TopLeft);
// FKBBounds.BottomRight := ScreenToClient(FKBBounds.BottomRight);
// UpdateKBBounds;
// end;

procedure TForm3.LocationSensor1LocationChanged(Sender: TObject;
  const [Ref] OldLocation, NewLocation: TLocationCoord2D);
var
  x, y: string;
begin
  // if swActiveSensor.IsChecked = true then
  // begin
  swActiveSensor.IsChecked := false;
  x := NewLocation.Latitude.ToString;
  y := NewLocation.Longitude.ToString;
  trans_lat := x;
  trans_lng := y;
  try
    if not Assigned(FGeocoder) then
    begin
      if Assigned(TGeocoder.Current) then
        FGeocoder := TGeocoder.Current.Create;
      if Assigned(FGeocoder) then
        FGeocoder.OnGeocodeReverse := OnGeocodeReverseEvent;
    end;
  except
    showmessage('위치 정보를 찾지 못했습니다.');
  end;

  if Assigned(FGeocoder) and not FGeocoder.Geocoding then
    FGeocoder.GeocodeReverse(NewLocation);
  // end;
end;

procedure TForm3.M_Loc_MarkTimer(Sender: TObject);
begin
  meet_Count := meet_Count + 1;
  M_Loc_Mark.Enabled := false;
  WebBrowser1.EvaluateJavaScript('insertName(' + hname + ')');
  Sleep(1000);
  WebBrowser1.EvaluateJavaScript('check(' + hlat + ',' + hlng + ')');
end;

procedure TForm3.M_Meet_ClickTimer(Sender: TObject);
begin
  M_Meet_Click.Enabled := false;
  Button1.Enabled := false;
  WebBrowser1.EvaluateJavaScript('meetHere()');
end;

procedure TForm3.OnGeocodeReverseEvent(const Address: TCivicAddress);
begin
  edt_Lat.Text := Address.AdminArea + ' ' + Address.Locality;
  edt_Lng.Text := Address.Thoroughfare + ' ' + Address.SubThoroughfare;
end;

// procedure TForm3.RestorePosition;
// begin
// M_Chat_List.ViewportPosition := PointF(M_Chat_List.ViewportPosition.x, 0);
// layout4.Align := TAlignLayout.Client;
// M_Chat_List.RealignContent;
// end;

procedure TForm3.swActiveLocationSensor1(Sender: TObject);
begin
  LocationSensor1.Active := swActiveSensor.IsChecked;
end;

procedure TForm3.TabItem1Click(Sender: TObject);
begin
  if exit_room = false then
  begin
    showmessage('나가기를 눌러주세요!');
    TabControl1.ActiveTab := TabItem3;
  end;
end;

procedure TForm3.TabItem2Click(Sender: TObject);
begin
  if exit_room = false then
  begin
    showmessage('나가기를 눌러주세요!');
    TabControl1.ActiveTab := TabItem3;
  end;
end;

procedure TForm3.TabItem3Click(Sender: TObject);
begin
  if join_room = false then
  begin
    showmessage('방을 선택해 주세요!');
    TabControl1.ActiveTab := TabItem1;
  end;
end;

procedure TForm3.TabItem4Click(Sender: TObject);
begin
  if join_room = false then
  begin
    showmessage('방을 선택해 주세요!');
    TabControl1.ActiveTab := TabItem1;
  end;
end;

// procedure TForm3.UpdateKBBounds;
// var
// LFocused: TControl;
// LFocusRect: TRectF;
// begin
// FNeedOffset := false;
// if Assigned(Focused) then
// begin
// LFocused := TControl(Focused.GetObject);
// LFocusRect := LFocused.AbsoluteRect;
// LFocusRect.Offset(M_Chat_List.ViewportPosition);
// if (LFocusRect.IntersectsWith(TRectF.create(FKBBounds))) and
// (LFocusRect.Bottom > FKBBounds.Top) then
// begin
// FNeedOffset := true;
// layout4.Align := TAlignLayout.Horizontal;
// M_Chat_List.RealignContent;
// Application.ProcessMessages;
// M_Chat_List.ViewportPosition := PointF(M_Chat_List.ViewportPosition.x,
// LFocusRect.Bottom - FKBBounds.Top);
// end;
// end;
// if not FNeedOffset then
// RestorePosition;
// end;

procedure TForm3.W_Loc_MarkTimer(Sender: TObject);
begin
  meet_Count := meet_Count + 1;
  W_Loc_Mark.Enabled := false;
  WebBrowser1.EvaluateJavaScript('searchMap(' + hname + ',' + haddress + ')');
end;

end.
