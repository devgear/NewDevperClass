unit UItemForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtDlgs, Mask, DBCtrls, Grids, DBGrids, StdCtrls, ComCtrls, Buttons,
  ExtCtrls;

type
  TItemForm = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    ItemEdit: TEdit;
    Panel2: TPanel;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Bt_Insert: TButton;
    Bt_Delete: TButton;
    Bt_Apply: TButton;
    ItemIma: TDBImage;
    Bt_Image: TButton;
    Bt_Cancel: TButton;
    DBGrid1: TDBGrid;
    ItemNum: TDBEdit;
    ItemNa: TDBEdit;
    ItemCo: TDBEdit;
    ItemDa: TDBEdit;
    OpenPictureDialog1: TOpenPictureDialog;
    Label1: TLabel;
    ShopNum: TDBEdit;
    procedure Bt_InsertClick(Sender: TObject);
    procedure Bt_DeleteClick(Sender: TObject);
    procedure Bt_ApplyClick(Sender: TObject);
    procedure Bt_ImageClick(Sender: TObject);
    procedure Bt_CancelClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure ItemEditChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ItemForm: TItemForm;

implementation

uses ClientModuleUnit1, JPEG;

{$R *.dfm}

//등록 취소
procedure TItemForm.Bt_CancelClick(Sender: TObject);
begin
  ClientModule1.Item.Cancel;
  ClientModule1.Item.CancelUpdates;
end;

//데이터 삭제
procedure TItemForm.Bt_DeleteClick(Sender: TObject);
begin
with ClientModule1.Item do
  if Messagedlg('삭제 하시겠습니까?', mtconfirmation, [mbYes, mbNo], 0) = mrYes then
  try
    Delete;
    ApplyUpdates(-1);
  except
    on e: Exception do
    ShowMessage(e.Message);
  end;
  Refresh;
end;

//ApplyUpdate
procedure TItemForm.Bt_ApplyClick(Sender: TObject);
begin
  ShowMessage('최종 등록');
  ClientModule1.Item.ApplyUpdates(-1);
end;

//사진 불러오기
procedure TItemForm.Bt_ImageClick(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
  ItemIma.Picture.LoadFromFile(OpenPictureDialog1.FileName);
end;

procedure TItemForm.Bt_InsertClick(Sender: TObject);
begin
{
  if ItemNum.Text = '' then
  Begin
     ItemNum.SetFocus;
     Raise Exception.Create('상품코드를 입력!');
  End;

  if ItemNa.Text = '' then
  Begin
     ItemNa.SetFocus;
     Raise Exception.Create('상품명 입력 !');
  End;

  if ItemCo.Text = '' then
  Begin
     ItemCo.SetFocus;
     Raise Exception.Create('상품가격 입력 !');
  End;

  if ItemDa.Text = '' then
  Begin
     ItemCo.SetFocus;
     Raise Exception.Create('상품등록일자 입력 !');
  End;

  if CM.Item.Locate('I_ID', ItemNum.Text, []) then
  begin
    raise Exception.Create('이미 등록된 코드임');
  end
  else
    CM.Item.Edit;

  with CM.Item do
  begin
    Try
      Post;
      ApplyUpdates(-1);
      Showmessage('%s 완료되었습니다');
    Except
      on e:Exception do
         ShowMessage(e.Message);
    End;
    Refresh;
  end;
}
  ClientModule1.Item.Insert;
end;

//상품 검색
procedure TItemForm.ItemEditChange(Sender: TObject);
begin
  ClientModule1.Item.IndexFieldNames := 'I_NAME';
  ClientModule1.Item.FindNearest([ItemEdit.Text]);
end;

//폼 종료
procedure TItemForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

//데이터 최상위
procedure TItemForm.SpeedButton1Click(Sender: TObject);
begin
  ClientModule1.Item.First;
end;

//이전 데이터
procedure TItemForm.SpeedButton2Click(Sender: TObject);
begin
  if not ClientModule1.Item.Bof then
  ClientModule1.Item.Prior;
end;

//다음 데이터
procedure TItemForm.SpeedButton3Click(Sender: TObject);
begin
  if not ClientModule1.Item.Eof then
     ClientModule1.Item.Next;
end;

//데이터 최하위
procedure TItemForm.SpeedButton4Click(Sender: TObject);
begin
  ClientModule1.Item.Last;
end;

end.
