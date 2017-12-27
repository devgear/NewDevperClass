unit Pc_Counter_Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Menus,
  Pc_Counter_now, Pc_Counter_foodsell, Pc_Counter_History_Viwe,
  Pc_counter_UserView;

type
  TForm_main = class(TForm)
    Button4: TButton;
    MainMenu1: TMainMenu;
    file1: TMenuItem;
    close1: TMenuItem;
    Panel_Now_Show: TPanel;
    Button_SellFood: TButton;
    Button_View: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button_SellFoodClick(Sender: TObject);
    procedure Button_ViewClick(Sender: TObject);
    procedure close1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_main: TForm_main;

implementation

{$R *.dfm}

procedure TForm_main.Button4Click(Sender: TObject);
begin
  if not Assigned(Form_UserView) then
  Form_UserView := TForm_UserView.Create(Application);
  Form_UserView.Show;

end;

procedure TForm_main.Button_SellFoodClick(Sender: TObject);
begin

  if not Assigned(Form_Sell) then
  Form_sell := TForm_Sell.Create(Application);
  Form_Sell.Show;

end;

procedure TForm_main.Button_ViewClick(Sender: TObject);
begin

  if not Assigned(Form_History) then
  Form_History := TForm_History.Create(Application);
  Form_History.Show;

end;

procedure TForm_main.close1Click(Sender: TObject);
begin
  close;
end;

procedure TForm_main.FormCreate(Sender: TObject);
begin

  Form_now :=  TForm_now.Create(self);
  Form_now.BorderStyle := bsnone;
  Form_now.align := alclient;
  Form_now.parent := Panel_Now_Show;
  Form_now.show;

end;

end.
