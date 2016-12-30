unit UShop_Form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtDlgs, Grids, DBGrids, Mask, DBCtrls, StdCtrls, ComCtrls, Buttons,
  ExtCtrls;

type
  TShopForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    Bt_Insert: TButton;
    Bt_Delete: TButton;
    Bt_Apply: TButton;
    Bt_Image: TButton;
    Bt_Cancel: TButton;
    DBGrid1: TDBGrid;
    Label3: TLabel;
    ShopNum: TDBEdit;
    Label6: TLabel;
    ShopPw: TDBEdit;
    Label4: TLabel;
    ShopNa: TDBEdit;
    Label5: TLabel;
    ShopMa: TDBEdit;
    Label7: TLabel;
    ShopAddr: TDBEdit;
    Label8: TLabel;
    ShopDa: TDBEdit;
    Label9: TLabel;
    ShopIma: TDBImage;
    Label10: TLabel;
    DBEdit1: TDBEdit;
    OpenPictureDialog1: TOpenPictureDialog;
    Label2: TLabel;
    ShopEdit: TEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    procedure Bt_ImageClick(Sender: TObject);
    procedure Bt_InsertClick(Sender: TObject);
    procedure Bt_CancelClick(Sender: TObject);
    procedure Bt_DeleteClick(Sender: TObject);
    procedure Bt_ApplyClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure ShopEditChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ShopForm: TShopForm;

implementation

uses USDM;



{$R *.dfm}

//등록 취소
procedure TShopForm.Bt_CancelClick(Sender: TObject);
begin
  SDM.Shop.Cancel;
  SDM.Shop.CancelUpdates;
end;

//데이터 삭제
procedure TShopForm.Bt_DeleteClick(Sender: TObject);
begin
  with SDM.Shop do
  if Messagedlg('삭제 하시겠습니까?', mtconfirmation, [mbYes, mbNo], 0) = mrYes then
  try
    Delete;
    ApplyUpdates(-1); // -1은 전부다 체킹하겠다는 의미입니다.
  except
    on e: Exception do
    ShowMessage(e.Message);
  end;
  Refresh;
end;

//ApplyUpdate
procedure TShopForm.Bt_ApplyClick(Sender: TObject);
begin
  ShowMessage('최종 등록');
  SDM.Shop.ApplyUpdates(-1);
end;

//사진 불러오기
procedure TShopForm.Bt_ImageClick(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
  ShopIma.Picture.LoadFromFile(OpenPictureDialog1.FileName);
end;

//등록
procedure TShopForm.Bt_InsertClick(Sender: TObject);
begin
  SDM.Shop.Insert;
end;

//지점 검색
procedure TShopForm.ShopEditChange(Sender: TObject);
begin

  SDM.Shop.IndexFieldNames := 'C_NAME';
  SDM.Shop.FindNearest([ShopEdit.Text]);
end;

//폼 종료
procedure TShopForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

//데이터 최상위
procedure TShopForm.SpeedButton1Click(Sender: TObject);
begin
  SDM.Shop.First;
end;

//이전 데이터
procedure TShopForm.SpeedButton2Click(Sender: TObject);
begin
  if not SDM.Shop.Bof then
  SDM.Shop.Prior;
end;

//다음 데이터
procedure TShopForm.SpeedButton3Click(Sender: TObject);
begin
  if not SDM.Shop.Eof then
     SDM.Shop.Next;
end;

//데이터 최하위
procedure TShopForm.SpeedButton4Click(Sender: TObject);
begin
  SDM.Shop.Last;
end;

end.
