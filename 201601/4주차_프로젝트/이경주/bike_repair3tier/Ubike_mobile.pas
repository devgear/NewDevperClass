unit Ubike_mobile;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, System.Rtti,
  System.Sensors, Data.Bind.EngExt, FMX.Bind.DBEngExt, FMX.Bind.Grid,
  System.Bindings.Outputs, FMX.Bind.Editors, System.Actions, FMX.ActnList,
  FMX.TabControl, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  System.Sensors.Components, FMX.Objects, FMX.StdCtrls, FMX.Grid,
  FMX.DateTimeCtrls, FMX.Edit, FMX.Controls.Presentation, FMX.ListBox,
  FMX.Layouts, FMX.WebBrowser, FMX.Calendar, System.DateUtils,
  FMX.Filter.Effects, FMX.Effects;

type
  TForm3 = class(TForm)
    Layout5: TLayout;
    TabControl1: TTabControl;
    TabItem_main: TTabItem;
    Layout7: TLayout;
    Image2: TImage;
    Layout9: TLayout;
    btn_location_search: TButton;
    TabItem_location: TTabItem;
    Layout1: TLayout;
    WebBrowser1: TWebBrowser;
    ListBox1: TListBox;
    StyleBook1: TStyleBook;
    LocationSensor1: TLocationSensor;
    BindingsList1: TBindingsList;
    ActionList1: TActionList;
    ChangeTabAction1: TChangeTabAction;
    BindSourceDB2: TBindSourceDB;
    BindSourceDB3: TBindSourceDB;
    LinkFillControlToField1: TLinkFillControlToField;
    btn_repair_now: TButton;
    TabItem_repair_list: TTabItem;
    StringGrid1: TStringGrid;
    TabItem_repair_now: TTabItem;
    bike_brend: TComboBox;
    bike_compo: TComboBox;
    bike_type: TComboBox;
    btn_ok: TButton;
    Text2: TText;
    Text3: TText;
    Text4: TText;
    Edit3: TEdit;
    TabItem_repair_reserve: TTabItem;
    DateEdit1: TDateEdit;
    TimeEdit1: TTimeEdit;
    TabItem_login: TTabItem;
    TabItem_regi: TTabItem;
    Label2: TLabel;
    Label1: TLabel;
    btn_login: TButton;
    btn_repair_reverse: TButton;
    Text1: TText;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Text5: TText;
    ComboBox3: TComboBox;
    Text6: TText;
    Button1: TButton;
    Edit1: TEdit;
    ToolBar1: TToolBar;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Button2: TButton;
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    Timer1: TTimer;
    Button3: TButton;
    btn_cancel: TButton;
    ShadowEffect1: TShadowEffect;
    Image1: TImage;
    Button4: TButton;
    StringGrid2: TStringGrid;
    BindSourceDB4: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB4: TLinkGridToDataSource;
    Label7: TLabel;
    Label8: TLabel;
    Switch1: TSwitch;
    login_name: TEdit;
    login_phone: TEdit;
    // 메인.위치탐색
    procedure btn_location_searchClick(Sender: TObject);

    // 수리.확인
    procedure btn_okClick(Sender: TObject);
    // 위치 탐색
    procedure LocationSensor1LocationChanged(Sender: TObject;
      const OldLocation, NewLocation: TLocationCoord2D);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure btn_homeClick(Sender: TObject);
    // 메인.위치탐색.예약
    procedure btn_repair_nowClick(Sender: TObject);
    procedure btn_loginClick(Sender: TObject);
    procedure btn_repair_reverseClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure TabItem_repair_listPaint(Sender: TObject; Canvas: TCanvas;
      const [Ref] ARect: TRectF);
    procedure StringGrid1Click(Sender: TObject);
    procedure btn_refreshClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure btn_cancelClick(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Switch1Switch(Sender: TObject);

  private
    { Private declarations }
  public
    today: Tdatetime;
    Lat: string;
    Long: string;
    Distance: integer;
    LoginPH: string;

    now_date: Tdatetime;
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.fmx}
{$R *.LgXhdpiPh.fmx ANDROID}
// {$R *.LgXhdpiTb.fmx ANDROID}
{$R *.NmXhdpiPh.fmx ANDROID}
// {$R *.GGlass.fmx ANDROID}
// {$R *.SmXhdpiPh.fmx ANDROID}
{$R *.iPhone55in.fmx IOS}
// {$R *.XLgXhdpiTb.fmx ANDROID}
// {$R *.Windows.fmx MSWINDOWS}

uses Umobile_dm,
  Androidapi.JNI.Location, Androidapi.JNIBridge,
  Androidapi.JNI.JavaTypes,
  Androidapi.Helpers, Androidapi.JNI.GraphicsContentViewText,
  Androidapi.JNI.Telephony, FMX.Helpers.Android;

var
  BackButtonState: integer;

