unit mobile;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.Controls.Presentation, FMX.Layouts, FMX.TabControl,
  System.Actions, FMX.ActnList, FMX.DateTimeCtrls, FMX.WebBrowser,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  System.Rtti, System.Bindings.Outputs, FMX.Bind.Editors, Data.Bind.EngExt,
  FMX.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, FMX.ListView,
  DM_Mobile,FMX.ListBox, FMX.Objects;

type
  TForm1 = class(TForm)
    TabControl1: TTabControl;
    Tab_Login: TTabItem;
    Layout1: TLayout;
    Layout2: TLayout;
    Layout3: TLayout;
    Layout4: TLayout;
    ed_ID: TEdit;
    ed_pw: TEdit;
    Layout5: TLayout;
    Layout6: TLayout;
    ToolBar_Main: TToolBar;
    lb_login: TLabel;
    Tab_Sign: TTabItem;
    ToolBar_Sign: TToolBar;
    lb_sign: TLabel;
    Layout7: TLayout;
    Layout9: TLayout;
    Layout10: TLayout;
    Layout8: TLayout;
    Edt_ID: TEdit;
    lb_ID: TLabel;
    lb_Password: TLabel;
    Edt_NAME: TEdit;
    Edt_PW: TEdit;
    lb_Phone: TLabel;
    lb_Name: TLabel;
    Edt_PHONE: TEdit;
    Layout11: TLayout;
    Layout12: TLayout;
    Tab_Main: TTabItem;
    TabControl2: TTabControl;
    Tab_Search: TTabItem;
    Tab_Map: TTabItem;
    Tab_SBoard: TTabItem;
    Tab_rest: TTabItem;
    lb_sights: TLabel;
    Edt_sights: TEdit;
    Sights_Web: TWebBrowser;
    ToolBar1: TToolBar;
    Rest_Web: TWebBrowser;
    lb_sightstitle: TLabel;
    Sights_List: TListView;
    Rest_List: TListView;
    ToolBar2: TToolBar;
    lb_rest: TLabel;
    ToolBar3: TToolBar;
    SBoard_List: TListView;
    lb_SBoard: TLabel;
    TabControl3: TTabControl;
    S_Board: TTabItem;
    S_Board_Detail: TTabItem;
    ActionList1: TActionList;
    ChangeTabAction1: TChangeTabAction;
    ListBox1: TListBox;
    ListBoxItem1: TListBoxItem;
    ListBoxItem2: TListBoxItem;
    ListBoxItem3: TListBoxItem;
    Tab_RBoard: TTabItem;
    lb_SB_Title: TLabel;
    lb_SB_Member: TLabel;
    lb_SB_Memo: TLabel;
    ListBoxItem4: TListBoxItem;
    lb_SB_Grade: TLabel;
    TabControl4: TTabControl;
    ToolBar4: TToolBar;
    R_Board: TTabItem;
    R_Board_Detail: TTabItem;
    lb_RBoard: TLabel;
    RBoard_List: TListView;
    ListBox2: TListBox;
    ListBoxItem5: TListBoxItem;
    lb_RB_Title: TLabel;
    ListBoxItem6: TListBoxItem;
    lb_RB_Grade: TLabel;
    ListBoxItem7: TListBoxItem;
    lb_RB_Member: TLabel;
    ListBoxItem8: TListBoxItem;
    lb_RB_Memo: TLabel;
    S_Board_add: TTabItem;
    R_Board_add: TTabItem;
    ListBox3: TListBox;
    ListBoxItem9: TListBoxItem;
    ListBoxItem10: TListBoxItem;
    ListBoxItem11: TListBoxItem;
    ToolBar5: TToolBar;
    ToolBar6: TToolBar;
    ToolBar7: TToolBar;
    lb_SB_List: TLabel;
    lb_SB_Detail: TLabel;
    lb_SB_Add: TLabel;
    ToolBar8: TToolBar;
    lb_RB_List: TLabel;
    ToolBar9: TToolBar;
    lb_RB_Detail: TLabel;
    ToolBar10: TToolBar;
    lb_RB_Add: TLabel;
    Edt_SB_Title: TEdit;
    CB_SB_Grade: TComboBox;
    Edt_SB_Memo: TEdit;
    ListBox4: TListBox;
    ListBoxItem12: TListBoxItem;
    Edt_RB_Title: TEdit;
    ListBoxItem13: TListBoxItem;
    CB_RB_Grade: TComboBox;
    ListBoxItem14: TListBoxItem;
    Edt_RB_Memo: TEdit;
    TabControl5: TTabControl;
    Tab_Sights_list: TTabItem;
    Tab_Sights_list_Detail: TTabItem;
    ListBox5: TListBox;
    ListBoxItem15: TListBoxItem;
    ListBoxItem16: TListBoxItem;
    ListBoxItem17: TListBoxItem;
    ToolBar11: TToolBar;
    Label1: TLabel;
    lb_Sights_name: TLabel;
    lb_Sights_address: TLabel;
    lb_Sights_Avg: TLabel;
    TabControl6: TTabControl;
    Tab_Rest_list: TTabItem;
    Tab_Rest_list_Detail: TTabItem;
    ToolBar12: TToolBar;
    ListBox6: TListBox;
    Label2: TLabel;
    ListBoxItem18: TListBoxItem;
    ListBoxItem19: TListBoxItem;
    ListBoxItem20: TListBoxItem;
    ListBoxItem21: TListBoxItem;
    lb_Rest_name: TLabel;
    lb_Rest_Phone: TLabel;
    lb_Rest_address: TLabel;
    lb_Rest_Avg: TLabel;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    BindSourceDB2: TBindSourceDB;
    LinkListControlToField1: TLinkListControlToField;
    LinkListControlToField2: TLinkListControlToField;
    BindSourceDB3: TBindSourceDB;
    LinkListControlToField3: TLinkListControlToField;
    BindSourceDB4: TBindSourceDB;
    LinkListControlToField4: TLinkListControlToField;
    LinkPropertyToFieldText: TLinkPropertyToField;
    LinkPropertyToFieldText2: TLinkPropertyToField;
    LinkPropertyToFieldText3: TLinkPropertyToField;
    LinkPropertyToFieldText4: TLinkPropertyToField;
    LinkPropertyToFieldText5: TLinkPropertyToField;
    LinkPropertyToFieldText6: TLinkPropertyToField;
    LinkPropertyToFieldText7: TLinkPropertyToField;
    LinkPropertyToFieldText8: TLinkPropertyToField;
    LinkPropertyToFieldText9: TLinkPropertyToField;
    LinkPropertyToFieldText10: TLinkPropertyToField;
    LinkPropertyToFieldText11: TLinkPropertyToField;
    LinkPropertyToFieldText12: TLinkPropertyToField;
    LinkPropertyToFieldText13: TLinkPropertyToField;
    ToolBar13: TToolBar;
    Label3: TLabel;
    Img_Rest: TImage;
    Img__Backsearch: TImage;
    Img_Board: TImage;
    Img_SearchSights: TImage;
    Img_RBoard: TImage;
    Img_Back_Rest_list: TImage;
    Img_Back_Sights_List: TImage;
    Img_Back_Sights: TImage;
    Img_SB_Add: TImage;
    Img_Back_SBoard: TImage;
    Img_SB_Cancel: TImage;
    Img_SB_Save: TImage;
    Image1: TImage;
    Img_RB_Add: TImage;
    Img_Back_RBoard: TImage;
    Img_RB_Cancel: TImage;
    Img_RB_Save: TImage;
    Img_login: TImage;
    Img_Cancel: TImage;
    Img_sights: TImage;
    Img_SignUp: TImage;
    Img_Sign: TImage;
    procedure btn_SignUpClick(Sender: TObject);
    procedure Btn_CancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn_loginClick(Sender: TObject);
    procedure Btn_SignClick(Sender: TObject);
    procedure btn_sightsClick(Sender: TObject);
    procedure Btn_restClick(Sender: TObject);
    procedure Btn_BoardClick(Sender: TObject);
    procedure Btn_BacksearchClick(Sender: TObject);
    procedure SBoard_ListItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure Btn_SearchSightsClick(Sender: TObject);
    procedure Btn_RBoardClick(Sender: TObject);
    procedure RBoard_ListItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure Btn_RB_AddClick(Sender: TObject);
    procedure Btn_SB_SaveClick(Sender: TObject);
    procedure Btn_SB_AddClick(Sender: TObject);
    procedure Btn_RB_SaveClick(Sender: TObject);
    procedure Btn_Back_RBoardClick(Sender: TObject);
    procedure Btn_Back_SBoardClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Btn_Back_SightsClick(Sender: TObject);
    procedure Btn_SB_CancelClick(Sender: TObject);
    procedure Btn_RB_CancelClick(Sender: TObject);
    procedure Sights_ListItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure Btn_Back_Sights_ListClick(Sender: TObject);
    procedure Rest_ListItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure Btn_Back_Rest_listClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Sights_Web_reset;
    procedure Rest_Web_reset;
  end;

