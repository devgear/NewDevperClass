unit UImageEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ColorGrd,
  Vcl.ExtCtrls, Vcl.Menus;

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
  Image1.Picture.Bitmap.Assign(Nil);
  Image1.Create(Self);
  // 강사님 p177 에 있는 소스 그대로 적었는데
  // 이미지가 클리어되어야되는데 아예 창이 꺼집니다.
end;

procedure TForm1.Exit1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Image1.Picture.Bitmap.Width := Image1.Width;
  Image1.Picture.Bitmap.Height := Image1.Height;
  ListBox1.ItemIndex := 0;
end;

procedure TForm1.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Image1.Picture.Bitmap.Canvas.MoveTo(X,Y);
end;

procedure TForm1.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if Shift = [sSleft] then
  // [sSleft], [sSright], [sSAlt], [sSCtrl]
  begin
    Image1.Picture.Bitmap.Canvas.Pen.Width :=
    StrToInt(ListBox1.Items[ListBox1.ItemIndex]);
    //펜의 굵기 지정

    Image1.Picture.Bitmap.Canvas.Pen.Color := ColorGrid1.ForegroundColor;
    // 펜의 색상 지정

    Image1.Picture.Bitmap.Canvas.LineTo(X,Y);
    // 펜의 그려진 라인의 따라 이미지1에 나타남
  end;
end;

procedure TForm1.Open1Click(Sender: TObject);
var
  OD:TopenDialog;
begin
  OD := TOpenDialog.Create(Self);
  OD.Filter := 'Bitmap Files(*.bmp)|*.bmp';
  if OD.Execute then
    Image1.Picture.Bitmap.LoadFromFile(OD.FileName);
    OD.Free;
end;

procedure TForm1.SaveAs1Click(Sender: TObject);
var
  SD:TSaveDialog;
begin
  SD := TSaveDialog.Create(Self);
  SD.Filter := 'Bitmap Files(*bmp)|*.bmp';
  if SD.Execute then
    Image1.Picture.Bitmap.SaveToFile(SD.FileName);
    SD.Free;
end;

end.
