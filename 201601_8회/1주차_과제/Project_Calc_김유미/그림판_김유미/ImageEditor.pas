unit ImageEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ColorGrd,
  Vcl.ExtCtrls, Vcl.Menus;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    Clear1: TMenuItem;
    Open1: TMenuItem;
    SaveAs1: TMenuItem;
    Exit1: TMenuItem;
    Image1: TImage;
    ColorGrid1: TColorGrid;
    ListBox1: TListBox;
    N2: TMenuItem;
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
 FormCreate(self);

end;

procedure TForm1.Exit1Click(Sender: TObject);
begin
  close;
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
  Image1.Picture.Bitmap.Canvas.MoveTo(x,y);
end;

procedure TForm1.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 if Shift = [sSleft] then
  begin
    Image1.Picture.Bitmap.Canvas.Pen.Width := StrToInt(ListBox1.Items [ ListBox1.ItemIndex]);
    Image1.Picture.Bitmap.Canvas.Pen.Color := ColorGrid1.ForegroundColor;
    Image1.Picture.Bitmap.Canvas.LineTo(x,y);
  end;
end;

procedure TForm1.Open1Click(Sender: TObject);
  var
  OD : TOpenDialog;
begin
  OD := TOpenDialog.Create(self);
  OD.Filter := 'Bitmap Files(*.bmp)|*.bmp';
  if OD.Execute then
    Image1.Picture.Bitmap.LoadFromFile(OD.FileName);
  OD.Free;
end;

procedure TForm1.SaveAs1Click(Sender: TObject);
 var
  SD : TSaveDialog;
begin
  SD := TSaveDialog.Create(self);
  SD.Filter := 'Bitmap Files(*.bmp)|*.bmp';
  if sd.Execute then
     Image1.Picture.Bitmap.SaveToFile(SD.FileName);
  SD.Free;

end;

end.
