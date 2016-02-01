unit UMom;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  System.Notification, IPPeerClient, REST.Backend.PushTypes, System.JSON,
  REST.Backend.KinveyPushDevice, System.PushNotification,
  REST.Backend.KinveyProvider, Data.Bind.Components, Data.Bind.ObjectScope,
  REST.Backend.BindSource, REST.Backend.PushDevice, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.FMXUI.Wait, FMX.TabControl, FMX.StdCtrls, FMX.Controls.Presentation,
  Data.DB, FireDAC.Comp.Client, FMX.Edit, FMX.ListBox, FMX.Layouts,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView, System.Rtti, System.Bindings.Outputs, Fmx.Bind.Editors,
  Data.Bind.EngExt, Fmx.Bind.DBEngExt, Data.Bind.DBScope, FMX.Objects,
  FMX.MultiView, FMX.ScrollBox, FMX.Memo, FMX.Ani;

type
  TForm2 = class(TForm)
    NotificationCenter1: TNotificationCenter;
    PushEvents1: TPushEvents;
    KinveyProvider1: TKinveyProvider;
    ToolBar1: TToolBar;
    Label1: TLabel;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    Button1: TButton;
    ListBox1: TListBox;
    ListBoxGroupHeader1: TListBoxGroupHeader;
    ListBoxItem1: TListBoxItem;
    ListBoxItem2: TListBoxItem;
    edtDSHost: TEdit;
    edtDSPort: TEdit;
    ListBoxItem3: TListBoxItem;
    Button2: TButton;
    TabItem3: TTabItem;
    ListView1: TListView;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkListControlToField1: TLinkListControlToField;
    TabItem4: TTabItem;
    ListBox2: TListBox;
    Panel1: TPanel;
    Layout1: TLayout;
    Image1: TImage;
    Rectangle1: TRectangle;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    LinkPropertyToFieldText: TLinkPropertyToField;
    LinkPropertyToFieldText2: TLinkPropertyToField;
    ListBoxGroupHeader2: TListBoxGroupHeader;
    ListBoxItem4: TListBoxItem;
    ListBoxItem5: TListBoxItem;
    ListBoxItem6: TListBoxItem;
    ListBoxItem7: TListBoxItem;
    Button3: TButton;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    LinkPropertyToFieldText3: TLinkPropertyToField;
    LinkPropertyToFieldText4: TLinkPropertyToField;
    LinkPropertyToFieldText5: TLinkPropertyToField;
    LinkPropertyToFieldText6: TLinkPropertyToField;
    TabItem5: TTabItem;
    TabItem6: TTabItem;
    ListView2: TListView;
    Button4: TButton;
    MultiView1: TMultiView;
    ListBox3: TListBox;
    ListBoxGroupHeader3: TListBoxGroupHeader;
    ListBoxItem8: TListBoxItem;
    ListBoxItem9: TListBoxItem;
    BindSourceDB2: TBindSourceDB;
    LinkListControlToField2: TLinkListControlToField;
    Panel2: TPanel;
    ListBox4: TListBox;
    ListBoxGroupHeader4: TListBoxGroupHeader;
    ListBoxItem10: TListBoxItem;
    Label10: TLabel;
    ListBoxItem11: TListBoxItem;
    Label11: TLabel;
    ListBoxItem12: TListBoxItem;
    Label12: TLabel;
    ListBoxItem13: TListBoxItem;
    Label13: TLabel;
    Layout2: TLayout;
    Rectangle2: TRectangle;
    Image2: TImage;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    ListBoxGroupHeader5: TListBoxGroupHeader;
    ListBoxItem14: TListBoxItem;
    Label18: TLabel;
    ListBoxItem15: TListBoxItem;
    Label19: TLabel;
    LinkPropertyToFieldText7: TLinkPropertyToField;
    LinkPropertyToFieldText8: TLinkPropertyToField;
    LinkPropertyToFieldText9: TLinkPropertyToField;
    LinkPropertyToFieldText10: TLinkPropertyToField;
    LinkPropertyToFieldText11: TLinkPropertyToField;
    LinkPropertyToFieldText12: TLinkPropertyToField;
    LinkPropertyToFieldText13: TLinkPropertyToField;
    LinkPropertyToFieldText14: TLinkPropertyToField;
    Memo1: TMemo;
    TabItem7: TTabItem;
    ListView3: TListView;
    TabItem8: TTabItem;
    BindSourceDB3: TBindSourceDB;
    ListBox5: TListBox;
    ListBoxGroupHeader6: TListBoxGroupHeader;
    날짜: TListBoxItem;
    ListBoxItem17: TListBoxItem;
    ListBoxItem18: TListBoxItem;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    LinkPropertyToFieldText15: TLinkPropertyToField;
    LinkPropertyToFieldText16: TLinkPropertyToField;
    LinkPropertyToFieldText17: TLinkPropertyToField;
    ListBoxItem16: TListBoxItem;
    LinkListControlToField3: TLinkListControlToField;
    ListBox6: TListBox;
    ListBoxItem19: TListBoxItem;
    ListBoxItem20: TListBoxItem;
    Button5: TButton;
    TabItem9: TTabItem;
    TabItem10: TTabItem;
    ListView4: TListView;
    ToolBar2: TToolBar;
    Button6: TButton;
    ListBoxItem21: TListBoxItem;
    ListBox7: TListBox;
    ListBoxGroupHeader7: TListBoxGroupHeader;
    ListBoxGroupHeader8: TListBoxGroupHeader;
    ListBoxItem22: TListBoxItem;
    ListBoxItem23: TListBoxItem;
    ListBoxItem24: TListBoxItem;
    ListBoxItem25: TListBoxItem;
    ListBoxItem26: TListBoxItem;
    ListBoxItem27: TListBoxItem;
    Label23: TLabel;
    Label24: TLabel;
    Memo2: TMemo;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    ListBoxItem28: TListBoxItem;
    Button7: TButton;
    BindSourceDB4: TBindSourceDB;
    LinkListControlToField4: TLinkListControlToField;
    LinkPropertyToFieldText18: TLinkPropertyToField;
    LinkPropertyToFieldText19: TLinkPropertyToField;
    LinkControlToField1: TLinkControlToField;
    LinkPropertyToFieldText20: TLinkPropertyToField;
    LinkPropertyToFieldText21: TLinkPropertyToField;
    LinkPropertyToFieldText22: TLinkPropertyToField;
    Rectangle3: TRectangle;
    FloatAnimation1: TFloatAnimation;
    Timer1: TTimer;
    Label28: TLabel;
    ListBoxGroupHeader9: TListBoxGroupHeader;
    Label29: TLabel;
    ListBoxItem29: TListBoxItem;
    Label30: TLabel;
    procedure PushEvents1PushReceived(Sender: TObject; const AData: TPushData);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ListView1ItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Label7Click(Sender: TObject);
    procedure ListView2ItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure ListBoxItem9Click(Sender: TObject);
    procedure ListBoxItem8Click(Sender: TObject);
    procedure Label18Click(Sender: TObject);
    procedure ListView3ItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure ListBoxItem16Click(Sender: TObject);
    procedure ListBox3ItemClick(const Sender: TCustomListBox;
      const Item: TListBoxItem);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure ListBoxItem21Click(Sender: TObject);
    procedure ListView4ItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure Button7Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  i : integer;

