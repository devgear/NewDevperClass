unit UmainTB;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ToolWin, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    ToolBar1: TToolBar;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ImageList1: TImageList;
    ToolButton4: TToolButton;

    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Pro, Emplo, DEPT;



procedure TForm1.ToolButton2Click(Sender: TObject);
begin

If not assigned(proform) then

  proform := tproform.create(self);
  proform.parent := Panel1;
  proform.BorderStyle := bsnone;
  proform.Align := alclient;
  proform.show;

end;

procedure TForm1.ToolButton3Click(Sender: TObject);
begin
If not assigned(EmploForm) then

  EmploForm := tEmploForm.create(self);
  EmploForm.parent := Panel1;
  EmploForm.BorderStyle := bsnone;
  EmploForm.Align := alclient;
  EmploForm.show;

end;

procedure TForm1.ToolButton4Click(Sender: TObject);
begin


If not assigned(DeptForm) then

  DeptForm := tDeptForm.create(self);
  DeptForm.parent := Panel1;
  DeptForm.BorderStyle := bsnone;
  DeptForm.Align := alclient;
  DeptForm.show;

end;

end.
