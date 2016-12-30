unit Utitle;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TFrame1 = class(TFrame)
    tatlePanel: TPanel;
    Roombt: TBitBtn;
    moneybt: TBitBtn;
    pubbt: TBitBtn;
    scbt: TBitBtn;
    optionbt: TBitBtn;
    procedure RoombtClick(Sender: TObject);
    procedure moneybtClick(Sender: TObject);
    procedure scbtClick(Sender: TObject);
    procedure optionbtClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses uroom, usales, Ugo, Ucalendar, Uop;


{$R *.dfm}

procedure TFrame1.moneybtClick(Sender: TObject);
var
  moneycreate : Tframe4;
  begin
  moneycreate := Tframe4.create(goroom);
  moneycreate.Parent := goroom;
  moneycreate.Top := goroom.def.top;
  moneycreate.Left := goroom.def.Left;
end;

procedure TFrame1.optionbtClick(Sender: TObject);
var
  oproomcreate : Tframe2;
  opnew : tframe3;
begin
  oproomcreate := Tframe2.create(goroom);
  oproomcreate.Parent := goroom;
  oproomcreate.Top := goroom.def.top;
  oproomcreate.Left := goroom.def.Left;

  opnew :=tframe3.Create(goroom);
  opnew.Parent :=goroom;
  opnew.Top :=goroom.sidedef.Top;
  opnew.Left :=goroom.sidedef.Left;

end;

procedure TFrame1.RoombtClick(Sender: TObject);
var
  roomcreate : Tframe2;
begin
  roomcreate := Tframe2.create(goroom);
  roomcreate.Parent := goroom;
  roomcreate.Top := goroom.def.top;
  roomcreate.Left := goroom.def.Left;
end;

procedure TFrame1.scbtClick(Sender: TObject);
var
  calcreate : tframe5;
begin

  calcreate := Tframe5.create(goroom);
  calcreate.Parent := goroom;
  calcreate.Top := goroom.def.top;
  calcreate.Left := goroom.def.Left;
end;

end.
