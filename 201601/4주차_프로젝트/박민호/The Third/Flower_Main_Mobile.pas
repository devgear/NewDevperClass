unit Flower_Main_Mobile;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.StdCtrls, FMX.Controls.Presentation, FMX.ListView, FMX.TabControl,
  FMX.Layouts, FMX.Edit, FMX.ListBox, FMX.Objects, Data.DBXDataSnap,
  IPPeerClient, Data.DBXCommon, Datasnap.DBClient, Datasnap.DSConnect, Data.DB,
  Data.SqlExpr, System.Rtti, System.Bindings.Outputs, Fmx.Bind.Editors,
  Data.Bind.EngExt, Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope,
  FMX.DateTimeCtrls, FMX.Media, FMX.PlatForm, FMX.PhoneDialer, System.IOUtils,
  System.Sensors, System.Sensors.Components, FMX.WebBrowser,Data.SqlTimSt;

type
  TReservation_Mobile_Form = class(TForm)
    Layout1: TLayout;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    TabControl2: TTabControl;
    TabItem3: TTabItem;
    TabItem4: TTabItem;
    TabItem5: TTabItem;
    Layout3: TLayout;
    Layout2: TLayout;
    Label1: TLabel;
    ListView1: TListView;
    ListBox1: TListBox;
    ListBoxItem1: TListBoxItem;
    Edit1: TEdit;
    ListBoxItem2: TListBoxItem;
    Edit2: TEdit;
    Button1: TButton;
    Layout4: TLayout;
    Panel1: TPanel;
    Label3: TLabel;
    Panel2: TPanel;
    Button5: TButton;
    Label2: TLabel;
    Line1: TLine;
    ListBox2: TListBox;
    ListBoxItem3: TListBoxItem;
    ListBoxItem4: TListBoxItem;
    ListBoxItem5: TListBoxItem;
    ListBoxItem6: TListBoxItem;
    ListBoxItem7: TListBoxItem;
    ListBoxItem8: TListBoxItem;
    ComboBox1: TComboBox;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Reservation_Button: TButton;
    Cancel_Button: TButton;
    ListBoxItem9: TListBoxItem;
    ListBoxItem10: TListBoxItem;
    ListBoxItem11: TListBoxItem;
    Edit6: TEdit;
    ListBoxItem12: TListBoxItem;
    ListBoxItem13: TListBoxItem;
    Edit7: TEdit;
    Edit8: TEdit;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    Edit9: TEdit;
    Edit10: TEdit;
    ListBoxItem14: TListBoxItem;
    ListBoxItem15: TListBoxItem;
    Panel3: TPanel;
    TabItem7: TTabItem;
    Layout5: TLayout;
    TimeEdit1: TTimeEdit;
    DateEdit1: TDateEdit;
    BindSourceDB2: TBindSourceDB;
    BindSourceDB3: TBindSourceDB;
    LinkFillControlToField2: TLinkFillControlToField;
    LinkFillControlToField3: TLinkFillControlToField;
    ListView2: TListView;
    Layout6: TLayout;
    Image3: TImage;
    Image1: TImage;
    Edit12: TEdit;
    Image4: TImage;
    TabControl3: TTabControl;
    TabItem6: TTabItem;
    TabItem8: TTabItem;
    Image5: TImage;
    Panel4: TPanel;
    Button10: TButton;
    Label4: TLabel;
    Image2: TImage;
    ListBox4: TListBox;
    ListBoxItem17: TListBoxItem;
    ListBoxItem18: TListBoxItem;
    ListBoxItem19: TListBoxItem;
    ListBoxItem20: TListBoxItem;
    ListBoxItem21: TListBoxItem;
    Image6: TImage;
    MediaPlayer1: TMediaPlayer;
    Text1: TText;
    WebBrowser1: TWebBrowser;
    Image7: TImage;
    ListBoxGroupHeader: TListBoxGroupHeader;
    Text2: TText;
    Text3: TText;
    Text4: TText;
    Text5: TText;
    TabItem9: TTabItem;
    Panel5: TPanel;
    Button2: TButton;
    Edit11: TEdit;
    Image8: TImage;
    BindSourceDB4: TBindSourceDB;
    LinkFillControlToField1: TLinkFillControlToField;
    TabControl4: TTabControl;
    TabItem10: TTabItem;
    TabItem11: TTabItem;
    Layout9: TLayout;
    ListView3: TListView;
    ListBox5: TListBox;
    ListBox6: TListBox;
    ListBoxItem16: TListBoxItem;
    DateEdit2: TDateEdit;
    ListBoxItem22: TListBoxItem;
    TimeEdit2: TTimeEdit;
    ListBoxItem23: TListBoxItem;
    ComboBox2: TComboBox;
    ListBoxItem24: TListBoxItem;
    Edit13: TEdit;
    ListBoxItem25: TListBoxItem;
    Edit14: TEdit;
    ListBoxItem26: TListBoxItem;
    Edit15: TEdit;
    ListBoxItem27: TListBoxItem;
    Edit16: TEdit;
    ListBoxItem28: TListBoxItem;
    Edit17: TEdit;
    ListBoxItem29: TListBoxItem;
    Edit18: TEdit;
    ListBoxItem30: TListBoxItem;
    Edit19: TEdit;
    ListBoxItem31: TListBoxItem;
    Edit20: TEdit;
    ListBoxItem32: TListBoxItem;
    ComboBox3: TComboBox;
    ListBoxItem33: TListBoxItem;
    ComboBox6: TComboBox;
    LinkFillControlToField6: TLinkFillControlToField;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    LinkControlToField5: TLinkControlToField;
    LinkControlToField6: TLinkControlToField;
    LinkControlToField7: TLinkControlToField;
    LinkControlToField8: TLinkControlToField;
    LinkControlToField9: TLinkControlToField;
    LinkControlToField10: TLinkControlToField;
    LinkFillControlToField7: TLinkFillControlToField;
    LinkFillControlToField8: TLinkFillControlToField;
    Image9: TImage;
    LinkPropertyToFieldBitmap: TLinkPropertyToField;
    LinkListControlToField1: TLinkListControlToField;
    Layout7: TLayout;
    ListBox3: TListBox;
    ListBoxGroupHeader1: TListBoxGroupHeader;
    ListBoxItem34: TListBoxItem;
    ListBoxGroupHeader2: TListBoxGroupHeader;
    ListBoxItem35: TListBoxItem;
    LinkPropertyToFieldText2: TLinkPropertyToField;
    LinkPropertyToFieldText3: TLinkPropertyToField;
    ListBox7: TListBox;
    ListBoxItem36: TListBoxItem;
    ListBoxItem37: TListBoxItem;
    ListBoxItem38: TListBoxItem;
    ListBoxItem39: TListBoxItem;
    ListBoxItem40: TListBoxItem;
    ListBoxItem41: TListBoxItem;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    LinkPropertyToFieldText: TLinkPropertyToField;
    LinkPropertyToFieldText4: TLinkPropertyToField;
    LinkPropertyToFieldText5: TLinkPropertyToField;
    LinkPropertyToFieldText6: TLinkPropertyToField;
    LinkPropertyToFieldText7: TLinkPropertyToField;
    LinkPropertyToFieldText8: TLinkPropertyToField;
    Button3: TButton;
    LinkListControlToField2: TLinkListControlToField;