var
  Form1: TForm1;
  ID: string;

implementation

{$R *.fmx}
{$R *.NmXhdpiPh.fmx ANDROID}

const
  htmlstr: UnicodeString = '<!DOCTYPE html>' + '<html>' + '<head>' +
    '<meta charset="utf8">' + '<title>지도 생성하기</title>' + '</head>' + '<body>' +
    '<div id="map" style="width:100%;height:350px;"></div>' +

  // setTimeout(function(){},2000);
    '<script type="text/javascript" src="http://apis.daum.net/maps/maps3.js?apikey=129496d49adf0fecff26ee145d7ccbd1&libraries=services"></script>'
    +

    '<script type="text/javascript">' + 'var mapContainer,mapOption;' +
    'var hLat=37.56682,hLng=126.97865,count=0;' + 'var points=[];' +
    'var bounds = new daum.maps.LatLngBounds();' +

    'mapContainer = document.getElementById("map"),' + // 지도를 표시할 div
    'mapOption = {' + 'center: new daum.maps.LatLng(hLat, hLng),' + // 지도의 중심좌표
    'level: 4' + // 지도의 확대 레벨
    '};' +
  // 지도를 생성한다

    'var map = new daum.maps.Map(mapContainer, mapOption);' +

    'function searchMap(name,address) {' +
    ' var geocoder = new daum.maps.services.Geocoder();  ' +
  // 주소로 좌표를 검색합니다
    'geocoder.addr2coord(address, function(status, result) { ' +

  // 정상적으로 검색이 완료됐으면
    '  if (status === daum.maps.services.Status.OK) {  ' +

    '  var coords = new daum.maps.LatLng(result.addr[0].lat, result.addr[0].lng),position; '
    + 'points[count]=coords;' + 'bounds.extend(points[count]);' +
    ' map.setBounds(bounds);' + 'count=count+1;' +
  // 결과값으로 받은 위치를 마커로 표시합니다
    ' var marker = new daum.maps.Marker({   ' + 'position: coords,   ' +
    ' map: map ' + ' });    ' +
  // 인포윈도우로 장소에 대한 설명을 표시합니다
    ' var infowindow = new daum.maps.InfoWindow({   ' +
    '  content: ''<div style="padding:5px;">''+name+''</div>''  ' + '  });  ' +
    '  infowindow.open(map, marker); ' + '  } ' + '}); } ' +
  // searchMap func 끝

    '</script>' + '</body>' + '</html>';

