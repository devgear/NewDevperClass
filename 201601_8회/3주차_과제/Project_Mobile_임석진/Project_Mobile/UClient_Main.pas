unit UClient_Main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListBox, FMX.Layouts, FMX.Objects, FMX.Effects, FMX.StdCtrls,
  FMX.ListView, FMX.Controls.Presentation, FMX.TabControl, FMX.ScrollBox,
  FMX.Memo, FMX.Edit, System.Rtti, System.Bindings.Outputs, Fmx.Bind.Editors,
  Data.Bind.EngExt, Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope,
  System.Actions, FMX.ActnList, FMX.StdActns, FMX.MediaLibrary.Actions;

type
  TForm2 = class(TForm)
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    TabItem3: TTabItem;
    TabItem4: TTabItem;
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
    OverFlowMenu: TListBox;
    lstItemModify: TListBoxItem;
    lstItemDelete: TListBoxItem;
    ShadowEffect2: TShadowEffect;
    ToolBar3: TToolBar;
    Label3: TLabel;
    btnCancel: TButton;
    btnSaveItem: TButton;
    vsbEditFocus: TVertScrollBox;
    lytContentsNew: TLayout;
    Layout3: TLayout;
    Rectangle1: TRectangle;
    imgNewItem: TImage;
    ListBox2: TListBox;
    ListBoxItem7: TListBoxItem;
    ListBoxItem8: TListBoxItem;
    ListBoxItem9: TListBoxItem;
    ListBoxItem10: TListBoxItem;
    ListBoxItem11: TListBoxItem;
    ListBoxItem12: TListBoxItem;
    edtTitle: TEdit;
    edtAuthor: TEdit;
    edtPublisher: TEdit;
    edtPhone: TEdit;
    edtWebsite: TEdit;
    mmoComment: TMemo;
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
    Button1: TButton;
    ActionList1: TActionList;
    ChangeTabAction1: TChangeTabAction;
    TakePhotoFromCameraAction1: TTakePhotoFromCameraAction;
    Button2: TButton;
    Layout4: TLayout;
    Panel2: TPanel;
    Label4: TLabel;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    edtDSHost: TEdit;
    edtDSPort: TEdit;
    Button3: TButton;
    StyleBook1: TStyleBook;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure btnNewItemClick(Sender: TObject);
    procedure btnBackListClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnSaveItemClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lstItemModifyClick(Sender: TObject);
    procedure lstItemDeleteClick(Sender: TObject);
    procedure btnDetailClick(Sender: TObject);
    procedure FormFocusChanged(Sender: TObject);
    procedure FormVirtualKeyboardHidden(Sender: TObject;
      KeyboardVisible: Boolean; const Bounds: TRect);
    procedure FormVirtualKeyboardShown(Sender: TObject;
      KeyboardVisible: Boolean; const Bounds: TRect);
    procedure lblPhoneClick(Sender: TObject);
    procedure TakePhotoFromCameraAction1DidFinishTaking(Image: TBitmap);
    procedure ListView1DeleteItem(Sender: TObject; AIndex: Integer);
    procedure ListView1ItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
    FKBBounds : TRectF;
    FNeedOffset: Boolean;
    procedure CalcContentBoundsPro(Sender: TObject; var ContentBounds: TRectF);
    procedure RestorePosition;
    procedure UpdateKBBounds;

    procedure GotoList;
    procedure GotoDetail;
    procedure GotoNew;

  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}

uses UClient_DM, system.Math, FMX.Platform, FMX.PhoneDialer;

procedure TForm2.btnBackListClick(Sender: TObject);
begin
  GotoList;
end;

procedure TForm2.btnCancelClick(Sender: TObject);
begin
  DataModule1.CancelItem;//취소
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
    OverflowMenu.Position.Y := Toolbar2.Height;
  end;
end;
procedure TForm2.btnNewItemClick(Sender: TObject);
begin
  ListView1.ItemIndex := -1;
  DataModule1.AppendMode;
  GotoNew
end;

procedure TForm2.btnSaveItemClick(Sender: TObject);
begin
  DataModule1.SaveItem;//저장
  GotoList;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  DataModule1.Refresh;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
  if DataModule1.Connect(edtDSHost.Text, edtDSPort.Text) then
    GotoList
  else
    ShowMessage('서버에 접속할 수 없습니다.');
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
  GotoList;
end;

procedure TForm2.CalcContentBoundsPro(Sender: TObject;
  var ContentBounds: TRectF);
begin
  if FNeedOffset and (FKBBounds.Top >0) then
  begin
    ContentBounds.Bottom := Max(ContentBounds.Bottom,2* ClientHeight - FKBBounds.Top)
  end;
end;


procedure TForm2.RestorePosition;
begin
  vsbEditFocus.ViewportPosition := PointF(vsbEditFocus.ViewportPosition.X, 0);
  lytContentsNew.Align := TAlignLayout.Client;
  vsbEditFocus.RealignContent;
end;

procedure TForm2.TakePhotoFromCameraAction1DidFinishTaking(Image: TBitmap);
begin
  imgNewItem.Bitmap.Assign(Image);
  DataModule1.SetImage(Image);
end;

procedure TForm2.UpdateKBBounds;
var
  LFocused : TControl;
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

procedure TForm2.FormCreate(Sender: TObject);
begin
  TabControl1.TabPosition := TTabPosition.None;
  TabControl1.TabIndex:=0;

  OverFlowMenu.Visible := False;
  vsbEditFocus.OnCalcContentBounds := CalcContentBoundsPro;
end;

procedure TForm2.FormFocusChanged(Sender: TObject);
begin
  UpdateKBBounds;
end;

procedure TForm2.FormVirtualKeyboardHidden(Sender: TObject;
  KeyboardVisible: Boolean; const Bounds: TRect);
begin
  FKBBounds.Create(0, 0, 0, 0);
  FNeedOffset := False;
  RestorePosition;
end;

procedure TForm2.FormVirtualKeyboardShown(Sender: TObject;
  KeyboardVisible: Boolean; const Bounds: TRect);
begin
  FKBBounds := TRectF.Create(Bounds);
  FKBBounds.TopLeft := ScreenToClient(FKBBounds.TopLeft);
  FKBBounds.BottomRight := ScreenToClient(FKBBounds.BottomRight);
  UpdateKBBounds;
end;

procedure TForm2.GotoDetail;
begin
  ChangeTabAction1.Tab := TabItem3;
  ChangeTabAction1.ExecuteTarget(nil);
end;

procedure TForm2.GotoList;
begin
  ChangeTabAction1.Tab := TabItem2;
  ChangeTabAction1.ExecuteTarget(nil);
end;


procedure TForm2.GotoNew;
begin
  ChangeTabAction1.Tab := TabItem4;
  ChangeTabAction1.ExecuteTarget(nil);
end;

procedure TForm2.lblPhoneClick(Sender: TObject);
var
  PhoneDlrSvc: IFMXPhoneDialerService;
begin
  if TPlatformServices.Current.SupportsPlatformService(IFMXPhoneDialerService, IInterface(PhoneDlrSvc)) then
    PhoneDlrSvc.Call(lblPhone.Text);
end;

procedure TForm2.ListView1DeleteItem(Sender: TObject; AIndex: Integer);
begin
  DataModule1.DeleteItem;
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
        DataModule1.DeleteItem; // 선택항목 삭제
        GotoList;
      end;
    end);
end;

procedure TForm2.lstItemModifyClick(Sender: TObject);  //수벙 버튼
begin
  OverFlowMenu.Visible := False;
  DataModule1.EditMode;
  GotoNew;
end;

end.
