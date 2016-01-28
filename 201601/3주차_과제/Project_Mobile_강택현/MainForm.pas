unit MainForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.ListView.Types, FMX.Memo, FMX.Controls.Presentation, FMX.Edit,
  FMX.Layouts, FMX.Objects, FMX.Effects, FMX.ListBox, FMX.ListView,
  FMX.StdCtrls, FMX.TabControl, System.Rtti, System.Bindings.Outputs,
  FMX.Bind.Editors, Data.Bind.EngExt, FMX.Bind.DBEngExt, Data.Bind.Components,
  System.Actions, FMX.ActnList, Data.Bind.DBScope, FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base, FMX.ScrollBox, FMX.WebBrowser;

type
  TForm1 = class(TForm)
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    TabItem3: TTabItem;
    ToolBar1: TToolBar;
    Label1: TLabel;
    btnNewItem: TButton;
    ListView1: TListView;
    ToolBar2: TToolBar;
    Label2: TLabel;
    btnBackList: TButton;
    btnDetail: TButton;
    Layout1: TLayout;
    ListBox1: TListBox;
    ListBoxItem1: TListBoxItem;
    ListBoxItem2: TListBoxItem;
    ListBoxItem3: TListBoxItem;
    ListBoxItem4: TListBoxItem;
    lblPublisher: TLabel;
    lblPhone: TLabel;
    lblWebSite: TLabel;
    lblComment: TLabel;
    OverflowMenu: TListBox;
    ShadowEffect2: TShadowEffect;
    lstItemModify: TListBoxItem;
    lstItemDelete: TListBoxItem;
    Rectangle1: TRectangle;
    ShadowEffect1: TShadowEffect;
    Image1: TImage;
    Layout2: TLayout;
    lblTitle: TLabel;
    lblAuthor: TLabel;
    ToolBar3: TToolBar;
    Label3: TLabel;
    btnCancel: TButton;
    btnSaveItem: TButton;
    vsbEditFocus: TVertScrollBox;
    lytContentsNew: TLayout;
    Layout4: TLayout;
    Rectangle2: TRectangle;
    imgNewItem: TImage;
    ListBox2: TListBox;
    ListBoxItem7: TListBoxItem;
    ListBoxItem8: TListBoxItem;
    ListBoxitem9: TListBoxItem;
    ListBoxItem10: TListBoxItem;
    ListBoxItem11: TListBoxItem;
    ListBoxItem12: TListBoxItem;
    edtTitle: TEdit;
    edtAuthor: TEdit;
    edtPublisher: TEdit;
    edtPhone: TEdit;
    edtWebSite: TEdit;
    mmoComment: TMemo;
    ActionList1: TActionList;
    ChangeTabAction1: TChangeTabAction;
    Button1: TButton;
    TabItem4: TTabItem;
    WebBrowser1: TWebBrowser;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    LinkControlToField5: TLinkControlToField;
    LinkControlToField6: TLinkControlToField;
    LinkPropertyToFieldBitmap: TLinkPropertyToField;
    LinkPropertyToFieldText: TLinkPropertyToField;
    LinkPropertyToFieldText3: TLinkPropertyToField;
    LinkPropertyToFieldText4: TLinkPropertyToField;
    LinkPropertyToFieldText5: TLinkPropertyToField;
    LinkPropertyToFieldText6: TLinkPropertyToField;
    LinkPropertyToFieldText2: TLinkPropertyToField;
    LinkPropertyToFieldBitmap2: TLinkPropertyToField;
    LinkListControlToField1: TLinkListControlToField;
    LinkPropertyToFieldText7: TLinkPropertyToField;
    Button2: TButton;
    TabItem5: TTabItem;
    Edit1: TEdit;
    Edit2: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Button3: TButton;
    ToolBar4: TToolBar;
    SpeedButton1: TSpeedButton;
    Action1: TAction;
    procedure ListView1ItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure btnNewItemClick(Sender: TObject);
    procedure btnBackListClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnSaveItemClick(Sender: TObject);
    procedure btnDetailClick(Sender: TObject);
    procedure lstItemModifyClick(Sender: TObject);
    procedure lstItemDeleteClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lblPhoneClick(Sender: TObject);
    procedure lblWebSiteClick(Sender: TObject);
    procedure imgNewItemClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    FKBBounds: TRectF;
    FNeedOffset: Boolean;
    procedure GotoList;
    procedure GotoDetail;
    procedure GotoNew;
    procedure CalcContentBoundsProc(Sender: TObject; var ContentBounds: TRectF);
    procedure RestorePosition;
    procedure UpdateKBBounds;
    procedure ChangeImageEvent(Image: Tbitmap);
    { Private declarations }

  public
    procedure FormFocusChanged(Sender: TObject);
    procedure FormVirtualKeyboardShown(Sender: TObject;
      KeyboardVisible: Boolean; const Bounds: TRect);
    procedure FormVirtualKeyboardHidden(Sender: TObject;
      KeyboardVisible: Boolean; const Bounds: TRect);
    procedure RefreshCount(); // 도서 목록 카운트 호출 메소드
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}
{$R *.LgXhdpiPh.fmx ANDROID}

