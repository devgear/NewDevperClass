unit UMainForm;

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
  FMX.ListView.Adapters.Base, FMX.ScrollBox, FMX.WebBrowser, FMX.StdActns,
  FMX.MediaLibrary.Actions;

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
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    LinkControlToField5: TLinkControlToField;
    LinkControlToField6: TLinkControlToField;
    LinkPropertyToFieldBitmap2: TLinkPropertyToField;
    Tabitem4: TTabItem;
    ToolBar4: TToolBar;
    Label4: TLabel;
    Layout3: TLayout;
    Layout5: TLayout;
    edtIP: TEdit;
    edtPort: TEdit;
    Button2: TButton;
    TabItem5: TTabItem;
    ToolBar5: TToolBar;
    Button3: TButton;
    Label5: TLabel;
    WebBrowser1: TWebBrowser;
    TakePhotoFromLibraryAction1: TTakePhotoFromLibraryAction;
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
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure imgNewItemClick(Sender: TObject);
  private
    FKBBounds: TRectF;
    FNeedOffset: Boolean;
    procedure GotoList;
    procedure GotoDetail;
    procedure GotoNew;
    procedure gotoweb;
    procedure CalcContentBoundsProc(Sender: TObject; var ContentBounds: TRectF);
    procedure RestorePosition;
    procedure UpdateKBBounds;
    procedure ChangeImageEvent(Image: Tbitmap);
    procedure potoaction(action :TBasicAction);
    { Private declarations }

  public
    procedure FormFocusChanged(Sender: TObject);
    procedure FormVirtualKeyboardShown(Sender: TObject;
      KeyboardVisible: Boolean; const Bounds: TRect);
    procedure FormVirtualKeyboardHidden(Sender: TObject;
      KeyboardVisible: Boolean; const Bounds: TRect);
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}
{$R *.LgXhdpiPh.fmx ANDROID}

uses UDM, System.Math, FMX.Platform, FMX.PhoneDialer;

{ TForm1 }

procedure TForm1.btnBackListClick(Sender: TObject);
begin
  // dmDataAccess.CancelItem;
  GotoList;
end;

procedure TForm1.btnCancelClick(Sender: TObject);
begin
  GotoList;
  dm.CancelItem
end;

procedure TForm1.btnDetailClick(Sender: TObject);
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

procedure TForm1.btnNewItemClick(Sender: TObject);
begin
  ListView1.ItemIndex := -1;
  dm.AppendMode;
  GotoNew;
end;

procedure TForm1.btnSaveItemClick(Sender: TObject);
begin
  dm.SaveItem;
  GotoList;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
 //  Connect;
   //(inttostr(demo.get_total));
   //showmessage(inttostr(demo.get_total));
//   showmessage(dm.SQLConnection1.Params.Values['hostname']);
//   showmessage(dm.SQLConnection1.Params.Values['port']);
   label1.Text :=  '나의 도서관(' + inttostr(demo.get_total) + ')';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  try
   // dm.sqlconnection1.connected := false;
    dm.SQLConnection1.Params.Values['hosttname'] := edtIP.Text;
    dm.SQLConnection1.Params.Values['Prot'] := edtPort.Text;

    dm.SQLConnection1.Connected := true;
    dm.ClientDataSet1.Active := true;
    GotoList;
  except
    on e:Exception do
    showmessage(e.message);
  end;

end;

procedure TForm1.Button3Click(Sender: TObject);
begin
GotoDetail;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  TabControl1.TabPosition := TTabPosition.None;
  TabControl1.TabIndex := 0;

  OverflowMenu.Visible := False;

  vsbEditFocus.OnCalcContentBounds := CalcContentBoundsProc;

end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
dm.SQLConnection1.Connected := false;
end;

procedure TForm1.FormFocusChanged(Sender: TObject);
begin
  UpdateKBBounds;
end;

procedure TForm1.FormVirtualKeyboardHidden(Sender: TObject;
  KeyboardVisible: Boolean; const Bounds: TRect);
begin
  FKBBounds.Create(0, 0, 0, 0);
  FNeedOffset := False;
  RestorePosition;
end;

procedure TForm1.FormVirtualKeyboardShown(Sender: TObject;
  KeyboardVisible: Boolean; const Bounds: TRect);
begin
  FKBBounds := TRectF.Create(Bounds);
  FKBBounds.TopLeft := ScreenToClient(FKBBounds.TopLeft);
  FKBBounds.BottomRight := ScreenToClient(FKBBounds.BottomRight);
  UpdateKBBounds;
end;

procedure TForm1.GotoDetail;
begin
  ChangeTabAction1.Tab := TabItem2;
  ChangeTabAction1.ExecuteTarget(nil);
end;

procedure TForm1.GotoList;
begin
  ChangeTabAction1.Tab := TabItem1;
  ChangeTabAction1.ExecuteTarget(nil);
end;

procedure TForm1.GotoNew;
begin
  ChangeTabAction1.Tab := TabItem3;
  ChangeTabAction1.ExecuteTarget(nil);
end;

procedure TForm1.gotoweb;
begin
   ChangeTabAction1.Tab := TabItem5;
  ChangeTabAction1.ExecuteTarget(nil);
end;

procedure TForm1.imgNewItemClick(Sender: TObject);
begin
potoaction(TakePhotoFromLibraryAction1);
end;

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
 if lblWebSite.Text <> '' then
 begin
  label5.Text := lblWebSite.text ;
  WebBrowser1.url := label5.text;
  gotoweb;
  end;
end;

procedure TForm1.ListView1ItemClick(const Sender: TObject;
  const AItem: TListViewItem);
begin
  GotoDetail;
end;

procedure TForm1.lstItemDeleteClick(Sender: TObject);
begin
  OverflowMenu.Visible := False;
  MessageDlg('해당 정보를 삭제하시겠습니까?', TMsgDlgType.mtWarning,
    [TmsgDlgBtn.mbYes, TmsgDlgBtn.mbNo], 0,
    procedure(const AResult: TModalResult)
    begin
      if AResult = mrYes then
      begin
        dm.DeleteItem;
        GotoList;
      end;
    end);
end;

procedure TForm1.lstItemModifyClick(Sender: TObject);
begin
  OverflowMenu.Visible := False;
  dm.EditMode;
  GotoNew;
end;

procedure TForm1.potoaction(action: TBasicAction);
begin
 // action;
end;

procedure TForm1.CalcContentBoundsProc(Sender: TObject;
var ContentBounds: TRectF);
begin
  if FNeedOffset and (FKBBounds.Top > 0) then
  begin
    ContentBounds.Bottom := Max(ContentBounds.Bottom,
      2 * ClientHeight - FKBBounds.Top);
  end;
end;

procedure TForm1.ChangeImageEvent(Image: Tbitmap);
begin
  imgNewItem.Bitmap.Assign(Image);
  dm.SetImage(Image);
end;

procedure TForm1.RestorePosition;
begin
  vsbEditFocus.ViewportPosition := PointF(vsbEditFocus.ViewportPosition.X, 0);
  lytContentsNew.Align := TALignLayout.Client;
  vsbEditFocus.RealignContent;
end;

procedure TForm1.UpdateKBBounds;
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
      FNeedOffset := true;
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