procedure TForm1.btn_loginClick(Sender: TObject);
var
  check: boolean;
  PW: String;
begin
  ID := ed_ID.Text;
  PW := ed_pw.Text;
  check := demo.Log_in(ID, PW);
  if ((check) and (ID.Length >= 1)) then
  begin
    ChangeTabAction1.Tab := Tab_Main;
    ChangeTabAction1.ExecuteTarget(nil);
    ChangeTabAction1.Tab := Tab_Search;
    ChangeTabAction1.ExecuteTarget(nil);
    Sights_Web.Navigate('about:blank');
    Sights_Web_reset;
    Rest_Web.Navigate('about:blank');
    Rest_Web_reset;
    dm.SearchSQueryClient.Active := false;
    dm.SearchSQueryClient.Active := true;
    dm.SearchRQueryClient.Active := false;
    dm.SearchRQueryClient.Active := true;
    dm.SearchSBQueryClient.Active := false;
    dm.SearchSBQueryClient.Active := true;
    dm.SearchRBQueryClient.Active := false;
    dm.SearchRBQueryClient.Active := true;
  end
  else
    showmessage('등록된 아이디가 없습니다');
end;

procedure TForm1.Btn_RBoardClick(Sender: TObject);
begin
  dm.SearchRBQueryClient.Params[0].AsString := dm.SearchRQueryClient.Fields
    [0].AsString;
  dm.SearchRBQueryClient.Refresh;
  dm.SearchRBQueryClient.Active := false;
  dm.SearchRBQueryClient.Active := true;
  dm.SearchRBQueryClient.Params[0].AsString := dm.SearchRQueryClient.Fields
    [0].AsString;
  dm.SearchRBQueryClient.Refresh;
  ChangeTabAction1.Tab := Tab_RBoard;
  ChangeTabAction1.ExecuteTarget(nil);
  ChangeTabAction1.Tab := R_Board;
  ChangeTabAction1.ExecuteTarget(nil);
  TabControl6.ActiveTab := Tab_Rest_list;
  lb_RBoard.Text := dm.SearchRQueryClient.Fields[1].AsString + lb_RBoard.Text;
