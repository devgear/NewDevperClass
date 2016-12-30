unit UImageEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.ColorGrd,
  Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    clear1: TMenuItem;
    Open1: TMenuItem;
    Save1: TMenuItem;
    Exit1: TMenuItem;
    Image1: TImage;
    ColorGrid1: TColorGrid;
    ListBox1: TListBox;
    procedure clear1Click(Sender: TObject);
    procedure Open1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
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

procedure TForm1.clear1Click(Sender: TObject);
      begin
         Image1.Picture.Bitmap.Assign(Nil);    // 작업한 내용 지우기
         FormCreate(Self);                    //초기처리를 호출
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
   if shift = [sSleft] then
     begin
        Image1.Picture.Bitmap.Canvas.Pen.Width :=
        StrToInt(ListBox1.Items[ListBox1.ItemIndex]);

        Image1.Picture.Bitmap.Canvas.Pen.Color := ColorGrid1.ForegroundColor;

        Image1.Picture.Bitmap.Canvas.LineTo(X,Y);
     end;
end;

procedure TForm1.Open1Click(Sender: TObject);
     var
     OD :TOpenDialog;
     begin
        OD := TOpenDialog.Create(Self);
        OD.Filter := 'Bitmap Files(*.bmp)|*.bmp' ;
        if OD.Execute then
        Image1.Picture.Bitmap.LoadFromFile(OD.FileName);
        OD.Free;
     end;

procedure TForm1.Save1Click(Sender: TObject);
  var
  SD:TSaveDialog;
begin
   SD:= TSaveDialog.Create(Self);
   SD.Filter := 'Bitmap Files(*.bmp)|*.bmp';
   if SD.Execute then
   Image1.Picture.Bitmap.SaveToFile(SD.FileName);
   SD.Free;
end;

end.
