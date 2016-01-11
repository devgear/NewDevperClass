unit uimageeditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.ColorGrd,
  Vcl.ExtCtrls, Unit1, MJSPLASH;

type
  Tform1 = class(TForm)
    MainMenu1: TMainMenu;
    FI1: TMenuItem;
    CLEAR1: TMenuItem;
    OPEN1: TMenuItem;
    SAVEAS1: TMenuItem;
    EXIT1: TMenuItem;
    Image1: TImage;
    ColorGrid1: TColorGrid;
    ListBox1: TListBox;
    procedure CLEAR1Click(Sender: TObject);
    procedure OPEN1Click(Sender: TObject);
    procedure EXIT1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SAVEAS1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form1: Tform1;

implementation

{$R *.dfm}

procedure Tform1.CLEAR1Click(Sender: TObject);
begin
  Image1.Picture.Bitmap.Assign(Nil);
  Create(Self);

procedure Tform1.OPEN1Click(Sender: TObject);
var
  OD :TOpenDialog;
begin
  OD := TOpenDialog.Create(Self);
  OD.Filter := 'Bitmap Files(*.bmp)|*.bmp';
  if OD.Execute then
     Image1.Picture.Bitmap.LoadFromFile(OD.FileName);
  OD.Free;
end;

end.
