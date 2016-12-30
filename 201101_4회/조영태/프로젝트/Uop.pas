unit Uop;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type


  TFrame3 = class(TFrame)
    opPanel: TPanel;
    rname: TLabel;
    floor: TLabel;
    opmoney: TLabel;
    roomEdit: TEdit;
    opmoneyEdit: TEdit;
    opinsertbt: TButton;
    opcrbt: TButton;
    opdeletebt: TButton;
    floorcbb: TComboBox;
    procedure opcrbtClick(Sender: TObject);
    procedure opdeletebtClick(Sender: TObject);
    procedure opcreate(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);


  private
    { Private declarations }
  public

    { Public declarations }
  end;

implementation

uses Udm, uroom, Ugo, ucreate;

var
  uroom: Tframe2;

{$R *.dfm}

procedure TFrame3.opdeletebtClick(Sender: TObject);
begin
  if dm.crt.locate('room', roomEdit.text, []) then
    dm.crt.delete;
  dm.crt.ApplyUpdates(-1);
  showmessage('삭제')
end;

procedure TFrame3.opcreate(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
  //수동으로 만든 프로시져 실행시 등록창을 띄운다.
var
  create: Tcrtform;
begin
  create := Tcrtform.create(goroom);
  create.Show;
end;

procedure TFrame3.opcrbtClick(Sender: TObject);
var
  newshape: tshape;
  i: byte;
begin
//같은 방 체크, 호수,금액 입력체크, DB에 호수와 금액을 넣는다.
//   if dm.crt.locate('room',roomedit.Text,[])then
//   raise exception.create('같은 방이 있습니다.');
//
//   if roomedit.Text = '' then
//   begin
//   roomedit.SetFocus;
//   raise exception.Create('호수를 입력하십시오 ');
//   end;
//   if opmoneyedit.Text ='' then
//   raise Exception.Create('금액을 넣어주세요');
//
//   dm.crt.Insert;
//   dm.crt.FieldByName('ROOM').AsString :=roomedit.Text;
//   dm.crt.FieldByName('SUIB').Asinteger :=strtoint(opmoneyedit.Text);
//   dm.crt.Post;
//   dm.crt.ApplyUpdates(-1);
//
//   showmessage('완료');

  newshape := tshape.create(goroom);

  newshape.Parent := roomcreate;
  newshape.Width := 90;
  newshape.Height := 100;
  newshape.Top := roomcreate.Top;
  newshape.Left := roomcreate.Left;
  newshape.OnMouseDown := opcreate ;

end;

end.
