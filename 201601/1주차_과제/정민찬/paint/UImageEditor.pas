unit UImageEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ColorGrd, Vcl.ExtCtrls, Vcl.Menus, Vcl.CustomizeDlg;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Clear1: TMenuItem;
    Open1: TMenuItem;
    SaveAs1: TMenuItem;
    Exit1: TMenuItem;
    Image1: TImage;
    ColorGrid1: TColorGrid;
    ListBox1: TListBox;
    New1: TMenuItem;
    procedure Clear1Click(Sender: TObject);
    procedure Open1Click(Sender: TObject);
    procedure SaveAs1Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Clear1Click(Sender: TObject);
begin
Image1.Picture.Bitmap.Assign(nil); //작업 내용 지우기
FormCreate(Self); // 초기처리를 호출합니다.
end;

procedure TForm1.Exit1Click(Sender: TObject);
begin
close;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
{ 새로 생성하는 파일의 크기는 Image1과 같습니다 }
Image1.Picture.Bitmap.Width := Image1.Width;
Image1.Picture.Bitmap.Height := Image1.Height;
ListBox1.ItemIndex := 0;
end;

procedure TForm1.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
{ 마우스의 움직임에 따라 캔버스에 그림이 그려집니다.}
Image1.Picture.Bitmap.Canvas.MoveTo(X,Y);
end;

procedure TForm1.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
{마우스 왼쪽 버튼을 이용하여 그림을 그립니다.}
if Shift=[sSleft] then
// [sSleft], [sSright], [sSAlt], [sSCtrl] 등 원하는 키를 설정할 수 있습니다.
{ 선택한 펜의 굵기와 색에 따라 캔버스에 그림이 그려집니다.}
begin
  //펜의 굵기 지정 : LIstBox 에서 선택된 크기만큼 굵기가 변합니다.
  Image1.Picture.Bitmap.Canvas.Pen.Width :=
  StrToint(ListBox1.Items [ListBox1.ItemIndex]);

  //펜의 색상 지정 : COlorGrid 에서 선택된 색상으로 변합니다.
  Image1.Picture.Bitmap.Canvas.Pen.Color := ColorGrid1.ForegroundColor;

  // 캔버스에 그려진 라인에 따라 Image1 화면에 나타납니다.
  Image1.Picture.Bitmap.Canvas.LineTo(X,Y);
end;
end;

procedure TForm1.Open1Click(Sender: TObject);
var
OD:TOpenDialog;  // TOpenDialog 변수 OD를 선언합니다.
begin
OD := TOpenDialog.Create(self);
OD.Filter:= 'Bitmap File(*.bmp) | *.bmp'; //{*.BMP 형식의 파일을 불러옵니다.}
if od.Execute then
Image1.Picture.Bitmap.LoadFromFile(Od.FileName);
OD.Free; //OD 해제
end;

procedure TForm1.SaveAs1Click(Sender: TObject);
var
SD:TSaveDialog;
begin
SD := TSaveDialog.Create(Self);
{*.bmp 형식으로 저장합니다.}
SD.Filter := 'Bitmap Files(*.bmp) | *.bmp';
if SD.Execute then
Image1.Picture.Bitmap.SaveToFile(SD.Filename);
Sd.Free; //SD를 해제합니다.
end;

end.
