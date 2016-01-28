unit UMain_Mobile;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  System.Actions, FMX.ActnList, FMX.TabControl, FMX.ScrollBox, FMX.Memo,
  FMX.Edit, FMX.Layouts, FMX.ListBox, FMX.Objects, FMX.Effects, FMX.StdCtrls,
  FMX.ListView, FMX.Controls.Presentation, System.Math, WebBrowserFrame,
  PhotoFrame, System.Rtti, System.Bindings.Outputs, FMX.Bind.Editors,
  Data.Bind.EngExt, FMX.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope,
  FMX.WebBrowser;

type
  TForm2 = class(TForm)
    TabControl1: TTabControl;
    Tab_List: TTabItem;
    Tab_Content: TTabItem;
    Tab_New: TTabItem;
    ToolBar1: TToolBar;
    Label1: TLabel;
    btnNewItem: TButton;
    ListView1: TListView;
    ToolBar2: TToolBar;
    Label2: TLabel;
    btnBackList: TButton;
    btnDetail: TButton;
    Layout1: TLayout;
    Panel1: TPanel;
    ShadowEffect1: TShadowEffect;
    Rectangle1: TRectangle;
    Image1: TImage;
    Layout2: TLayout;
    lblTitle: TLabel;
    lblAuthor: TLabel;
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
    lstItemModify: TListBoxItem;
    lstItemDelete: TListBoxItem;
    ShadowEffect2: TShadowEffect;
    ToolBar3: TToolBar;
    Label3: TLabel;
    btnCancel: TButton;
    btnSaveitem: TButton;
    vsbEditFocus: TVertScrollBox;
    lytContentsNew: TLayout;
    Layout3: TLayout;
    Rectangle2: TRectangle;
    imgNewItem: TImage;
    ListBox2: TListBox;
    ListBoxItem5: TListBoxItem;
    ListBoxItem6: TListBoxItem;
    ListBoxItem7: TListBoxItem;
    ListBoxItem8: TListBoxItem;
    ListBoxItem9: TListBoxItem;
    ListBoxItem10: TListBoxItem;
    Edit_Title: TEdit;
    Edit_Author: TEdit;
    Edit_Publisher: TEdit;
    Edit_Phone: TEdit;
    Edit_Website: TEdit;
    Mmo_Comment: TMemo;
    ActionList1: TActionList;
    ChangeTabAction1: TChangeTabAction;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkListControlToField1: TLinkListControlToField;
    LinkPropertyToFieldText: TLinkPropertyToField;
    LinkPropertyToFieldText2: TLinkPropertyToField;
    LinkPropertyToFieldText3: TLinkPropertyToField;
    LinkPropertyToFieldText4: TLinkPropertyToField;
    LinkPropertyToFieldText5: TLinkPropertyToField;
    LinkPropertyToFieldText6: TLinkPropertyToField;
    LinkPropertyToFieldText7: TLinkPropertyToField;
    LinkPropertyToFieldBitmap: TLinkPropertyToField;
    LinkControlToField1: TLinkControlToField;
    LinkPropertyToFieldBitmap2: TLinkPropertyToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    LinkControlToField5: TLinkControlToField;
    LinkControlToField6: TLinkControlToField;
    Tab_Web: TTabItem;
    Button1: TButton;
    Web_Book: TWebBrowser;
    ToolBar4: TToolBar;
    Label4: TLabel;
    Button2: TButton;
    procedure ListView1ItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure btnBackListClick(Sender: TObject);
    procedure btnNewItemClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnSaveitemClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnDetailClick(Sender: TObject);
    procedure lstItemModifyClick(Sender: TObject);
    procedure lstItemDeleteClick(Sender: TObject);
    procedure FormFocusChanged(Sender: TObject);
    procedure FormVirtualKeyboardHidden(Sender: TObject;
      KeyboardVisible: Boolean; const [Ref] Bounds: TRect);
    procedure FormVirtualKeyboardShown(Sender: TObject;
      KeyboardVisible: Boolean; const [Ref] Bounds: TRect);
    procedure lblPhoneClick(Sender: TObject);
    procedure lblWebSiteClick(Sender: TObject);
    procedure imgNewItemClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    FKBBounds: TRectF;
    FNeedOffset: Boolean;
    procedure CalcContentBoundsProc(Sender: TObject; var ContentBounds: TRectF);
    procedure RestorePosition;
    procedure UpdateKBBounds;
    procedure GotoList;
    procedure GotoDetail;
    procedure GotoNew;
    procedure ChangeImageEvent(Image: TBitmap);

  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}
{$R *.NmXhdpiPh.fmx ANDROID}

{ TForm2 }
uses
  FMX.Platform, FMX.PhoneDialer, UDM;

procedure TForm2.btnBackListClick(Sender: TObject);
begin
  GotoList;
end;

procedure TForm2.btnCancelClick(Sender: TObject);
begin
  dm.CancelItem;
  GotoList;
end;

procedure TForm2.btnDetailClick(Sender: TObject);
begin
  OverflowMenu.Visible := not OverflowMenu.Visible;
  if OverflowMenu.Visible then
  begin
    OverflowMenu.ItemIndex := -1;
    OverflowMenu.BringToFront;
    OverflowMenu.ApplyStyleLookup;
    OverflowMenu.RealignContent;
    OverflowMenu.Position.X := Width - OverflowMenu.Width - 5;
    OverflowMenu.Position.Y := ToolBar2.Height;
  end;
