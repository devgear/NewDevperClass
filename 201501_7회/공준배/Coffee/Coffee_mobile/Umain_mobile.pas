unit Umain_mobile;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.StdCtrls, FMX.TabControl, FMX.ListBox, FMX.WebBrowser, System.Sensors,
  System.Sensors.Components, FMX.Objects, FMX.Controls.Presentation, FMX.Edit,
  System.Rtti, Data.Bind.EngExt, FMX.Bind.DBEngExt, FMX.Bind.Grid,
  System.Bindings.Outputs, FMX.Bind.Editors, FMX.Grid, Data.Bind.Components,
  Data.Bind.Grid, Data.Bind.DBScope, UClientClass, FMX.ExtCtrls, FMX.EditBox,
  FMX.NumberBox, FMX.Memo;

type
  TMobileForm = class(TForm)
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    TabItem3: TTabItem;
    TabItem4: TTabItem;
    Btn_Login: TButton;
    Btn_SignUp_Page: TButton;
    Layout1: TLayout;
    TabItem5: TTabItem;
    TabItem6: TTabItem;
    WebBrowser1: TWebBrowser;
    ListBox1: TListBox;
    Btn_GetMap: TButton;
    ToolBar1: TToolBar;
    Btn_Refresh: TButton;
    Btn_Back: TButton;
    LocationSensor1: TLocationSensor;
    Edit_Id: TEdit;
    Edit_Name: TEdit;
    Edit_Password: TEdit;
    Edit_RePassword: TEdit;
    Edit_PhoneNum: TEdit;
    Edit_Age: TEdit;
    Gender1: TRadioButton;
    Gender2: TRadioButton;
    Text1: TText;
    Text2: TText;
    Text3: TText;
    Text4: TText;
    Text5: TText;
    Text6: TText;
    Text7: TText;
    Btn_SignUp: TButton;
    Btn_Cancel: TButton;
    Btn_GetReserve: TButton;
    ListBoxItem1: TListBoxItem;
    ListBoxItem2: TListBoxItem;
    ListBox2: TListBox;
    ListBoxItem3: TListBoxItem;
    MetropolisUIListBoxItem1: TMetropolisUIListBoxItem;
    MetropolisUIListBoxItem2: TMetropolisUIListBoxItem;
    Image1: TImage;
    ComboBox1: TComboBox;
    StyleBook1: TStyleBook;
    Text8: TText;
    ToolBar2: TToolBar;
    Btn_Next: TButton;
    Btn_BackMap: TButton;
    TabItem7: TTabItem;
    ToolBar3: TToolBar;
    Btn_Order: TButton;
    Btn_Reserve: TButton;
    Memo1: TMemo;
    Text11: TText;
    ListBox3: TListBox;
    ListBoxItem4: TListBoxItem;
    TabItem8: TTabItem;
    ListBoxItem5: TListBoxItem;
    ListBoxItem6: TListBoxItem;
    ListBoxItem7: TListBoxItem;
    ListBoxItem8: TListBoxItem;
    ToolBar4: TToolBar;
    Btn_BackOrder: TButton;
    Btn_CancelOrder: TButton;
    TName_Loca: TText;
    Rect_info: TRoundRect;
    Text17: TText;
    Layout2: TLayout;
    Layout3: TLayout;
    Text13: TText;
    TArrival: TText;
    Text16: TText;
    TPayment: TText;
    Layout4: TLayout;
    Text14: TText;
    TTotal: TText;
    Btn_UpdateOrder: TButton;
    Layout5: TLayout;
    MComment: TMemo;
    Text15: TText;
    ListBox4: TListBox;
    Layout6: TLayout;
    Sign_In_Password: TEdit;
    Text18: TText;
    Text19: TText;
    Image2: TImage;
    Image3: TImage;
    Layout7: TLayout;
    Layout8: TLayout;
    Layout9: TLayout;
    Layout10: TLayout;
    Layout12: TLayout;
    Layout13: TLayout;
    Layout14: TLayout;
    Layout15: TLayout;
    Layout16: TLayout;
    Layout17: TLayout;
    Layout18: TLayout;
    ToolBar5: TToolBar;
    Button1: TButton;
    Image6: TImage;
    Layout11: TLayout;
    Layout20: TLayout;
    Edit_Arrival: TNumberBox;
    Text9: TText;
    Text20: TText;
    Layout21: TLayout;
    Box_Total: TNumberBox;
    Text12: TText;
    Text21: TText;
    Layout23: TLayout;
    Layout22: TLayout;
    Payment_Box: TComboBox;
    Text10: TText;
    Layout24: TLayout;
    Image4: TImage;
    Image5: TImage;
    sign_in_login: TEdit;
    RoundRect1: TRoundRect;
    Text22: TText;
    procedure Btn_GetMapClick(Sender: TObject);
    procedure Btn_LoginClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure LocationSensor1LocationChanged(Sender: TObject;
      const OldLocation, NewLocation: TLocationCoord2D);
    procedure Btn_RefreshClick(Sender: TObject);
    procedure Btn_BackClick(Sender: TObject);
    procedure Btn_SignUp_PageClick(Sender: TObject);
    procedure Btn_SignUpClick(Sender: TObject);
    procedure Btn_CancelClick(Sender: TObject);
    procedure ListBox1ItemClick(const Sender: TCustomListBox;
      const Item: TListBoxItem);
    procedure Btn_GetReserveClick(Sender: TObject);
    procedure Btn_BackMapClick(Sender: TObject);
    procedure Btn_NextClick(Sender: TObject);
    procedure Btn_OrderClick(Sender: TObject);
    procedure ListBox3ItemClick(const Sender: TCustomListBox;
      const Item: TListBoxItem);
    procedure Btn_BackOrderClick(Sender: TObject);
    procedure Btn_CancelOrderClick(Sender: TObject);
    procedure Btn_UpdateOrderClick(Sender: TObject);
    procedure Payment_BoxChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Btn_ReserveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Lat: string;
    Long: string;
    Distance: integer;
    LoginID: string;
    OrderOrModi: boolean;
  end;