uses DataAccessModule, System.Math, FMX.Platform, FMX.PhoneDialer,
  WebBrowserFrame, PhotoFrame;

  { TForm1 }

  // 도서 세부 정보에서 목록으로 돌아갈 때
procedure TForm1.btnBackListClick(Sender: TObject);
begin

  GotoList;
end;

// 도서 추가에서 취소 클릭시
procedure TForm1.btnCancelClick(Sender: TObject);
begin
  dmDataAccess.CancelItem; // 취소 실행
  GotoList;
end;

// 도서 정보에서 세부버튼 선택시
procedure TForm1.btnDetailClick(Sender: TObject);
begin
  OverflowMenu.Visible := not OverflowMenu.Visible;
  if OverflowMenu.Visible then
  begin
    OverflowMenu.ItemIndex := -1;
    OverflowMenu.BringToFront; // 맨 앞으로 가져옴
    OverflowMenu.ApplyStyleLookup;
    OverflowMenu.RealignContent;
    OverflowMenu.Position.X := Width - OverflowMenu.Width - 5; // 보일 위치
    OverflowMenu.Position.Y := ToolBar2.Height;
  end;
end;

// 도서 추가 클릭시
procedure TForm1.btnNewItemClick(Sender: TObject);
begin
  ListView1.ItemIndex := -1;
  dmDataAccess.AppendMode;
  GotoNew;
end;

// 저장 클릭시
procedure TForm1.btnSaveItemClick(Sender: TObject);
begin
  dmDataAccess.SaveItem;
  RefreshCount;
  GotoList;
end;

// 목록에서 리프레시 클릭시
procedure TForm1.Button1Click(Sender: TObject);
begin
  RefreshCount;
end;

// 웹페이지 이동
procedure TForm1.Button2Click(Sender: TObject);
begin
  WebBrowser1.URL := lblWebSite.Text;
  ChangeTabAction1.Tab := TabItem4;
  ChangeTabAction1.ExecuteTarget(nil);
end;

// 서버 접속 화면 및 목록으로 이동
procedure TForm1.Button3Click(Sender: TObject);
var
  flag: integer;
begin
  flag := dmDataAccess.connect();

  if flag = 1 then
  begin
    RefreshCount;
    ChangeTabAction1.Tab := TabItem1;
    ChangeTabAction1.ExecuteTarget(nil);
  end
  else

end;

// 폼 생성시
procedure TForm1.FormCreate(Sender: TObject);
begin
  TabControl1.TabPosition := TTabPosition.None;
  TabControl1.TabIndex := 0;

  OverflowMenu.Visible := false; // 탭 컨트롤 숨김

  vsbEditFocus.OnCalcContentBounds := CalcContentBoundsProc; // 추가

end;

// 화면 전환시
procedure TForm1.FormFocusChanged(Sender: TObject);
begin
  UpdateKBBounds;
end;

// 키업이 있을때
procedure TForm1.FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
  Shift: TShiftState);
begin
  if Key = vkHardwareBack then
  begin
    if Assigned(frPhoto) then
    begin
      frPhoto.CloseFrame;
      Key := 0;
    end;

    if Assigned(frWebBrowser) then
    begin
      frWebBrowser.CloseFrame;
      Key := 0;
    end;
  end;
end;

// 키보드 숨겨질때 설정
procedure TForm1.FormVirtualKeyboardHidden(Sender: TObject;
  KeyboardVisible: Boolean; const Bounds: TRect);
begin
  FKBBounds.Create(0, 0, 0, 0);
  FNeedOffset := false;
  RestorePosition;
end;

// 키보드 보일때 설정
procedure TForm1.FormVirtualKeyboardShown(Sender: TObject;
  KeyboardVisible: Boolean; const Bounds: TRect);
begin
  FKBBounds := TRectF.Create(Bounds);
  FKBBounds.TopLeft := ScreenToClient(FKBBounds.TopLeft);
  FKBBounds.BottomRight := ScreenToClient(FKBBounds.BottomRight);
  UpdateKBBounds;
end;