end;

procedure TForm1.Btn_RB_AddClick(Sender: TObject);
begin
  ChangeTabAction1.Tab := R_Board_add;
  ChangeTabAction1.ExecuteTarget(nil);

end;

procedure TForm1.Btn_RB_CancelClick(Sender: TObject);
begin
  Edt_RB_Title.Text := '';
  CB_RB_Grade.itemIndex := -1;
  Edt_RB_Memo.Text := '';
  ChangeTabAction1.Tab := R_Board;
  ChangeTabAction1.ExecuteTarget(nil);
end;

procedure TForm1.Btn_RB_SaveClick(Sender: TObject);
begin
  if Edt_RB_Title.Text = '' then
    showmessage('제목을 반드시 입력하세요')
  else if CB_RB_Grade.Items.ToString = '' then
    showmessage('평점을 반드시 선택하세요')
  else if demo.RB_Add(Edt_RB_Title.Text,
    CB_RB_Grade.Items[CB_RB_Grade.ItemIndex], Edt_RB_Memo.Text,
    demo.Search_ID(ID), dm.SearchRQueryClient.Fields[0].AsInteger) <> 0 then
    showmessage('글 등록 실패')
  else
  begin
    showmessage('글 등록 완료');
    Edt_RB_Title.Text := '';
    CB_RB_Grade.index := strtoint('');
    Edt_RB_Memo.Text := '';
    DM.SearchRBQueryClient.Refresh;
    ChangeTabAction1.Tab := R_Board;
    ChangeTabAction1.ExecuteTarget(nil)
  end;
end;

procedure TForm1.Btn_restClick(Sender: TObject); // 관광지 근처 음식점 출력
var
  i: integer;
  name1, name2, address1, address2: string;