var
  MobileForm: TMobileForm;

implementation

{$R *.fmx}
{$R *.LgXhdpiPh.fmx ANDROID}
{$R *.LgXhdpiTb.fmx ANDROID}
{$R *.NmXhdpiPh.fmx ANDROID}
{$R *.GGlass.fmx ANDROID}
{$R *.SmXhdpiPh.fmx ANDROID}
{$R *.iPhone55in.fmx IOS}
{$R *.XLgXhdpiTb.fmx ANDROID}
{$R *.Windows.fmx MSWINDOWS}

uses UDm, Androidapi.JNI.Location, Androidapi.JNIBridge,
  Androidapi.JNI.JavaTypes,
  Androidapi.Helpers, Androidapi.JNI.GraphicsContentViewText,
  Androidapi.JNI.Telephony, FMX.Helpers.Android;

var
  SelectCafe: string;
  SelectLoca: string;
  Total_Amount: integer;
  SeeReserve: integer;

const
  HTMLStr: UnicodeString = '<!DOCTYPE html>' + '<html>' + '<head>' +
    '<meta charset="utf-8">' + '<title>다음 지도 API</title>' + '</head>' + '<body>'
    + '<div id="map" style="width:345px;height:300px;"></div>'

    + '<script src="http://apis.daum.net/maps/maps3.js?apikey=1a425016e57362d0b0e1f4ed596f96d0"></script>'
    + '<script>'

    + 'var map;' // 지도를 생성한다
  // Url 배열
    + 'var markerImageArray = [''http://postfiles15.naver.net/20150127_222/hunter450_14223531048758qVOV_PNG/Untitled-2.png?type=w3'',''http://postfiles10.naver.net/20150127_201/hunter450_1422353514211Q8hiW_PNG/B.png?type=w3'''
    + ', ''http://postfiles9.naver.net/20150127_8/hunter450_1422353514320Xq55d_PNG/C.png?type=w3'',''http://postfiles3.naver.net/20150128_162/hunter450_1422375209483T9wtt_PNG/D.png?type=w3'''
    + ', ''http://postfiles14.naver.net/20150128_253/hunter450_1422375209662o5y5D_PNG/E.png?type=w3'',''http://postfiles15.naver.net/20150128_158/hunter450_1422375209846XGEQM_PNG/F.png?type=w3'''
    + ', ''http://postfiles2.naver.net/20150128_81/hunter450_1422375210067EQUJi_PNG/G.png?type=w3'',''http://postfiles8.naver.net/20150128_295/hunter450_1422375210166818Xb_PNG/H.png?type=w3'''
    + ', ''http://postfiles12.naver.net/20150128_251/hunter450_14223752102823PnX8_PNG/I.png?type=w3'',''http://postfiles12.naver.net/20150128_267/hunter450_1422375210581fRndC_PNG/J.png?type=w3''];'

    + 'function SetMap(lat, long){' +
    'var mapContainer = document.getElementById(''map''),' // 지도를 표시할 div
    + 'mapOption = {' + 'center: new daum.maps.LatLng(lat, long),' // 지도의 중심좌표
    + 'level: 5,' // 지도의 확대 레벨
    + 'mapTypeId : daum.maps.MapTypeId.ROADMAP' // 지도종류
    + '};' + 'map = new daum.maps.Map(mapContainer, mapOption);'

    + 'var markerImageUrl = ''http://postfiles10.naver.net/20150126_153/hunter450_1422254064813Itk7n_PNG/myloca.png?type=w3'','
    + 'markerImageSize = new daum.maps.Size(20, 28),' // 마커 이미지의 크기
    + 'markerImageOptions = {' + 'offset : new daum.maps.Point(10, 28)'
  // 마커 좌표에 일치시킬 이미지 안의 좌표
    + '};'

    + 'var markerImage = new daum.maps.MarkerImage(markerImageUrl, markerImageSize, markerImageOptions);'

    + 'marker = new daum.maps.Marker({' +
    'position: new daum.maps.LatLng(lat, long),' + 'image : markerImage,' +
    'map: map' + '});' + '}'

    + 'function SetMarkers(lat, long, count){' +
    'var markerImageUrl = markerImageArray[count],' +
    'markerImageSize = new daum.maps.Size(28, 28),' // 마커 이미지의 크기
    + 'markerImageOptions = {' + 'offset : new daum.maps.Point(14, 28)'
  // 마커 좌표에 일치시킬 이미지 안의 좌표
    + '};'

    + 'var markerImage = new daum.maps.MarkerImage(markerImageUrl, markerImageSize, markerImageOptions);'

    + 'marker = new daum.maps.Marker({' +
    'position: new daum.maps.LatLng(lat, long),' + 'image : markerImage,' +
    'map: map' + '});' +
    ' daum.maps.event.addListener(marker, ''click'', function(){' +
    'alert(''아래 목록에서 클릭해주세요'');' + '});' + '}'

    + 'function panTo(lat,long) {'
  // 이동할 위도 경도 위치를 생성합니다
    + 'var moveLatLon = new daum.maps.LatLng(lat, long);'
  // 지도 중심을 부드럽게 이동시킵니다
  // 만약 이동할 거리가 지도 화면보다 크면 부드러운 효과 없이 이동합니다
    + 'map.panTo(moveLatLon);' + '}'

    + '</script>' + '</body>' + '</html>';

