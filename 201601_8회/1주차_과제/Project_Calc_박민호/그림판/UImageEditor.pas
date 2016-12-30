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
    N1: TMenuItem;
    Exit1: TMenuItem;
    Image1: TImage;
    ColorGrid1: TColorGrid;
    ListBox1: TListBox;
    Help1: TMenuItem;
    Help2: TMenuItem;
    procedure Clear1Click(Sender: TObject);
    procedure Open1Click(Sender: TObject);
    procedure SaveAs1Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Help2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses UAbout;
  var
  Hasselection : Boolean;

procedure TForm1.Clear1Click(Sender: TObject);
begin
  Image1.Picture.Bitmap.Assign(nil);
  FormCreate(self);
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

procedure TForm1.Help2Click(Sender: TObject);
begin
  About.Showmodal;
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
  begin
    Image1.Picture.Bitmap.Canvas.Pen.Width := Strtoint(ListBox1.Items [ListBox1.ItemIndex]);
    Image1.Picture.Bitmap.Canvas.Pen.Color := ColorGrid1.ForeGroundColor;
    Image1.Picture.Bitmap.Canvas.LineTo(X,Y);
  end;

end;

procedure TForm1.Open1Click(Sender: TObject);
var
  OD : TOpenDialog;
begin
  OD := TOpenDialog.Create(self);
  OD.Filter := 'Bitmap Files(*.bmp)|*.bmp';
  if OD.Execute then
    Image1.Picture.Bitmap.LoadFromFile(OD.Filename);
  OD.Free;
end;

procedure TForm1.SaveAs1Click(Sender: TObject);
var
  SD : TSaveDialog;
begin
  SD := TSaveDialog.Create(self);
  SD.Filter := 'Bitmap Files(*.bmp)|*.bmp';
  if SD.Execute then
    Image1.Picture.Bitmap.SaveToFile(SD.Filename);
  SD.Free;
end;

end.