implementation


{$R *.fmx}
uses
FMX.Platform, FMX.PhoneDialer, UMomDm;
procedure TForm2.Button1Click(Sender: TObject);
var
  PhoneDlrSvc: IFMXPhoneDialerService;
begin
  if TPlatformServices.Current.SupportsPlatformService(IFMXPhoneDialerService, IInterface(PhoneDlrSvc)) then
    PhoneDlrSvc.Call('01087751079');
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  if DataModule1.Connect(edtDSHost.Text, edtDSPort.Text) then
  begin
    ShowMessage('접속 성공');
    TabControl1.ActiveTab := TabItem3;
  end
  else
    ShowMessage('접속 실패');



end;

procedure TForm2.Button3Click(Sender: TObject);
begin
  if TabControl1.ActiveTab = TabItem4 then
   TabControl1.ActiveTab := TabItem3
  else if TabControl1.ActiveTab = TabItem6 then
    TabControl1.ActiveTab := TabItem5
  else if TabControl1.ActiveTab = TabItem8 then
    TabControl1.ActiveTab := TabItem7
  else if TabControl1.ActiveTab = TabItem10 then
    TabControl1.ActiveTab := TabItem9;
  Button3.Visible := False;

end;

procedure TForm2.Button5Click(Sender: TObject);
var
  PhoneDlrSvc: IFMXPhoneDialerService;