procedure TMobileForm.Btn_BackClick(Sender: TObject);
// 예약or주문변경 화면에서 메인화면으로 이동 버튼
begin
  TabControl1.ActiveTab := TabItem2;
end;

procedure TMobileForm.Btn_BackMapClick(Sender: TObject);
// 예약or주문변경 상태에서 지도 or 메인 화면으로 나가는 버튼
begin
  if OrderOrModi then
    TabControl1.ActiveTab := TabItem3
  else
    TabControl1.ActiveTab := TabItem2;
end;

procedure TMobileForm.Btn_BackOrderClick(Sender: TObject); // 상세보기에서 예약조회로 돌아가기
begin
  TabControl1.ActiveTab := TabItem5;
end;

procedure TMobileForm.Btn_CancelClick(Sender: TObject); // 회원가입 취소 버튼
begin
  Edit_Id.Text := ''; // 작성한 정보 초기화
  Edit_Name.Text := '';
  Edit_Password.Text := '';
  Edit_RePassword.Text := '';
  Edit_PhoneNum.Text := '';
  Edit_Age.Text := '';
  Gender1.IsChecked := false;
  Gender2.IsChecked := false;

  TabControl1.ActiveTab := TabItem1;
end;

procedure TMobileForm.Btn_CancelOrderClick(Sender: TObject); // 주문취소 버튼
var
  CheckTime: TDateTime;
  Temp: double;
