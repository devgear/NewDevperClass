unit Umain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, PlatformDefaultStyleActnCtrls, ActnMan, ToolWin, ActnCtrls,
  ActnMenus, ComCtrls, Buttons;

type
  TMainform = class(TForm)
    ActionMainMenuBar1: TActionMainMenuBar;
    CoolBar1: TCoolBar;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    ActionManager1: TActionManager;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    Action4: TAction;
    Action5: TAction;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    procedure Action1Execute(Sender: TObject);
    procedure Action4Execute(Sender: TObject);
    procedure Action5Execute(Sender: TObject);
    procedure Action3Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Mainform: TMainform;

implementation

uses Uorder, Uproduct, Usale, Uordering;

{$R *.dfm}

procedure TMainform.Action1Execute(Sender: TObject);
var
  i:byte;
begin
  for i := 0 to mdichildcount - 1 do
    if mdichildren[1] is torderform then
    begin
        orderform.show;
        if orderform.windowstate = wsminimized then
           orderform.WindowState :=  wsnormal;
        exit;
    end;
  orderform:=torderform.create(application);
end;

procedure TMainform.Action2Execute(Sender: TObject);
var
  i:byte;
begin
  for i := 0 to mdichildcount - 1 do
    if mdichildren[1] is torderingform then
    begin
        orderingform.show;
        if orderingform.windowstate = wsminimized then
           orderingform.WindowState :=  wsnormal;
        exit;
    end;
  orderingform:=torderingform.create(application);
end;

procedure TMainform.Action3Execute(Sender: TObject);
begin
  close;
end;

procedure TMainform.Action4Execute(Sender: TObject);
var
  i:byte;
begin
  for i := 0 to mdichildcount - 1 do
    if mdichildren[1] is tproductform then
    begin
        productform.show;
        if productform.windowstate = wsminimized then
           productform.WindowState :=  wsnormal;
        exit;
    end;
  productform:=tproductform.create(application);
end;

procedure TMainform.Action5Execute(Sender: TObject);
var
  i:byte;
begin
  for i := 0 to mdichildcount - 1 do
    if mdichildren[1] is tsaleform then
    begin
        saleform.show;
        if saleform.windowstate = wsminimized then
           saleform.WindowState :=  wsnormal;
        exit;
    end;
  saleform:=tsaleform.create(application);
end;

end.
