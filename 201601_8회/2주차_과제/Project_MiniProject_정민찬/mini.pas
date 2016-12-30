unit mini;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask, Vcl.Menus,
  Vcl.ToolWin;

type
  TForm1 = class(TForm)
    StatusBar1: TStatusBar;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    Panel1: TPanel;
    Timer1: TTimer;
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses project, dept, member, P_data;



procedure TForm1.Timer1Timer(Sender: TObject);
begin
StatusBar1.Panels[2].Text := datetimetostr(now);
//FormatDateTime('yyyy-mmmm-dd dddd hh:mm:ss ampm', now;

end;

procedure TForm1.ToolButton1Click(Sender: TObject);
begin
form1.Width := 616;
form1.Height:= 521;
 if not assigned(form2) then
    form2 := Tform2.create(self);
    form2.parent := form1.panel1;
    form2.borderstyle := bsNone;
    form2.align := alclient;
    form2.show;
end;

procedure TForm1.ToolButton2Click(Sender: TObject);
begin
form1.Width := 447;
form1.Height:= 420;
 if not assigned(form4) then
    form4 := Tform4.create(self);
    form4.parent := form1.panel1;
    form4.borderstyle := bsNone;
    form4.align := alclient;
    form4.show;
end;

procedure TForm1.ToolButton3Click(Sender: TObject);
begin
form1.Width := 447;
form1.Height:= 420;
if not assigned(form3) then
    form3 := Tform3.create(self);
    form3.parent := form1.panel1;
    form3.borderstyle := bsNone;
    form3.align := alclient;
    form3.show;
end;

end.