begin

  CheckTime := Dm.ReserveDataSet.FieldByName('R_ARRIVAL').AsDateTime; // 시간 체크
  Temp := CheckTime - Now;
  if Temp <= 0.0032 then // 5분미만 조건검색(예약시간이 5분 미만일 경우 변경 불가)
  begin
    Rect_info.Opacity := 1.0;
    Rect_info.AnimateFloat('Opacity', 0.0, 3.0);
    Exit;
  end;

  MessageDlg('정말 취소하시겠습니까?', TMsgDlgType.mtInformation,
    [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], 0,
    procedure(const AResult: TModalResult)
    begin
      if AResult = mrYes then
      begin
        try
          demo.Delete_Reserve(IntToStr(SeeReserve)); // 주문 취소
        except
          raise Exception.Create('취소 실패, 잠시 후 다시 취소해주세요');
        end;

        ShowMessage('취소 완료');
        TabControl1.ActiveTab := TabItem2;
      end;
    end);

end;

procedure TMobileForm.Btn_GetMapClick(Sender: TObject); // 주변검색 버튼
var
  obj: JObject;
  locationManager: JLocationManager;
begin

  if not LocationSensor1.Active then // 위치센서 켜기
    LocationSensor1.Active := true;

  obj := SharedActivityContext.getSystemService // GPS 상태 가져오기
    (TJContext.JavaClass.LOCATION_SERVICE);
  locationManager := TJLocationManager.Wrap((obj as ILocalObject).GetObjectID);

  if locationManager.isProviderEnabled(TJLocationManager.JavaClass.GPS_PROVIDER)
  then // GPS on/off 확인
  begin

    try
      WebBrowser1.EvaluateJavaScript('SetMap(' + Lat + ',' + Long + ');');
      // 다음지도API 호출
      Dm.Calc_Distance; // 거리계산 후 3km 이내 카페 지도에 띄우기
    except
      raise Exception.Create('위치정보가 정확하지 않습니다. 잠시 후 다시 실행해 주세요');
    end;

    TabControl1.ActiveTab := TabItem3;
    Btn_Order.Text := '예약하기'; // 기존 예약하기(or 주문변경) 텍스트를 예약하기로 바꿔줌
    OrderOrModi := true; // 예약 모드로 변경

  end
  else
    ShowMessage('GPS를 켜주세요');

end;

procedure TMobileForm.Btn_GetReserveClick(Sender: TObject); // 예약조회 버튼
begin
  Dm.Get_Reserve(LoginID);
  TabControl1.ActiveTab := TabItem5;
end;

procedure TMobileForm.Btn_LoginClick(Sender: TObject); // 로그인 버튼
var
  checklog: boolean;
begin

  if sign_in_login.Text = '' then
    raise Exception.Create('아이디를 입력해주세요');

  if Sign_In_Password.Text = '' then
    raise Exception.Create('비밀번호를 입력해주세요');

  try
    checklog := demo.Log_in(sign_in_login.Text, Sign_In_Password.Text);
    if checklog then
    begin
      TabControl1.ActiveTab := TabItem2; // 로그인 성공시 다음화면
      LoginID := sign_in_login.Text;
      sign_in_login.Text := '';
      Sign_In_Password.Text := '';
    end
    else
      ShowMessage('아이디 또는 비밀번호를 다시 확인하세요');
  except
    raise Exception.Create('아이디 또는 비밀번호를 다시 확인하세요');
  end;

end;

procedure TMobileForm.Btn_NextClick(Sender: TObject); // 주문or예약변경 다음 버튼
var
  i: integer;
  Rl_Quantity: array of integer;
  Rl_Price: array of integer;