end;

procedure TForm2.btnNewItemClick(Sender: TObject);
begin
  dm.AppendMode;
  GotoNew;
end;

procedure TForm2.btnSaveitemClick(Sender: TObject);
begin
  dm.SaveItem;
  try
    GotoList;
    if Label3.Text = '도서 추가' then
      showmessage('등록')
    else if Label3.Text = '도서 수정' then
      showmessage('수정완료')
  except
    showmessage('등록에러');
  end;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  Label1.Text := '나의 도서관(' + inttostr(demo.Get_count) + ')';
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  GotoList;
end;

procedure TForm2.CalcContentBoundsProc(Sender: TObject;
  var ContentBounds: TRectF);
begin
  if FNeedOffset and (FKBBounds.Top > 0) then
  begin
    ContentBounds.Bottom := Max(ContentBounds.Bottom,
      2 * ClientHeight - FKBBounds.Top);
  end;

end;

procedure TForm2.ChangeImageEvent(Image: TBitmap);
begin
  imgNewItem.Bitmap.Assign(Image);
  dm.SetImage(Image);
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  TabControl1.TabPosition := TTabPosition.None;
  TabControl1.TabIndex := 0;

  OverflowMenu.Visible := False;
  vsbEditFocus.OnCalcContentBounds := CalcContentBoundsProc;
end;

procedure TForm2.FormFocusChanged(Sender: TObject);
begin
  UpdateKBBounds;
end;

procedure TForm2.FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
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

procedure TForm2.FormVirtualKeyboardHidden(Sender: TObject;
  KeyboardVisible: Boolean; const [Ref] Bounds: TRect);
begin
  FKBBounds.Create(0, 0, 0, 0);
  FNeedOffset := False;
  RestorePosition;
end;

procedure TForm2.FormVirtualKeyboardShown(Sender: TObject;
  KeyboardVisible: Boolean; const [Ref] Bounds: TRect);
begin
  FKBBounds := TRectF.Create(Bounds);
  FKBBounds.TopLeft := ScreenToClient(FKBBounds.TopLeft);
  FKBBounds.BottomRight := ScreenToClient(FKBBounds.BottomRight);
  UpdateKBBounds;
end;

procedure TForm2.GotoDetail;
begin
  ChangeTabAction1.Tab := Tab_Content;
  ChangeTabAction1.ExecuteTarget(nil);

end;

procedure TForm2.GotoList;
begin
  ChangeTabAction1.Tab := Tab_List;
  ChangeTabAction1.ExecuteTarget(nil);

end;

procedure TForm2.GotoNew;
begin
  ChangeTabAction1.Tab := Tab_New;
  ChangeTabAction1.ExecuteTarget(nil);
end;

procedure TForm2.imgNewItemClick(Sender: TObject);
begin
  TfrPhoto.CreateAndShow(Self, ChangeImageEvent, nil);
end;

procedure TForm2.lblPhoneClick(Sender: TObject);
var
  PhoneDlrSvc: IFMXPhoneDialerService;
begin
  if TPlatformServices.Current.SupportsPlatformService(IFMXPhoneDialerService,
    IInterface(PhoneDlrSvc)) then
    PhoneDlrSvc.Call(lblPhone.Text);
end;

procedure TForm2.lblWebSiteClick(Sender: TObject);
begin
  TabControl1.ActiveTab := Tab_Web;
  Web_Book.URL := lblWebSite.Text;
end;

procedure TForm2.ListView1ItemClick(const Sender: TObject;
  const AItem: TListViewItem);
begin
  GotoDetail;
end;

procedure TForm2.lstItemDeleteClick(Sender: TObject);
begin
  OverflowMenu.Visible := False;
  MessageDlg('해당 정보를 삭제하시겠습니까?', TMsgDlgType.mtWarning,
    [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], 0,
    procedure(const AResult: TModalResult)
    begin
      if AResult = mrYes then
      begin
        try
          dm.DeleteItem;
          showmessage('삭제');
        except
          showmessage('삭제에러')
        end;
      end;
    end);
end;

procedure TForm2.lstItemModifyClick(Sender: TObject);
begin
  OverflowMenu.Visible := False;
  GotoNew;
  Label3.Text := '도서 수정';
  dm.EditMode;
end;

procedure TForm2.RestorePosition;
begin
  vsbEditFocus.ViewportPosition := PointF(vsbEditFocus.ViewportPosition.X, 0);
  lytContentsNew.Align := TAlignLayout.Client;
  vsbEditFocus.RealignContent;
end;

procedure TForm2.UpdateKBBounds;
var
  LFocused: TControl;
  LFocusRect: TRectF;
begin
  FNeedOffset := False;
  if Assigned(Focused) then
  begin
    LFocused := TControl(Focused.GetObject);
    LFocusRect := LFocused.AbsoluteRect;
    LFocusRect.Offset(vsbEditFocus.ViewportPosition);
    if (LFocusRect.IntersectsWith(TRectF.Create(FKBBounds))) and
      (LFocusRect.Bottom > FKBBounds.Top) then
    begin
      FNeedOffset := True;
      lytContentsNew.Align := TAlignLayout.Horizontal;
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