const
  HTMLStr: UnicodeString = '<!DOCTYPE html>' + '<html>' + '<head>' +
    '<meta charset="utf-8">' + '<title>다음 지도 API</title>' + '</head>' + '<body>'
    + '<div id="map" style="width:345px;height:300px;"></div>'

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

  // 풋터
    + '</script>' + '</body>' + '</html>';

procedure TForm3.FormCreate(Sender: TObject);
// 이하 모바일 넘기기
// dm.bike.Active := true;
// dm.user.Active := true;
// dm.repairman.Active := true;
// dm.repaircenter.Active := true;
// dm.repairlist.Active := true;
//
var
  aStream: TMemoryStream;
begin
  TabControl1.ActiveTab := TabItem_login;
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

end;

procedure TForm3.FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
  Shift: TShiftState);
begin
  if Key = vkMenu then
  begin
  //  btn_home.OnClick(btn_home);
    Key := 0;
  end
  else if (Key = vkhardwareback) AND (BackButtonState = 0) then
  begin
    if TabControl1.ActiveTab = TabItem_main then
    begin
      messagedlg('어플을 종료할까요?', System.UITypes.TMsgDlgType.mtInformation,
        [System.UITypes.TMsgDlgBtn.mbOK, System.UITypes.TMsgDlgBtn.mbCancel], 0,
        procedure(const AResult: TModalResult)
        begin
          case AResult of
            mrOK:
              begin
                // SharedActivity.finish;

              end;
            mrCancel:
              begin
              end;
          end;
        end);
      Key := 0;
    end;
    //btn_home.OnClick(btn_home);
    Key := 0;
  end;
end;

procedure TForm3.Image1Click(Sender: TObject);
begin
  Label3.Text := '';
  Label5.Text := '';
  TabItem_login.enabled := true;
  ChangeTabAction1.Tab := TabItem_login;
  ChangeTabAction1.ExecuteTarget(nil);
  login_phone.Text := '';
  login_name.Text := '';
end;

procedure TForm3.btn_cancelClick(Sender: TObject);
begin

  try
    // demo.repairlist_cancle(Label3.Text, Label5.Text);
    dm.repairlist.Delete;
    // dm.repairlist.ApplyUpdates(0);
    dm.repairlist.ApplyUpdates(-1);
  except
    showmessage('취소실패');
    raise
  end;
  showmessage('취소성공');
  dm.duringview.Refresh;
  // dm.comview.Refresh;
end;

procedure TForm3.btn_homeClick(Sender: TObject);
begin
//  ChangeTabAction1.Tab := TabItem_main;
  //ChangeTabAction1.ExecuteTarget(btn_home);
end;

procedure TForm3.btn_location_searchClick(Sender: TObject);
var
  obj: JObject;
  locationManager: JLocationManager;
begin

  ChangeTabAction1.Tab := TabItem_location;
  ChangeTabAction1.ExecuteTarget(nil);
end;

procedure TForm3.btn_loginClick(Sender: TObject);
var
  checklog: boolean;
begin
  if login_name.Text = '' then
    raise Exception.Create('아이디를 입력해주세요');
  if login_phone.Text = '' then
    raise Exception.Create('전화번호를 입력해주세요');
  // showmessage('출력');
  // dm.duringview.ParamByName('puname').AsString := login_name.Text;
  // dm.duringview.ParamByName('puphone').AsString := login_phone.Text;
  // dm.duringview.Open;
  // dm.duringview.Refresh;

  // dm.comview.ParamByName('puname').AsString := login_name.Text;
  // dm.comview.ParamByName('puphone').AsString := login_phone.Text;
  // dm.comview.Open;
  // dm.comview.Refresh;

  try
    checklog := demo.login(login_name.Text, login_phone.Text);
    // l := demo.login(login_name.Text, login_phone.Text);
    if checklog then
    begin
      TabControl1.ActiveTab := TabItem_main;
      // LoginPH := login_phone.Text;
      // login_phone.Text := '';
      // login_name.Text := '';
    end
    else
      showmessage('1이름 또는 번호를 다시 확인하세요');
  except
    raise Exception.Create('이름 또는 번호를 다시 확인하세요');
  end;
  dm.duringview.ParamByName('puname').AsString := login_name.Text;
  dm.duringview.ParamByName('puphone').AsString := login_phone.Text;
  dm.duringview.Open;
  dm.duringview.Refresh;

  Label3.Text := login_name.Text;
  Label5.Text := login_phone.Text;
  login_name.Text := '';
  login_phone.Text := '';
  TabItem_login.enabled := false;

end;

procedure TForm3.btn_okClick(Sender: TObject);

begin

  try
    today := now;
    // showmessage(datetimetostr(now));
    demo.reserve_add(Label3.Text, Label5.Text,
      bike_type.Items[bike_type.ItemIndex] + '.' + bike_brend.Items
      [bike_brend.ItemIndex] + '.' + bike_compo.Items[bike_compo.ItemIndex],
      ListBox1.Items[ListBox1.ItemIndex], today, '예약중');
  except
    raise
  end;
  showmessage('예약되었습니다');
  bike_type.ItemIndex := -1;
  bike_brend.ItemIndex := -1;
  bike_compo.ItemIndex := -1;
  ChangeTabAction1.Tab := TabItem_repair_list;
  ChangeTabAction1.ExecuteTarget(nil);