begin
  i := 0;
  Total_Amount := 0;
  SetLength(Rl_Quantity, Dm.MenuDataSet.RecordCount);
  SetLength(Rl_Price, Dm.MenuDataSet.RecordCount);

  Dm.MenuDataSet.First;
  while not Dm.MenuDataSet.EOF do // 총 금액 계산
  begin
    if Dm.CheckQuantity[i].ItemIndex <> 0 then // 총 금액 계산(1잔이상 선택된 것만 계산)
    begin
      Total_Amount := Total_Amount + Dm.MenuDataSet.FieldByName('M_PRICE')
        .AsInteger * Dm.CheckQuantity[i].ItemIndex;
    end;
    Dm.MenuDataSet.Next;
    Inc(i);
  end;

  Rl_Quantity := nil; // 배열 초기화
  Rl_Price := nil;

  if Total_Amount = 0 then // 선택된 음료가 없을 때
  begin
    raise Exception.Create('1잔이상 선택해주세요');
  end;

  MessageDlg('총' + IntToStr(Total_Amount) + '원 입니다 결제창으로 가시겠습니까?',
    TMsgDlgType.mtInformation, [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], 0,
    procedure(const AResult: TModalResult)
    begin
      if AResult = mrYes then
      begin
        TabControl1.ActiveTab := TabItem7; // 결제 창으로 넘어가기
        Box_Total.Text := IntToStr(Total_Amount); // 총 가격 출력
      end;
    end);
end;

procedure TMobileForm.Btn_RefreshClick(Sender: TObject);
begin
  WebBrowser1.EvaluateJavaScript('SetMap(' + Lat + ',' + Long + ');');
  ListBox1.Clear;
end;

procedure TMobileForm.Btn_ReserveClick(Sender: TObject);
// 결제 or 주문변경 상세 내용에서 커피 수량 변경 화면으로 넘어가기
begin
  TabControl1.ActiveTab := TabItem4;
end;

procedure TMobileForm.Btn_SignUp_PageClick(Sender: TObject); // 회원가입 버튼
var
  TelephonyServiceNative: JObject;
  TelephonyManager: JTelephonyManager;
begin

  TelephonyServiceNative := SharedActivityContext.getSystemService
    (TJContext.JavaClass.TELEPHONY_SERVICE);
  TelephonyManager := TJTelephonyManager.Wrap
    ((TelephonyServiceNative as ILocalObject).GetObjectID);

  TabControl1.ActiveTab := TabItem6;
  Edit_PhoneNum.Text := JStringToString(TelephonyManager.getLine1Number);
  // 사용자 전화번호 가져오기(안드로이드API)
end;

procedure TMobileForm.Btn_UpdateOrderClick(Sender: TObject); // 주문 변경버튼
var
  CheckTime: TDateTime;
  Temp: double;
begin

  CheckTime := Dm.ReserveDataSet.FieldByName('R_ARRIVAL').AsDateTime; // 시간 체크
  Temp := CheckTime - Now;
  if Temp <= 0.0032 then // 5분미만 조건검색(예약시간이 5분 미만일 경우 변경 불가)
  begin
    Rect_info.Opacity := 1.0;
    Rect_info.AnimateFloat('Opacity', 0.0, 3.0);
    Exit;
  end;

  MessageDlg('정말 변경하시겠습니까?', TMsgDlgType.mtInformation,
    [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], 0,
    procedure(const AResult: TModalResult)
    begin
      if AResult = mrYes then
      begin
        Dm.Get_Menu(false); // 주문변경 메뉴읽어오기
        Btn_Order.Text := '주문변경'; // 기존 예약하기 텍스트를 주문변경으로 바꿔줌
        TabControl1.ActiveTab := TabItem4;
        OrderOrModi := false; // 주문변경 모드로 변경
        RoundRect1.Opacity := 1.0;
        RoundRect1.AnimateFloat('Opacity', 0.0, 3.0);
      end;
    end);

end;

procedure TMobileForm.Button1Click(Sender: TObject); // 예약조회에서 메인화면으로 돌아가기
begin
  TabControl1.ActiveTab := TabItem2;
end;

procedure TMobileForm.Btn_OrderClick(Sender: TObject); // 주문 or 예약변경 버튼
var
  Arrival_time: TDateTime;
