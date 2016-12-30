unit PROJECT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Ribbon, Vcl.RibbonLunaStyleActnCtrls,
  Vcl.Menus, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.ComCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls,
  Vcl.CategoryButtons;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses UPro, UBu, USa;

procedure TForm1.ToolButton1Click(Sender: TObject);
begin
  if not assigned(ProForm) then
    ProForm := TProForm.create(self);
    ProForm.parent := panel1;
    ProForm.borderstyle := bsNone;
    ProForm.align := alclient;

    ProForm.show;
end;

procedure TForm1.ToolButton2Click(Sender: TObject);
begin
    if not assigned(BuForm) then
    BuForm := TBuForm.create(self);
    BuForm.parent := panel1;
    BuForm.borderstyle := bsNone;
    BuForm.align := alclient;
    BuForm.show;
end;

procedure TForm1.ToolButton3Click(Sender: TObject);
begin
   if not assigned(SaForm) then
    SaForm := TSaForm.create(self);
    SaForm.parent := panel1;
    SaForm.borderstyle := bsNone;
    SaForm.align := alclient;
    SaForm.show;
end;

end.
