unit Phone;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Dialogs, Data.Bind.GenData,
  Fmx.Bind.GenData, Data.Bind.Components, Data.Bind.ObjectScope, FMX.Layouts,
  FMX.ListBox, FMX.StdCtrls, FMX.Graphics, FMX.TabControl, System.Rtti,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, FMX.Objects, FMX.Edit, System.Actions, FMX.ActnList,
  FMX.ListView.Types, FMX.ListView, FMX.Controls.Presentation, Data.Bind.DBScope,
  FMX.MediaLibrary.Actions, FMX.StdActns, FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base, FMX.Gestures, FMX.ScrollBox, FMX.Memo, FMX.Ani,
  System.ImageList, FMX.ImgList;

type
  TPhoneMasterDetail = class(TForm)
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    MasterToolbar: TToolBar;
    MasterLabel: TLabel;
    DetailToolbar: TToolBar;
    DetailLabel: TLabel;
    imgContact: TImage;
    BackButton: TSpeedButton;
    ListView1: TListView;
    edtName: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    btnDelete: TButton;
    btnSave: TButton;
    btnAdd: TButton;
    TabItem3: TTabItem;
    Edit1: TEdit;
    Edit2: TEdit;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkListControlToField1: TLinkListControlToField;
    LinkListControlToField2: TLinkListControlToField;
    LinkPropertyToFieldBitmap: TLinkPropertyToField;
    ActionList1: TActionList;
    GestureManager1: TGestureManager;
    NextTabAction1: TNextTabAction;
    PreviousTabAction1: TPreviousTabAction;
    Layout1: TLayout;
    Layout2: TLayout;
    Panel1: TPanel;
    Layout3: TLayout;
    Panel2: TPanel;
    Panel3: TPanel;
    edtSex: TEdit;
    edtId: TEdit;
    edtEnterdate: TEdit;
    edtBirth: TEdit;
    edtAge: TEdit;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    LinkControlToField5: TLinkControlToField;
    LinkControlToField6: TLinkControlToField;
    LinkControlToField7: TLinkControlToField;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    LinkControlToField8: TLinkControlToField;
    LinkControlToField9: TLinkControlToField;
    LinkControlToField10: TLinkControlToField;
    TakePhotoFromLibraryAction1: TTakePhotoFromLibraryAction;
    TakePhotoFromCameraAction1: TTakePhotoFromCameraAction;
    ChangeTabAction1: TChangeTabAction;
    ImageList1: TImageList;
    Image1: TImage;
    Button5: TButton;
    ComboBox1: TComboBox;
    LinkFillControlToField1: TLinkFillControlToField;
    procedure ListView1ItemClick(const Sender: TObject;
      const AItem: TListViewItem);
//    procedure Button4Click(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure TakePhotoFromLibraryAction1DidFinishTaking(Image: TBitmap);
    procedure TakePhotoFromCameraAction1DidFinishTaking(Image: TBitmap);
    procedure BackButtonClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);

    procedure FormCreate(Sender: TObject);
    //procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PhoneMasterDetail: TPhoneMasterDetail;

implementation


{$R *.fmx}

uses  dmPhone;

//백 버튼
procedure TPhoneMasterDetail.BackButtonClick(Sender: TObject);
begin
  DataModule2.CancelData;

  ChangeTabAction1.Tab := TabItem1;
  ChangeTabAction1.ExecuteTarget(Self);
end;

//추가버튼
procedure TPhoneMasterDetail.btnAddClick(Sender: TObject);
begin
  DataModule2.NewData;

  ChangeTabAction1.Tab := TabItem2;
  ChangeTabAction1.ExecuteTarget(Self);
end;

//삭제버튼
procedure TPhoneMasterDetail.btnDeleteClick(Sender: TObject);

begin
  DataModule2.DeleteData;

  ChangeTabAction1.Tab := TabItem1;
  ChangeTabAction1.ExecuteTarget(Self);
end;

//저장버튼
procedure TPhoneMasterDetail.btnSaveClick(Sender: TObject);
var
  Thumbnail: TBitmap;
  ImgStream, ThumbStream: TMemoryStream;
begin
  ImgStream := TMemoryStream.Create;
  ThumbStream := TMemoryStream.Create;
  try
    imgContact.Bitmap.SaveToStream(ImgStream);
    Thumbnail := imgContact.Bitmap.CreateThumbnail(100, 100);
    Thumbnail.SaveToStream(ThumbStream);
    DataModule2.SaveData(ImgStream, ThumbStream);

    ChangeTabAction1.Tab := TabItem1;
    ChangeTabAction1.ExecuteTarget(Self);
  finally
    ImgStream.Free;
    ThumbStream.Free;
  end;
end;

//이미지 초기화
procedure TPhoneMasterDetail.Button3Click(Sender: TObject);
begin
  imgContact.Bitmap.Clear(TAlphaColorRec.Null);
end;

//유아정보 리프레쉬
procedure TPhoneMasterDetail.Button5Click(Sender: TObject);
begin
  DataModule2.qryKids.ApplyUpdates(0);
  DataModule2.qryKids.Refresh;
end;

//호스트, 포트 연결
procedure TPhoneMasterDetail.FormCreate(Sender: TObject);
begin
  DataModule2.SQLConnection1.Params.Values['HostName'] := Edit1.Text;
  DataModule2.SQLConnection1.Params.Values['Port'] := Edit2.Text;
  DataModule2.SQLConnection1.Connected := False;
  DataModule2.qryKids.Active := True;
  DataModule2.qryParents.Active := True;
  //FloatAnimation1.Stop;
end;

procedure TPhoneMasterDetail.ListView1ItemClick(const Sender: TObject;
  const AItem: TListViewItem);
begin
  NextTabAction1.ExecuteTarget(nil);
end;

//카메라 액션
procedure TPhoneMasterDetail.TakePhotoFromCameraAction1DidFinishTaking(
  Image: TBitmap);
begin
  imgContact.Bitmap.Assign(Image);
end;

//라이브러리 액션
procedure TPhoneMasterDetail.TakePhotoFromLibraryAction1DidFinishTaking(
  Image: TBitmap);
begin
  imgContact.Bitmap.Assign(Image);
end;

end.




