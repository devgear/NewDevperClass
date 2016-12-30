unit UMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.WinXCtrls, System.ImageList, Vcl.ImgList, Vcl.ToolWin,
  Vcl.Imaging.pngimage, UDM;

type
  TForm3 = class(TForm)
    Panellayout: TPanel;
    ToolBar1: TToolBar;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses UDept, Ustudent, Uprofessor, USubject, UDotice, USignup;



procedure TForm3.Button1Click(Sender: TObject);
begin
    if not Assigned(form8)then
  begin
    form8 := Tform8.Create(Self);
    form8.Align := alClient;
    form8.BorderStyle := bsNone;
    form8.Parent := Panellayout;
  end;
  form8.Show;
  end;

procedure TForm3.Button2Click(Sender: TObject);
begin
         if not Assigned(form9)then
  begin
    form9 := Tform9.Create(Self);
    form9.Align := alClient;
    form9.BorderStyle := bsNone;
    form9.Parent := Panellayout;
  end;
  form9.Show;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
     if not Assigned(form7)then
  begin
    form7 := Tform7.Create(Self);
    form7.Align := alClient;
    form7.BorderStyle := bsNone;
    form7.Parent := Panellayout;
  end;
  form7.Show;
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
   if not Assigned(form6)then
  begin
    form6 := Tform6.Create(Self);
    form6.Align := alClient;
    form6.BorderStyle := bsNone;
    form6.Parent := Panellayout;
  end;
  form6.Show;
end;

procedure TForm3.Button5Click(Sender: TObject);
begin
 if not Assigned(form4)then
  begin
    form4 := Tform4.Create(Self);
    form4.Align := alClient;
    form4.BorderStyle := bsNone;
    form4.Parent := Panellayout;
  end;
  form4.Show;
end;

procedure TForm3.Button6Click(Sender: TObject);
begin
   if not Assigned(form5)then
  begin
    form5 := Tform5.Create(Self);
    form5.Align := alClient;
    form5.BorderStyle := bsNone;
    form5.Parent := Panellayout;
  end;
  form5.Show;
end;

end.