begin
  if TPlatformServices.Current.SupportsPlatformService(IFMXPhoneDialerService, IInterface(PhoneDlrSvc)) then
    PhoneDlrSvc.Call('01087751079');
end;

procedure TForm2.Button6Click(Sender: TObject);
begin
  TabControl1.ActiveTab := TabItem10;
  DataModule1.CDS_QA.Insert;
  Label27.Text :=DateToStr(now);
  Label26.Text := '석진이 엄마';
end;

procedure TForm2.Button7Click(Sender: TObject);
begin
  DataModule1.CDS_QA.Post;
  DataModule1.CDS_QA.ApplyUpdates(0);
  TabControl1.ActiveTab := TabItem9;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
  TabControl1.ActiveTab := TabItem1;
  Button3.Visible := False;
end;

procedure TForm2.Label18Click(Sender: TObject);
var
  PhoneDlrSvc: IFMXPhoneDialerService;
begin
  if TPlatformServices.Current.SupportsPlatformService(IFMXPhoneDialerService, IInterface(PhoneDlrSvc)) then
    PhoneDlrSvc.Call(Label18.Text);
end;

procedure TForm2.Label7Click(Sender: TObject);
var
  PhoneDlrSvc: IFMXPhoneDialerService;
begin
  if TPlatformServices.Current.SupportsPlatformService(IFMXPhoneDialerService, IInterface(PhoneDlrSvc)) then
    PhoneDlrSvc.Call(Label7.Text);
end;

procedure TForm2.ListBox3ItemClick(const Sender: TCustomListBox;
  const Item: TListBoxItem);
begin
  Item.IsSelected := False;
  MultiView1.HideMaster;
end;

procedure TForm2.ListBoxItem16Click(Sender: TObject);
begin
  TabControl1.ActiveTab:= TabItem7;
end;

procedure TForm2.ListBoxItem21Click(Sender: TObject);
begin
  TabControl1.ActiveTab := TabItem9;
end;

procedure TForm2.ListBoxItem8Click(Sender: TObject);
begin
  TabControl1.ActiveTab := TabItem3;

end;

procedure TForm2.ListBoxItem9Click(Sender: TObject);
begin
  TabControl1.ActiveTab := TabItem5;
end;

procedure TForm2.ListView1ItemClick(const Sender: TObject;
  const AItem: TListViewItem);
begin
  TabControl1.ActiveTab := TabItem4;
  Button3.Visible := True;
end;

procedure TForm2.ListView2ItemClick(const Sender: TObject;
  const AItem: TListViewItem);
begin
  TabControl1.ActiveTab := TabItem6;
  Button3.Visible := True;
end;

procedure TForm2.ListView3ItemClick(const Sender: TObject;
  const AItem: TListViewItem);
begin
  TabControl1.ActiveTab:= TabItem8;
  Button3.Visible :=  True;
end;

procedure TForm2.ListView4ItemClick(const Sender: TObject;
  const AItem: TListViewItem);
begin
  TabControl1.ActiveTab := TabItem10;
  Button3.Visible := True;
end;

procedure TForm2.PushEvents1PushReceived(Sender: TObject;
  const AData: TPushData);
begin
  if pos('#',AData.Message)<>0 then
  begin
    TabControl1.ActiveTab := TabItem2;
  Memo1.Text := '아이의 위험이 예상됩니다.' ;
  Timer1.Enabled := True;
  i :=5;
  end;

end;

procedure TForm2.Timer1Timer(Sender: TObject);
begin
  FloatAnimation1.Enabled := True;
  Label28.Text := '잠시후 자동으로 연결됩니다.' ;
  i := i-1;
  if i=0 then
  begin
    Button5Click(Button5);
    Timer1.Enabled:= False;
    FloatAnimation1.Enabled := False;
    TabControl1.ActiveTab:= TabItem3;
  end;
end;

end.