begin
  dm.SearchRQueryClient.Params[0].AsString := dm.SearchSQueryClient.Fields
    [0].AsString;
  dm.SearchRQueryClient.Refresh;
  dm.SearchRQueryClient.Active := false;
  dm.SearchRQueryClient.Active := true;
  dm.SearchRQueryClient.Params[0].AsString := dm.SearchSQueryClient.Fields
    [0].AsString;
  dm.SearchRQueryClient.Refresh;
  if dm.SearchRQueryClient.RecordCount = 0 then
    showmessage('주변 음식점에 대한 데이터가 없습니다. 죄송합니다.')
  else
  begin
    dm.SearchRQueryClient.Refresh;
    sleep(2000);
    ChangeTabAction1.Tab := Tab_rest;
    ChangeTabAction1.ExecuteTarget(nil);
    for i := 0 to (dm.SearchRQueryClient.RecordCount - 1) do
    begin
      name1 :=dm.SearchRQueryClient.Fields[1].AsString;
      address1 :=dm.SearchRQueryClient.Fields[3].AsString;
      name2 := '''' + name1 + '''';
      address2 := '''' + address1 + '''';
      Rest_Web.EvaluateJavaScript('searchMap(' + name2 + ',' + address2 + ');');
      dm.SearchRQueryClient.Next;
      sleep(1000);
    end;
  end;
end;

procedure TForm1.btn_sightsClick(Sender: TObject);
var // 지역에 맞는 리스트 만들기
  i: integer;
  name1, name2, address1, address2: string;
begin
  Edt_sights.Text := '%' + Edt_sights.Text + '%';
  dm.SearchSQueryClient.Params[0].AsString := Edt_sights.Text;
  dm.SearchSQueryClient.Refresh;
  dm.SearchSQueryClient.Active := false;
  dm.SearchSQueryClient.Active := true;
  Edt_sights.Text := '%' + Edt_sights.Text + '%';
  dm.SearchSQueryClient.Params[0].AsString := Edt_sights.Text;
  dm.SearchSQueryClient.Refresh;
  if dm.SearchSQueryClient.RecordCount = 0 then
  begin
    showmessage('검색결과가 없습니다. 다시 검색해주세요');
    Edt_sights.Text := '';
  end
  else
  begin
    ChangeTabAction1.Tab := Tab_Map;
    ChangeTabAction1.ExecuteTarget(nil);
    for i := 0 to (dm.SearchSQueryClient.RecordCount - 1) do // 지역에 있는 관광지 출력
    begin
      name1 :=dm.SearchSQueryClient.Fields[1].AsString;
      address1 :=dm.SearchSQueryClient.Fields[2].AsString;
      name2 := '''' + name1 + '''';
      address2 := '''' + address1 + '''';
      Sights_Web.EvaluateJavaScript('searchMap(' + name2 + ',' + address2 + ');');
      dm.SearchSQueryClient.Next;
    end;
  end;
end;

procedure TForm1.btn_SignUpClick(Sender: TObject);
begin
  ChangeTabAction1.Tab := Tab_Sign;
  ChangeTabAction1.ExecuteTarget(nil);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  dm.SearchRBQueryClient.Active := false;
  dm.SearchRBQueryClient.Active := true;
  ChangeTabAction1.Tab := Tab_rest;
  ChangeTabAction1.ExecuteTarget(nil);
  lb_RBoard.Text := ' 게 시 판';
end;

procedure TForm1.Btn_SB_AddClick(Sender: TObject);
begin
  ChangeTabAction1.Tab := S_Board_add;
  ChangeTabAction1.ExecuteTarget(nil);
end;

procedure TForm1.Btn_SB_CancelClick(Sender: TObject);
begin
  Edt_SB_Title.Text := '';
  CB_SB_Grade.itemIndex := -1;
  Edt_SB_Memo.Text := '';
  ChangeTabAction1.Tab := S_Board;
  ChangeTabAction1.ExecuteTarget(nil);
end;

