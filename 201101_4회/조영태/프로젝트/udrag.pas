unit udrag;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Contnrs, ShellAPI, ImgList;



type
   TMyDragObject = class(TDragControlObject)
  protected
    function GetDragImages: TDragImageList; override;
  end;

  TForm1 = class(TForm)
    Panel2: TPanel;
    DragImageList: TImageList;
    Button1: TButton;
    Shape2: TShape;
    Shape3: TShape;
    procedure Shape3DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure Shape3DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure Shape3StartDrag(Sender: TObject; var DragObject: TDragObject);
    procedure Panel2DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure Panel2DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure opcreate(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
  PartsList:TObjectList;
    hotx,hoty:integer;
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2;

{$R *.dfm}
function TMyDragObject.GetDragImages: TDragImageList;
{called at drag start time to get the image to be dragged}
begin
  Result := form1.DragImageList;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
 nshape:tshape;
  i: byte;
begin
  nshape := tshape.create(application);
  nshape.Parent := form1;
  nshape.Width := 50;
  nshape.Height := 50;
  nshape.Top := form1.Top;
  nshape.Left := form1.Left;

  nshape.OnStartDrag := Shape3StartDrag;
  nshape.OnDragDrop := Shape3DragDrop;
  nshape.OnDragOver := Shape3DragOver;
  nshape.DragMode := dmautomatic;   // 드래그할때 움직일수 있도록 자동으로 바꿔준다.
  nshape.OnMouseDown := opcreate ;  //마우스 오늘쪽 누를시 새로움 폼 띄우기

end;

procedure TForm1.opcreate(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  create: Tform2;
begin
  create := Tform2.create(form1);
  create.Show;
end;

procedure TForm1.Panel2DragDrop(Sender, Source: TObject; X, Y: Integer);
var  shape:TShape;
begin
  if source is TMyDragObject then
  with source as TMyDragObject do

    shape:=Tshape(control);
    shape.parent:=TWincontrol(sender);
    shape.left:=x-hotx;
    shape.top:=y-hoty;
end;

procedure TForm1.Panel2DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
var
  shape:Tshape; {points to shape being dropped, just for ease of reference}
begin
  if source is tMyDragObject then
  with source as TMyDragObject do
  begin
    shape:=Tshape(control);
  end;
end;

procedure TForm1.Shape3DragDrop(Sender, Source: TObject; X, Y: Integer);
var   shape:TShape;
begin
  if source is TMyDragobject then
  with source as TMyDragObject do
  begin
    shape:=Tshape(control);
    if (sender=shape)then {dropping on ourselves, move the shape}
    begin
      shape.left:=shape.left+x-hotx;
      shape.top:=shape.top+y-hoty;
      {snap if dropping on panel and option is checked}
    end;
  end;
end;

procedure TForm1.Shape3DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
var
  shape:TShape;
begin
  if source is TMyDragObject then
  with source as TMyDragObject do
  begin
    shape:=TShape(control); {shape is the object being dragged, sender is the object
                             being dragged over - check if they are the sme}
  end;
end;

procedure TForm1.Shape3StartDrag(Sender: TObject; var DragObject: TDragObject);
{set up the dragimage list to reflect the image being dragged}
var
  b:TBitmap;
  p:TPoint;

begin
  if sender is TShape then
  with sender as TShape do
  begin
    dragImageList.clear;
    dragimagelist.height:=height;
    dragimagelist.width:=width;
    b:=tBitmap.create;
    b.width:=width;
    b.height:=height;
    with b.canvas do
    begin
      brush.color:=tshape(sender).brush.color;
      brush.style:=bssolid;
      case shape of
        stRectangle: rectangle(0,0,width,height);
        stRoundrect: roundrect(0,0,width,height, width div 4, height div 4);
      end;
    end;
    if DragImageList.Add(b,nil)<0 then showmessage('Dragmage add failed');
    p:=screentoclient(mouse.cursorpos);
    hotx:=p.x;  {keep track of cursor location relative to top left corner }
    hoty:=p.y;  {of the shape being dragged}

    dragimagelist.setdragimage(0,hotx,hoty);   {set the drag image}
    DragObject := TMyDragObject.Create(Tshape(Sender)); {Create the drag object}
    {remove from PartsList list is there}
  end;
end;

end.
