unit Main_Client;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.TabControl, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.Effects,
  FMX.Layouts, FMX.ListView, FMX.Objects, FMX.ListBox, FMX.ScrollBox, FMX.Memo,
  FMX.Edit, Data.DBXDataSnap, IPPeerClient, Data.DBXCommon, Data.DB,
  Datasnap.DBClient, Datasnap.DSConnect, Data.SqlExpr, System.Rtti,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope,
  System.IOUtils, System.Actions, FMX.ActnList;

type
  TForm1 = class(TForm)
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    TabItem3: TTabItem;
    ToolBar1: TToolBar;
    Label1: TLabel;
    btnNewitem: TButton;
    ListView1: TListView;
    ToolBar2: TToolBar;
    Label2: TLabel;
    btnBackList: TButton;

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
    lbl_Phone: TListBoxItem;
    lbl_WebSite: TListBoxItem;
    ListBoxItem4: TListBoxItem;
    lblPublisher: TLabel;
    lblPhone: TLabel;
    lblWebSite: TLabel;
    lblComment: TLabel;
    OverflowMenu: TListBox;
    ShadowEffect2: TShadowEffect;
    lstItemModify: TListBoxItem;
    lstItemDelete: TListBoxItem;
    ToolBar3: TToolBar;
    Label3: TLabel;
    Button1: TButton;
    vsbEditFocus: TVertScrollBox;
    lytContentsNew: TLayout;
    Layout3: TLayout;
    Layout4: TLayout;
    Rectangle2: TRectangle;
    imgNewItem: TImage;
    ListBox2: TListBox;
    ListBoxItem5: TListBoxItem;
    ListBoxItem6: TListBoxItem;
    ListBoxItem7: TListBoxItem;
    ListBoxItem8: TListBoxItem;
    ListBoxItem9: TListBoxItem;
    ListBoxItem10: TListBoxItem;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Memo1: TMemo;
    SQLConnection1: TSQLConnection;
    DSProviderConnection1: TDSProviderConnection;
    ClientDataSet1: TClientDataSet;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkPropertyToFieldBitmap: TLinkPropertyToField;
    LinkPropertyToFieldText: TLinkPropertyToField;
    LinkPropertyToFieldBitmap2: TLinkPropertyToField;
    LinkPropertyToFieldText2: TLinkPropertyToField;
    LinkPropertyToFieldText3: TLinkPropertyToField;
    LinkPropertyToFieldText4: TLinkPropertyToField;
    LinkPropertyToFieldText5: TLinkPropertyToField;
    LinkListControlToField1: TLinkListControlToField;
    LinkPropertyToFieldText6: TLinkPropertyToField;
    LinkPropertyToFieldText7: TLinkPropertyToField;
    btnSaveItem: TButton;
    ListBox3: TListBox;
    lstItem_Modify: TListBoxItem;
    lstItem_Delete: TListBoxItem;
    ActionList1: TActionList;
    ChangeTabAction1: TChangeTabAction;
    procedure FormCreate(Sender: TObject);
    procedure ListView1ItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure btnSaveItemClick(Sender: TObject);
    procedure btnDetailClick(Sender: TObject);
    procedure lstItem_ModifyClick(Sender: TObject);
    procedure lstItem_DeleteClick(Sender: TObject);
    procedure FormFocusChanged(Sender: TObject);
    procedure FormVirtualKeyboardHidden(Sender: TObject;
      KeyboardVisible: Boolean; const Bounds: TRect);
    procedure FormVirtualKeyboardShown(Sender: TObject;
      KeyboardVisible: Boolean; const Bounds: TRect);
    procedure lbl_PhoneClick(Sender: TObject);
    procedure lbl_WebSiteClick(Sender: TObject);
    procedure ChangeImageEvent(Image: TBitmap);
    procedure imgNewItemClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure btnNewitemClick(Sender: TObject);

  private
    { Private declarations }
    FKBBounds: TRectF;
    FNeedOffset: Boolean;

    procedure CalcContentBoundsProc(Sender: TObject; var ContentBounds: TRectF);
    procedure RestorePosition;
    procedure UpdateKBBounds;
  public
    { Public declarations }
    procedure Connect;// 데이터베이스 연결
    procedure AppendMode;// 입력 모드로 변경
    procedure EditMode;// 수정 모드로 변경
    procedure SetImage(ABitmap: TBitmap);// 이미지저장(본문, 목록의 썸네일 이미지)
    procedure SaveItem;// 항목 저장(입력/수정)
    procedure CancelItem;// 입력/수정 모드 취소
    procedure DeleteItem;// 선택항목 삭제
    procedure GotoList;
    procedure GotoDetail;
    procedure GotoNew;
end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

uses  System.Math, FMX.Platform, FMX.PhoneDialer, PhotoFrame, WebBrowserFrame;

{ TForm1 }

procedure TForm1.AppendMode; // 입력모드
begin
  ClientDataSet1.Insert;
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
     OverflowMenu.Position.Y := Toolbar2.Height;
    end;
end;

procedure TForm1.btnNewitemClick(Sender: TObject);
begin
  AppendMode;// 입력 모드로 변경
  GotoNew;