begin
  if Edit_Arrival.Value = 0 then // 도착 예정시간 미입력
  begin
    raise Exception.Create('도착예정시간을 적어주세요');
  end;

  if OrderOrModi then // 예약 일 시
  begin
    MessageDlg('예약하시겠습니까?', TMsgDlgType.mtInformation,
      [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], 0,
      procedure(const AResult: TModalResult)
      var
        i, num, price: integer;
      begin
        i := 0;
        price := 0;
        if AResult = mrYes then
        begin
          Arrival_time := Now + (StrToInt(Edit_Arrival.Text) / (24 * 60));
          // 현재시간에 도착예정시간 더해서 예약
          try
            demo.Reserve_Coffee(Total_Amount, Arrival_time,
              Payment_Box.Items[Payment_Box.ItemIndex], Lat, Long, LoginID,
              SelectCafe, SelectLoca, Memo1.Text); // 커피 예약

            Dm.MenuDataSet.First;
            num := demo.Get_R_Num(LoginID); // 예약 번호 가져오기

            while not Dm.MenuDataSet.EOF do
            begin
              if Dm.CheckQuantity[i].ItemIndex <> 0 then
              begin
                price := Dm.MenuDataSet.FieldByName('M_PRICE').AsInteger *
                  Dm.CheckQuantity[i].ItemIndex;
                demo.Reserve_list(num, Dm.CheckQuantity[i].ItemIndex, price,
                  Dm.MenuI[i].Title); // 커피 상세정보 예약
              end;
              Dm.MenuDataSet.Next;
              Inc(i);
            end;

          except
            raise Exception.Create('예약에 실패했습니다. 잠시 후 다시 시도해 주세요');
          end;
          ShowMessage('예약되었습니다');
          Memo1.Text := '';
          Edit_Arrival.Text := '0';
          Payment_Box.ItemIndex := 0;
          TabControl1.ActiveTab := TabItem2;
        end;
      end);
  end
  else
  begin // 예약 변경 일 시
    MessageDlg('예약을 변경하시겠습니까?', TMsgDlgType.mtInformation,
      [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], 0,
      procedure(const AResult: TModalResult)
      var
        i, num, price: integer;
      begin
        i := 0;
        price := 0;
        if AResult = mrYes then
        begin
          Arrival_time := Now + (StrToInt(Edit_Arrival.Text) / (24 * 60));
          // 현재시간에 도착예정시간 더해서 예약
          try
            demo.Delete_Reserve(IntToStr(SeeReserve)); // 기존 예약정보 삭제

            demo.Reserve_Coffee(Total_Amount, Arrival_time,
              Payment_Box.Items[Payment_Box.ItemIndex], Lat, Long, LoginID,
              SelectCafe, SelectLoca, Memo1.Text); // 커피 예약

            Dm.MenuDataSet.First;
            num := demo.Get_R_Num(LoginID); // 예약 번호 가져오기

            while not Dm.MenuDataSet.EOF do
            begin
              if Dm.CheckQuantity[i].ItemIndex <> 0 then
              begin
                price := Dm.MenuDataSet.FieldByName('M_PRICE').AsInteger *
                  Dm.CheckQuantity[i].ItemIndex;
                demo.Reserve_list(num, Dm.CheckQuantity[i].ItemIndex, price,
                  Dm.MenuI[i].Title); // 커피 상세정보 예약
              end;
              Dm.MenuDataSet.Next;
              Inc(i);
            end;

          except
            raise Exception.Create('변경에 실패했습니다. 잠시 후 다시 시도해 주세요');
          end;
          ShowMessage('변경되었습니다');
          Memo1.Text := '';
          Edit_Arrival.Text := '0';
          Payment_Box.ItemIndex := 0;
          TabControl1.ActiveTab := TabItem2;
          OrderOrModi := true;
        end;
      end);
  end;
end;

procedure TMobileForm.Btn_SignUpClick(Sender: TObject); // 회원가입 버튼
var
  Gender: integer;