procedure TForm1.Btn_SB_SaveClick(Sender: TObject);
begin
  if Edt_SB_Title.Text = '' then
    showmessage('제목을 반드시 입력하세요')
  else if CB_SB_Grade.Items.ToString = '' then
    showmessage('평점을 반드시 선택하세요')
  else if demo.SB_Add(Edt_SB_Title.Text,CB_SB_Grade.Items[CB_SB_Grade.ItemIndex],
     Edt_SB_Memo.Text,demo.Search_ID(ID), dm.SearchSQueryClient.Fields[0].AsInteger)
      <> 0 then
    showmessage('글 등록 실패')
  else
  begin
    showmessage('글 등록 완료');
    DM.SearchSBQueryClient.Refresh;
    Edt_SB_Title.Text := '';
    CB_SB_Grade.index := strtoint('');
    Edt_SB_Memo.Text := '';
    ChangeTabAction1.Tab := S_Board;
    ChangeTabAction1.ExecuteTarget(nil)
  end;
end;

procedure TForm1.Btn_SearchSightsClick(Sender: TObject);
begin
  // Rest_Web.Navigate('about:blank');
  // Rest_Web_reset;
  Rest_List.Items.Clear;
  dm.SearchRQueryClient.Active := false;
  dm.SearchRQueryClient.Active := true;
  ChangeTabAction1.Tab := Tab_Map;
  ChangeTabAction1.ExecuteTarget(nil);
  TabControl6.ActiveTab := Tab_Rest_list;
  Rest_Web_reset;
end;

procedure TForm1.Btn_SignClick(Sender: TObject);
begin
  try
    demo.sign(Edt_ID.Text, Edt_PW.Text, Edt_NAME.Text, Edt_PHONE.Text);

    showmessage('가입이 완료되었습니다.');
    Edt_ID.Text := '';
    Edt_PW.Text := '';
    Edt_NAME.Text := '';
    Edt_PHONE.Text := '';
    ChangeTabAction1.Tab := Tab_Login;
    ChangeTabAction1.ExecuteTarget(nil);
  except
    showmessage('잘못된 값을 입력하셧습니다. 다시입력해주세요');
  end;

end;

procedure TForm1.Btn_BacksearchClick(Sender: TObject);
begin
  Edt_sights.Text := '';
  dm.SearchSQueryClient.Active := false;
  dm.SearchSQueryClient.Active := true;
  Sights_List.Items.Clear;
  ChangeTabAction1.Tab := Tab_Search;
  ChangeTabAction1.ExecuteTarget(nil);
  TabControl5.ActiveTab := Tab_Sights_list;
  Sights_Web_reset;
end;

procedure TForm1.Btn_Back_RBoardClick(Sender: TObject);
begin
  ChangeTabAction1.Tab := R_Board;
  ChangeTabAction1.ExecuteTarget(nil);
end;

procedure TForm1.Btn_Back_Rest_listClick(Sender: TObject);
begin
  ChangeTabAction1.Tab := Tab_Rest_list;
  ChangeTabAction1.ExecuteTarget(nil);
end;

procedure TForm1.Btn_Back_SBoardClick(Sender: TObject);
begin
  ChangeTabAction1.Tab := S_Board;
  ChangeTabAction1.ExecuteTarget(nil);
  lb_SBoard.Text := ' 게 시 판';
end;

procedure TForm1.Btn_Back_SightsClick(Sender: TObject);
begin
  dm.SearchSBQueryClient.Active := false;
  dm.SearchSBQueryClient.Active := true;
  ChangeTabAction1.Tab := Tab_Map;
  ChangeTabAction1.ExecuteTarget(nil);
  lb_SBoard.Text := ' 게 시 판';
end;

procedure TForm1.Btn_Back_Sights_ListClick(Sender: TObject);
begin
  ChangeTabAction1.Tab := Tab_Sights_list;
  ChangeTabAction1.ExecuteTarget(nil);
end;