end;

procedure TForm1.btnSaveItemClick(Sender: TObject);
begin
   GotoList;
end;

procedure TForm1.CancelItem; // 입력/수정 모드 취소
begin
  if ClientDataSet1.UpdateStatus = TUpdateStatus.usInserted then
     ClientDataSet1.Cancel;
end;

procedure TForm1.Connect; // 데이터베이스 연결
begin
  {$IFNDEF MSWINDOWS}
  FDConnection1.Params.Values['Database'] := TPath.Combine(TPath.GetDocumentsPath, 'BOOKLOG.GDB');
  {$ENDIF}
  SQLConnection1.Connected := True;
  ClientDataSet1.Active := True;
end;

procedure TForm1.DeleteItem; // 현재항목 삭제
begin
  ClientDataSet1.Delete;
  ClientDataSet1.ApplyUpdates(0);
  //ClientDataSet1.CommitUpdates;
  ClientDataSet1.Refresh;
end;

procedure TForm1.EditMode;  // 수정모드
begin
  ClientDataSet1.Edit;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  TabControl1.TabPosition := TTabPosition.None;
  TabControl1.TabIndex := 0;

  OverflowMenu.Visible := False; // 시작 시 팝업메뉴 감추기
  vsbEditFocus.OnCalcContentBounds := CalcContentBoundsProc;
  //ClientDataSet1.Connect;  // 데이터베이스 연결
end;

procedure TForm1.FormFocusChanged(Sender: TObject);
begin
  UpdateKBBounds;
end;


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

procedure TForm1.SaveItem;  // 항목 저장
begin
  ClientDataSet1.Post;
  ClientDataSet1.ApplyUpdates(0);
  //ClientDataSet1.CommitUpdates;
  ClientDataSet1.Refresh;
end;

procedure TForm1.SetImage(ABitmap: TBitmap);  // 이미지 저장(본문이미지와 목록에 표시할 썸네일)
 var
  Thumbnail: TBitmap;
  ImgStream, ThumbStream: TMemoryStream;
begin
  if ClientDataSet1.UpdateStatus = TUpdateStatus.usUnmodified then
     ClientDataSet1.Edit;
     ImgStream := TMemoryStream.Create;
     ThumbStream := TMemoryStream.Create;
    try
      ABitmap.SaveToStream(ImgStream);
      Thumbnail := ABitmap.CreateThumbnail(100, 100);
      Thumbnail.SaveToStream(ThumbStream);
      (ClientDataSet1.FieldByName('BOOK_IMAGE') as TBlobField).LoadFromStream(ImgStream);
      (ClientDataSet1.FieldByName('BOOK_THUMB') as TBlobField).LoadFromStream(ThumbStream);
    finally
      ImgStream.Free;
      ThumbStream.Free;
    end;
end;

procedure TForm1.ListView1ItemClick(const Sender: TObject;
    const AItem: TListViewItem);
begin
  GotoDetail;
end;

procedure TForm1.lstItem_DeleteClick(Sender: TObject);
begin
  OverflowMenu.Visible := False;

  MessageDlg('해당 정보를 삭제하시겠습니까?', TMsgDlgType.mtWarning,
    [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], 0,
    procedure(const AResult: TModalResult)
     begin
       if AResult = mrYes then
       begin
        ShowMessage('삭제');
        DeleteItem;// 선택항목 삭제
        GotoList;
       end;
     end);
end;

procedure TForm1.lstItem_ModifyClick(Sender: TObject);  // 수정
begin
  OverflowMenu.Visible := False;
  EditMode; // 수정 모드로 변경
  GotoNew;
end;

procedure TForm1.CalcContentBoundsProc(Sender: TObject;
  var ContentBounds: TRectF);
begin
  if FNeedOffset and (FKBBounds.Top > 0) then
  begin
    ContentBounds.Bottom := Max(
          ContentBounds.Bottom, 2 * ClientHeight - FKBBounds.Top);
  end;
end;

procedure TForm1.RestorePosition;
begin
  vsbEditFocus.ViewportPosition := PointF(vsbEditFocus.ViewportPosition.X, 0);
  lytContentsNew.Align := TAlignLayout.Client;
  vsbEditFocus.RealignContent;
end;

procedure TForm1.UpdateKBBounds;
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

procedure TForm1.lbl_PhoneClick(Sender: TObject);
var
  PhoneDlrSvc: IFMXPhoneDialerService;
begin
  if TPlatformServices.Current.SupportsPlatformService(IFMXPhoneDialerService, IInterface(PhoneDlrSvc)) then
     PhoneDlrSvc.Call(lblPhone.Text);
end;

procedure TForm1.lbl_WebSiteClick(Sender: TObject);
begin
  TfrWebBrowser.CreateAndShow(Self, lblWebSite.Text);
end;

procedure TForm1.ChangeImageEvent(Image: TBitmap);
begin
  imgNewItem.Bitmap.Assign(Image);
end;

procedure TForm1.imgNewItemClick(Sender: TObject);
begin
  TfrPhoto.CreateAndShow(Self, ChangeImageEvent, nil);
end;

end.