//    procedure Reservation_Back_ButtonClick(Sender: TObject);
    procedure Reservation_ButtonClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormVirtualKeyboardHidden(Sender: TObject;
      KeyboardVisible: Boolean; const Bounds: TRect);
    procedure Edit1Click(Sender: TObject);
    procedure Edit2Click(Sender: TObject);
    procedure Edit12Change(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Cancel_ButtonClick(Sender: TObject);
    procedure ListView2ItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure ListBoxItem19MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure Image6Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ListView3ItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure Button3Click(Sender: TObject);
//    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure Phone_call(PNumber: String);
  public
    { Public declarations }
  end;

var
  Reservation_Mobile_Form: TReservation_Mobile_Form;

implementation

{$R *.fmx}

uses Flower_DataModule_Mobile, Unit1;

//procedure TForm4.FormCreate(Sender: TObject);
//begin
//   TabControl1.TabPosition := TTabPosition.None;
//   TabControl1.TabIndex := 0;
//   OverflowMenu.Visible := False;
//   vsbEditFocus.OnCalcContentBounds := CalcContentBoundsProc;
//   DataModule1.Connect;
//// 데이터베이스 연결

//end;



procedure TReservation_Mobile_Form.Button1Click(Sender: TObject);
var
  Method : TFlowerServerMethodsClient;
  eID, ePW : string;
  Gresult : string;
begin
  Method := TFlowerServerMethodsClient.Create(Flower_DataModule_Mobile.DataModule2.SQLConnection1.DBXConnection);
  eID := Edit1.Text;
  ePW := Edit2.Text;
  Gresult := Method.Login(eID, ePW);
  if Gresult = '0' then
    Showmessage('아이디가 틀렸습니다')
  else if Gresult = '1' then
    ShowMessage('비밀번호가 틀렸습니다.')
  else
  begin
    ShowMessage('좋은날 이에요! 어서오세요.');
    TabControl1.TabIndex := 1;
    Flower_DataModule_Mobile.DataModule2.Flower_List_ClientDataSet.Active := True;
    Flower_DataModule_Mobile.DataModule2.Flower_Main_ClientDataSet.Active := True;
  end;
end;

procedure TReservation_Mobile_Form.Button2Click(Sender: TObject);
begin
  DataModule2.Reserve_Query_ClientDataSet.Close;
  DataModule2.Reserve_Query_ClientDataSet.ParamByName('Number').AsString := edit11.Text;
  DataModule2.Reserve_Query_ClientDataSet.Open;
end;

procedure TReservation_Mobile_Form.Button3Click(Sender: TObject);
begin
  MessageDlg('정말 취소하하시겠습니까?',System.UITypes.TMsgDlgType.mtInformation
    ,[System.UITypes.TMsgDlgBtn.mbYes, System.UITypes.TMsgDlgBtn.mbNo], 0,
      procedure(const AResult: System.UITypes.TModalResult)
      begin
        case AResult of
          mrYES:
            begin
              DataModule2.Reservation_ClientDataSet.Delete;
              DataModule2.Reservation_ClientDataSet.ApplyUpdates(-1);
              DataModule2.Reservation_ClientDataSet.Refresh;
            end;
          mrNO:
            begin
             // Showmessage('취소되었습니다');
            end;
        end;
      end);
end;

procedure TReservation_Mobile_Form.Button5Click(Sender: TObject);
begin
  Flower_DataModule_Mobile.DataModule2.Flower_List_ClientDataSet.Refresh;
end;

procedure TReservation_Mobile_Form.Cancel_ButtonClick(Sender: TObject);
begin
  TabControl1.TabIndex := 2;
  TabControl3.TabIndex := 2;
  TabControl4.TabIndex := 0;
end;


procedure TReservation_Mobile_Form.Edit12Change(Sender: TObject);
var
  Method : TFlowerServerMethodsClient;
  Search: string;
begin
  Flower_DataModule_Mobile.DataModule2.Flower_Main_ClientDataSet.Close;

  Method := TFlowerServerMethodsClient.Create(Flower_DataModule_Mobile.DataModule2.SQLConnection1.DBXConnection);
  Search := Edit12.Text;
  Method.FSearch(Search);

  Flower_DataModule_Mobile.DataModule2.Flower_Main_ClientDataSet.Open;
end;

procedure TReservation_Mobile_Form.Edit1Click(Sender: TObject);
begin
  ListBox1.Position.Y := 84 - 44;
end;

procedure TReservation_Mobile_Form.Edit2Click(Sender: TObject);
begin
  ListBox1.Position.Y := 84 - 35*2;
end;

procedure TReservation_Mobile_Form.FormCreate(Sender: TObject);
begin
  Flower_DataModule_Mobile.DataModule2.SQLConnection1.Connected := True;
  DateEdit1.Date := Date;
  TimeEdit1.Time := Time;
  ComboBox1.Items.Clear;
  DataModule2.Flower_List_ClientDataSet.Active := True;
  DataModule2.Flower_List_ClientDataSet.First;
  while not DataModule2.Flower_List_ClientDataSet.Eof do
    begin
        ComboBox1.Items.Add(DataModule2.Flower_List_ClientDataset.FieldByName('List_NAME').AsString);
        DataModule2.Flower_List_ClientDataset.Next;
    end;

end;

procedure TReservation_Mobile_Form.FormShow(Sender: TObject);
begin
  TabControl1.TabIndex := 0;
end;

procedure TReservation_Mobile_Form.FormVirtualKeyboardHidden(Sender: TObject;
  KeyboardVisible: Boolean; const Bounds: TRect);
begin
  ListBox1.Position.Y := 84;
end;

procedure TReservation_Mobile_Form.Image3Click(Sender: TObject);
begin
  TabControl1.TabIndex := 1;
  TabControl2.TabIndex := 0;
end;

procedure TReservation_Mobile_Form.Image6Click(Sender: TObject);
begin
  Phone_Call(Text1.Text);
end;

procedure TReservation_Mobile_Form.Image7Click(Sender: TObject);
var
  mapURL : string;
begin
  mapURL := 'https://www.google.co.kr/maps/place/%EB%B6%80%EC%82%B0%EA%B4%91%EC%97%AD%EC%8B%9C+%EB%B6%81%EA%B5%AC+%EA%B8%88%EA%B3%A1%EB%8C%80%EB%A1%9C+268/@35.2321341,129.0149778,20z/data=!4m2!3m1!1s0x3568950ec2938e75:0x2d1808fba56742a1?hl=ko';

  webBrowser1.Navigate(mapURL);
end;

procedure TReservation_Mobile_Form.ListBoxItem19MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
  Text1.Text := ListBox1.ItemDown.ItemData.Detail;
  MediaPlayer1.Clear;
  MediaPlayer1.FileName := TPath.Combine(TPath.GetdocumentsPath, 'Dial.MP3');
  MediaPlayer1.Play;
end;

procedure TReservation_Mobile_Form.ListView2ItemClick(const Sender: TObject;
  const AItem: TListViewItem);
begin
  TabControl2.TabIndex := 1;
end;

procedure TReservation_Mobile_Form.ListView3ItemClick(const Sender: TObject;
  const AItem: TListViewItem);
begin
  TabControl4.ActiveTab := TabItem11;
end;

procedure TReservation_Mobile_Form.Phone_call(PNumber: String);
var
  PhoneDialerService : IFMXPhoneDialerService;
begin
  if Text1.Text = '' then exit;

	if TPlatformServices.Current.SupportsPlatformService(IFMXPhoneDialerService, IInterface(PhoneDialerService)) then
     PhoneDialerService.Call(pNumber);
end;

procedure TReservation_Mobile_Form.Reservation_ButtonClick(Sender: TObject);
begin
  if DateEdit1.Date < Date  then
      raise Exception.Create('오늘 날짜 이후로 선택하세요.');
    //  if (DateEdit1.Date = Date) and (TimeEdit1.Time < Time) then
    //    raise Exception.Create('현재 시간 이후로 선택하세요.');

    if strtoint(Edit3.Text) < 1 then
    begin
      edit3.SetFocus;
      raise Exception.Create('1송이 이상이어야 합니다.');
    end;

     if Edit4.Text = '' then
    begin
      edit4.SetFocus;
      raise Exception.Create('예약자 명을 입력하세요.');
    end;

      if Edit5.Text = '' then
    begin
      edit5.SetFocus;
      raise Exception.Create('연락처를 입력하세요.');
    end;


   DataModule2.Reservation_ClientDataSet.Insert;
 try
  // DataSet.Insert 호출 후 데이터 입력해야 함   이 화면 넘어 올때 append or insert 해줘야함
  if DataModule2.Reservation_ClientDataSet.UpdateStatus = usInserted then
     DataModule2.Reservation_ClientDataSet.FieldByName('RESERVATION_SEQ').AsInteger := 1;

 if DataModule2.Flower_List_ClientDataSet.Locate('LIST_NAME', ComboBOx1.Items[ComboBox1.ItemIndex],[]) then
    DataModule2.Reservation_ClientDataSet.FieldByName('LIST_SEQ').AsInteger := DataModule2.Flower_List_ClientDataSet.FieldbyName('LIST_SEQ').AsInteger;

  DataModule2.Reservation_ClientDataSetreservation_date.value := datetimetosqltimestamp(dateedit1.date);
  DataModule2.Reservation_ClientDataSetreservation_time.value := datetimetosqltimestamp(timeedit1.Time);
  DataModule2.Reservation_ClientDataSetreservation_phonenumber.Value := edit5.Text;
  DataModule2.Reservation_ClientDataSetreservation_Name.Value := edit4.Text;
  DataModule2.Reservation_ClientDataSet.FieldByName('reservation_qty').Asinteger := strtoint(Edit3.Text);
  DataModule2.Reservation_ClientDataSet.FieldByName('Recipient_PHONENUMBER').AsString := Edit10.Text;
  DataModule2.Reservation_ClientDataSet.FieldByName('Recipient_ADDRESS').AsString := Edit7.Text;
  DataModule2.Reservation_ClientDataSet.FieldByName('RESERVATION_ETC').AsString := Edit8.Text;
  DataModule2.Reservation_ClientDataSet.FieldByName('Recipient_ETC').AsString := Edit6.Text;
  DataModule2.Reservation_ClientDataSet.FieldByName('RECEIVE_TYPE').AsString := ComboBox4.Items[ComboBox4.ItemIndex];
  DataModule2.Reservation_ClientDataSet.FieldByName('PAYMENT_TYPE').AsString := ComboBox5.Items[ComboBox5.ItemIndex];
  DataModule2.Reservation_ClientDataSet.Post;
  DataModule2.Reservation_ClientDataSet.ApplyUpdates(-1);
 except
 on e:exception do
 showmessage(e.Message);

 end;
end;




end.