// 도서 세부 정보로 이동
procedure TForm1.GotoDetail;
begin
  ChangeTabAction1.Tab := TabItem2;
  ChangeTabAction1.ExecuteTarget(nil);
end;

// 도서 목록으로 이동
procedure TForm1.GotoList;
begin
  ChangeTabAction1.Tab := TabItem1;
  ChangeTabAction1.ExecuteTarget(nil);
end;

// 도서 추가로 이동
procedure TForm1.GotoNew;
begin
  ChangeTabAction1.Tab := TabItem3;
  ChangeTabAction1.ExecuteTarget(nil);
end;

// 이미지 추가 클릭
procedure TForm1.imgNewItemClick(Sender: TObject);
begin
  TfrPhoto.CreateAndShow(Self, ChangeImageEvent, nil);
end;

// 전화번호 클릭시 전화걸기
procedure TForm1.lblPhoneClick(Sender: TObject);
var
  PhoneDlrSvc: IFMXPhoneDialerService;
begin
  if TPlatformServices.Current.SupportsPlatformService(IFMXPhoneDialerService,
    IInterface(PhoneDlrSvc)) then
    PhoneDlrSvc.Call(lblPhone.Text);
end;

procedure TForm1.lblWebSiteClick(Sender: TObject);
begin
  TfrWebBrowser.CreateAndShow(Self, lblWebSite.Text);
end;

// 목록에서 도서 선택시
procedure TForm1.ListView1ItemClick(const Sender: TObject;
  const AItem: TListViewItem);
begin
  GotoDetail;
end;

// 도서 정보에서 삭제 클릭시
procedure TForm1.lstItemDeleteClick(Sender: TObject);
begin
  OverflowMenu.Visible := false;

  MessageDlg('해당 정보를 삭제하시겠습니까?', TMsgDlgType.mtWarning,
    [TmsgDlgBtn.mbYes, TmsgDlgBtn.mbNo], 0,
    procedure(const AResult: TModalResult)
    begin
      if AResult = mrYes then
      begin
        dmDataAccess.DeleteItem;
        GotoList;
      end;
    end);
end;

// 도서 정보에서 수정 클릭시
procedure TForm1.lstItemModifyClick(Sender: TObject);
begin
  OverflowMenu.Visible := false;
  dmDataAccess.EditMode;
  GotoNew;
end;

// 키보드가 보여질때 화면 설정
procedure TForm1.CalcContentBoundsProc(Sender: TObject;
var ContentBounds: TRectF);
begin
  if FNeedOffset and (FKBBounds.Top > 0) then
  begin
    ContentBounds.Bottom := Max(ContentBounds.Bottom,
      2 * ClientHeight - FKBBounds.Top);
  end;
end;

// 이미지를 바꿀때
procedure TForm1.ChangeImageEvent(Image: Tbitmap);
begin
  imgNewItem.Bitmap.Assign(Image);
  dmDataAccess.SetImage(Image);
end;

// 도서목록 카운트
procedure TForm1.RefreshCount;
begin
  Label1.Text := '나의 도서관(' + dm.getCount() + ')'; // 현재 도서 목록 수 카운트
end;

// 키보드가 사라질때 화면 크기 복구
procedure TForm1.RestorePosition;
begin
  vsbEditFocus.ViewportPosition := PointF(vsbEditFocus.ViewportPosition.X, 0);
  lytContentsNew.Align := TALignLayout.Client;
  vsbEditFocus.RealignContent;
end;

// 웹페이지 뒤로가기
procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  ChangeTabAction1.Tab := TabItem2;
  ChangeTabAction1.ExecuteTarget(nil);
end;

// 키입력 업데이트
procedure TForm1.UpdateKBBounds;
var
  LFocused: TControl;
  LFocusRect: TRectF;
begin
  FNeedOffset := false;
  if Assigned(Focused) then
  begin
    LFocused := TControl(Focused.GetObject);

    LFocusRect := LFocused.AbsoluteRect;
    LFocusRect.Offset(vsbEditFocus.ViewportPosition);
    if (LFocusRect.IntersectsWith(TRectF.Create(FKBBounds))) and
      (LFocusRect.Bottom > FKBBounds.Top) then
    begin
      FNeedOffset := True;
      lytContentsNew.Align := TALignLayout.Horizontal;
      vsbEditFocus.RealignContent;
      Application.ProcessMessages;
      vsbEditFocus.ViewportPosition := PointF(vsbEditFocus.ViewportPosition.X,
        LFocusRect.Bottom - FKBBounds.Top);
    end;
  end;
  if not FNeedOffset then
    RestorePosition;
end;

end.