begin
  if Edit_Id.Text = '' then // 공백 확인
    raise Exception.Create('아이디를 입력해주세요');

  if Edit_Name.Text = '' then
    raise Exception.Create('이름을 입력해주세요');

  if Edit_Password.Text = '' then
    raise Exception.Create('비밀번호를 입력해주세요');

  if Edit_Password.Text <> Edit_RePassword.Text then
    raise Exception.Create('재입력 비밀번호가 다릅니다');

  if not(Gender1.IsChecked) and not(Gender2.IsChecked) then
    raise Exception.Create('성별을 선택해 주세요');

  if Edit_Age.Text = '' then
    raise Exception.Create('나이를 입력해 주세요');

  if Gender1.IsChecked then // 성별 확인
    Gender := 1
  else
    Gender := 0;

  try
    demo.Sign_Up(Edit_Id.Text, Edit_Name.Text, Edit_Password.Text,
      Edit_PhoneNum.Text, Gender, StrToInt(Edit_Age.Text));
  except
    raise Exception.Create('존재하는 아이디입니다'); // 기본키 에러
  end;
  ShowMessage('회원가입 완료!');
  TabControl1.ActiveTab := TabItem1;
end;

procedure TMobileForm.FormCreate(Sender: TObject);
var
  aStream: TMemoryStream;
begin
  Distance := 3; // 초기화
  TabControl1.ActiveTab := TabItem1;
  LocationSensor1.Active := true;
  Rect_info.Opacity := 0;
  Edit_Arrival.Text := '0';
  Layout2.Visible := true;
  OrderOrModi := true;
  Btn_CancelOrder.Margins.Right := 0;
  TabControl1.TabPosition := TTabPosition.None;
  Text2.Margins.Top := 0;
  Layout12.Padding.Left := 0;
  Layout13.Padding.Left := 0;
  Layout14.Padding.Left := 0;
  Layout16.Padding.Left := 0;
  Layout17.Padding.Left := 0;
  Layout18.Padding.Left := 0;
  Btn_SignUp.Margins.Bottom := 0; // 초기화

  WebBrowser1.Navigate('about:blank'); // 다음 지도 API사용을 위한 초기 작업
  aStream := TMemoryStream.Create;
  try
    aStream.WriteBuffer(Pointer(HTMLStr)^, Length(HTMLStr)); // 자바스크립트 읽어오기
    aStream.Seek(0, soFromBeginning);
    WebBrowser1.LoadFromStrings(HTMLStr, HTMLStr);
  finally
    aStream.Free;
  end;

end;

procedure TMobileForm.ListBox1ItemClick(const Sender: TCustomListBox;
// 예약 리스트 버튼
const Item: TListBoxItem);
begin
  SelectCafe := Item.Text; // 예약하는 곳 카페 이름과 위치 저장
  SelectLoca := Item.ItemData.Detail;

  MessageDlg(SelectCafe + ' ' + SelectLoca + '에 예약하시겠습니까?',
    TMsgDlgType.mtInformation, [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], 0,
    procedure(const AResult: TModalResult)
    begin
      if AResult = mrYes then
      begin
        TabControl1.ActiveTab := TabItem4;
        Dm.Get_Menu(true); // 메뉴 가져오기
        RoundRect1.Opacity := 1.0;
        RoundRect1.AnimateFloat('Opacity', 0.0, 3.0);
        // 왜 두번해야 뜨는걸까..
      end;
    end);
end;

procedure TMobileForm.ListBox3ItemClick(const Sender: TCustomListBox;
// 예약정보 상세보기
const Item: TListBoxItem);
begin
  Dm.ReserveDataSet.First;
  Dm.ReserveDataSet.MoveBy(ListBox3.ItemIndex); // 해당 인덱스로 움직임
  Dm.Get_Reserve_Detail(Dm.ReserveDataSet.FieldByName('R_NUM').AsString);
  // 상세정보 가져오기
  SeeReserve := Dm.ReserveDataSet.FieldByName('R_NUM').AsInteger;
  TabControl1.ActiveTab := TabItem8;
end;

procedure TMobileForm.LocationSensor1LocationChanged(Sender: TObject;
const OldLocation, NewLocation: TLocationCoord2D);
begin
  Lat := FormatFloat('#.#####', NewLocation.Latitude);
  Long := FormatFloat('#.#####', NewLocation.Longitude);
end;

procedure TMobileForm.Payment_BoxChange(Sender: TObject);
begin
  if Payment_Box.ItemIndex = 0 then
  begin
    Image4.Visible := true;
    Image5.Visible := false;
  end
  else
  begin
    Image4.Visible := false;
    Image5.Visible := true;
  end;

end;

end.