end;

procedure TForm3.Button1Click(Sender: TObject);

begin

  try
    // r := (DateEdit1.Date);
    // if r - 7 > now then
    // showmessage('일주일전까지 신청 가능합니다.')
    // else
    now_date := DateEdit1.Date + TimeEdit1.Time;

    demo.reserve_add(Label3.Text, Label5.Text,
      ComboBox1.Items[ComboBox1.ItemIndex] + '' + ComboBox2.Items
      [ComboBox2.ItemIndex] + '' + ComboBox3.Items[ComboBox3.ItemIndex],
      ListBox1.Items[ListBox1.ItemIndex], now_date, '예약중');
  except
    raise

  end;
  showmessage('예약되었습니다');
  // 다시 돌아왔을때 저장이 계속 되는 버그가 있음{ TODO : 버그 }
  ComboBox1.ItemIndex := -1;
  ComboBox1.ItemIndex := -1;
  ComboBox1.ItemIndex := -1;
  ChangeTabAction1.Tab := TabItem_repair_list;
  ChangeTabAction1.ExecuteTarget(nil);

end;

procedure TForm3.btn_refreshClick(Sender: TObject);
begin
  dm.duringview.Refresh;
  // dm.comview.Refresh;
end;

procedure TForm3.btn_repair_nowClick(Sender: TObject);
begin
  Edit3.Text := ListBox1.Items[ListBox1.ItemIndex];
  ChangeTabAction1.Tab := TabItem_repair_now;
  ChangeTabAction1.ExecuteTarget(nil);
end;

procedure TForm3.btn_repair_reverseClick(Sender: TObject);
begin
  ChangeTabAction1.Tab := TabItem_repair_reserve;
  ChangeTabAction1.ExecuteTarget(nil);
end;

procedure TForm3.Button2Click(Sender: TObject);
// var
// TelephonyServiceNative: JObject;
// TelephonyManager: JTelephonyManager;
begin
  // TelephonyServiceNative := SharedActivityContext.getSystemService
  // (TJContext.JavaClass.TELEPHONY_SERVICE);
  // TelephonyManager := TJTelephonyManager.Wrap
  // ((TelephonyServiceNative as ILocalObject).GetObjectID);
  TabControl1.ActiveTab := TabItem_regi;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
  dm.duringview.Refresh;
  // dm.comview.Refresh;
end;

// edit5.Text := datetimetostr(now);

procedure TForm3.LocationSensor1LocationChanged(Sender: TObject;
const OldLocation, NewLocation: TLocationCoord2D);
const
  LGoogleMapsURL: String = 'https://maps.google.com/maps?q=%s,%s';
var
  ENUSLat, ENUSLong: String; // holders for URL strings
begin

  ENUSLat := NewLocation.Latitude.ToString(ffGeneral, 5, 2,
    TFormatSettings.Create('en-US'));
  ENUSLong := NewLocation.Longitude.ToString(ffGeneral, 5, 2,
    TFormatSettings.Create('en-US'));
  { convert the location to latitude and longitude }

  { and track the location via Google Maps }
  WebBrowser1.Navigate(Format(LGoogleMapsURL, [ENUSLat, ENUSLong]));
end;

procedure TForm3.StringGrid1Click(Sender: TObject);
begin
  // edit2.Text := (stringgrid1.Cells[stringgrid1.Index]);
end;

procedure TForm3.Switch1Switch(Sender: TObject);
begin
  LocationSensor1.Active := Switch1.IsChecked;
end;

procedure TForm3.TabItem_repair_listPaint(Sender: TObject; Canvas: TCanvas;
const [Ref] ARect: TRectF);
begin
  // showmessage('asdf');
  StringGrid1.Columns[0].width := 170;
  StringGrid1.Columns[0].Header := '예약';
  StringGrid1.Columns[1].width := 120;
  StringGrid1.Columns[1].Header := '수리부품';
  StringGrid1.Columns[2].width := 120;
  StringGrid1.Columns[2].Header := '수리점';
  // StringGrid1.Columns[3].width := 50;
  // StringGrid1.Columns[3].Header := '별점';
  StringGrid1.Columns[3].width := 50;
  StringGrid1.Columns[3].Header := '상태';

  StringGrid2.Columns[0].width := 170;
  StringGrid2.Columns[0].Header := '예약';
  StringGrid2.Columns[1].width := 120;
  StringGrid2.Columns[1].Header := '수리부품';
  StringGrid2.Columns[2].width := 120;
  StringGrid2.Columns[2].Header := '수리점';
  StringGrid2.Columns[3].width := 50;
  StringGrid2.Columns[3].Header := '상태';
  StringGrid2.Columns[4].width := 50;
  StringGrid2.Columns[4].Header := '별점';
end;

end.