procedure TForm1.Btn_BoardClick(Sender: TObject);
begin
  dm.SearchSBQueryClient.Params[0].AsString := dm.SearchSQueryClient.Fields
    [0].AsString;
  dm.SearchSBQueryClient.Refresh;
  dm.SearchSBQueryClient.Active := false;
  dm.SearchSBQueryClient.Active := true;
  dm.SearchSBQueryClient.Params[0].AsString := dm.SearchSQueryClient.Fields
    [0].AsString;
  dm.SearchSBQueryClient.Refresh;
  ChangeTabAction1.Tab := Tab_SBoard;
  ChangeTabAction1.ExecuteTarget(nil);
  ChangeTabAction1.Tab := S_Board;
  ChangeTabAction1.ExecuteTarget(nil);
  lb_SBoard.Text := dm.SearchSQueryClient.Fields[1].AsString + lb_SBoard.Text;
end;

procedure TForm1.Btn_CancelClick(Sender: TObject);
begin
  ChangeTabAction1.Tab := Tab_Login;
  ChangeTabAction1.ExecuteTarget(nil);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  TabControl1.TabPosition := TTabPosition.None;
  TabControl2.TabPosition := TTabPosition.None;
  TabControl3.TabPosition := TTabPosition.None;
  TabControl4.TabPosition := TTabPosition.None;
  TabControl5.TabPosition := TTabPosition.None;
  TabControl6.TabPosition := TTabPosition.None;
  TabControl1.TabIndex := 0;
  TabControl1.ActiveTab := Tab_Login;
  TabControl2.ActiveTab := Tab_Search;
  TabControl3.ActiveTab := S_Board;
  TabControl4.ActiveTab := R_Board;
  TabControl5.ActiveTab := Tab_Sights_list;
  TabControl6.ActiveTab := Tab_Rest_list;
end;

procedure TForm1.RBoard_ListItemClick(const Sender: TObject;
  const AItem: TListViewItem);
begin
  ChangeTabAction1.Tab := R_Board_Detail;
  ChangeTabAction1.ExecuteTarget(nil);
end;

procedure TForm1.Rest_ListItemClick(const Sender: TObject;
  const AItem: TListViewItem);
begin
  lb_Rest_Avg.Text := demo.avg_r(dm.SearchRQueryClient.Fields[0].Asinteger);
  ChangeTabAction1.Tab := Tab_Rest_list_Detail;
  ChangeTabAction1.ExecuteTarget(nil);
end;

procedure TForm1.Rest_Web_reset;
var
  aStream: TMemoryStream;
begin
  aStream := TMemoryStream.Create;
  try
    aStream.WriteBuffer(Pointer(htmlstr)^, Length(htmlstr)); // 자바스크립트 읽어오기
    aStream.Seek(0, soFromBeginning);
    Rest_Web.LoadFromStrings(htmlstr, htmlstr);
  finally
    aStream.Free;
  end;
end;

procedure TForm1.Sights_ListItemClick(const Sender: TObject;
  const AItem: TListViewItem);
begin
  lb_Sights_Avg.Text := demo.avg_s(dm.SearchSQueryClient.Fields[0].Asinteger);
  ChangeTabAction1.Tab := Tab_Sights_list_Detail;
  ChangeTabAction1.ExecuteTarget(nil);
end;

procedure TForm1.Sights_Web_reset;
var
  aStream: TMemoryStream;
begin
  aStream := TMemoryStream.Create;
  try
    aStream.WriteBuffer(Pointer(htmlstr)^, Length(htmlstr)); // 자바스크립트 읽어오기
    aStream.Seek(0, soFromBeginning);
    Sights_Web.LoadFromStrings(htmlstr, htmlstr);
  finally
    aStream.Free;
  end;
end;

procedure TForm1.SBoard_ListItemClick(const Sender: TObject;
  const AItem: TListViewItem);
begin
  ChangeTabAction1.Tab := S_Board_Detail;
  ChangeTabAction1.ExecuteTarget(nil);
end;

end.
