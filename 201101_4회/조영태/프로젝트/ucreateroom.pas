unit ucreateroom;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Contnrs, ShellAPI, ImgList, jpeg, pngimage;

type
  TMyDragObject = class(TDragControlObject)
  protected
    function GetDragImages: TDragImageList; override;
  end;

  Tcrroomform = class(TForm)
    Panel2: TPanel;
    roombutton: TButton;
    DragImageList: TImageList;
    rname: TLabel;
    roomEdit: TEdit;
    opmoney: TLabel;
    opmoneyEdit: TEdit;
    opdeletebt: TButton;
    roomchk: TButton;
    Label2: TLabel;
    roomsideEdit: TEdit;
    roomsideButton: TButton;
    Label3: TLabel;
    namesideEdit: TEdit;
    namesideButton: TButton;
    procedure Shape3DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure Shape3DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure Panel2DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure Panel2DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure Shape3StartDrag(Sender: TObject; var DragObject: TDragObject);
    procedure roombuttonClick(Sender: TObject);
    procedure opcreate(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure opdeletebtClick(Sender: TObject);
    procedure roomchkClick(Sender: TObject);
    procedure roomsideButtonClick(Sender: TObject);
    procedure namesideButtonClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    flist : tstringlist;
    procedure listfree;
  public
    PartsList: TObjectList;
    hotx, hoty: Integer;
    { Public declarations }
  end;

var
  crroomform: Tcrroomform;

implementation

uses ucreate, udm, Ugo, usearch;

{$R *.dfm}

function TMyDragObject.GetDragImages: TDragImageList;
{ called at drag start time to get the image to be dragged }
begin
  Result := crroomform.DragImageList;
end;

procedure Tcrroomform.FormActivate(Sender: TObject);
var
  panel: tpanel;
  i: byte;
begin
  listfree;
  dm.roomchk.First;
  while not dm.roomchk.eof do
  begin
    panel := tpanel.Create(crroomform);
    panel.parent := Panel2;

    panel.Top := dm.roomchk.FieldByName('shapetop').AsInteger;
    panel.Left := dm.roomchk.FieldByName('shapeleft').AsInteger;
    panel.Width := 50;
    panel.Height := 50;

    panel.name := dm.roomchk.fieldbyname('roomcheck').asstring;
    panel.OnMouseDown := opcreate;
    flist.addobject(dm.roomchk.fieldbyname('roomcheck').asstring, panel);
    dm.roomchk.Next;

  end;
end;


procedure Tcrroomform.FormCreate(Sender: TObject);
begin
  flist := tstringlist.create;
  flist.Clear;
end;

procedure Tcrroomform.FormDestroy(Sender: TObject);
begin
  freeandnil( flist );
end;

procedure Tcrroomform.listfree;
var
  i : integer;
  o : tobject;
begin
  for I := flist.count -1 downto 0 do
    begin
      o := flist.objects[ i ];
      freeandnil( o );
      flist.objects[ i ] := nil;
    end;
    flist.clear;
end;

procedure Tcrroomform.namesideButtonClick(Sender: TObject);
// 이름에디트 창에 이름를 쳐서 이름과 같은 이름이 있을때 서치폼을 띄워서 DB의 내용을 집어 넣는다
var
  search: tsearchform;
begin
  if namesideEdit.Text = '' then
  begin
    namesideEdit.SetFocus;
    raise exception.Create('이름을 입력하십시오.');
    // if dm.crt.Locate('name',namesideedit.Text,[]) then
    // raise exception.Create('이름이 없습니다.');
  end;
  if dm.crt.locate('name', namesideEdit.Text, []) then
  begin
    search := tsearchform.Create(goroom);
    search.searchroomedit.Text := dm.crt.FieldByName('room').AsString;
    search.nameEdit.Text := dm.crt.FieldByName('name').AsString;
    search.telEdit.Text := dm.crt.FieldByName('tel').AsString;
    search.suibEdit.Text := dm.crt.FieldByName('suib').AsString;
    search.boEdit.Text := dm.crt.FieldByName('bo').AsString;
    search.inDateTimePicker.Date := dm.crt.FieldByName('indate').AsDateTime;
    search.outDateTimePicker.Date := dm.crt.FieldByName('outdate').AsDateTime;
    search.Show;
  end;
end;

procedure Tcrroomform.opcreate(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  Create: Tcrtform;
begin
  Create := Tcrtform.Create(crroomform);
  Create.Show;
end;

procedure Tcrroomform.opdeletebtClick(Sender: TObject);
begin
  if dm.crt.locate('room', roomEdit.Text, []) then
     dm.crt.delete;
     dm.crt.ApplyUpdates(-1);
   showmessage('삭제')
end;

procedure Tcrroomform.Panel2DragDrop(Sender, Source: TObject; X, Y: Integer);
var
  panel: tpanel;
begin
  if Source is TMyDragObject then
    with Source as TMyDragObject do

  panel := tpanel(control);
  panel.parent := TWincontrol(Sender);
  panel.Left := X - hotx;
  panel.Top := Y - hoty;

end;

procedure Tcrroomform.Panel2DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
var
  panel: tpanel; { points to shape being dropped, just for ease of reference }
begin
  if Source is TMyDragObject then
    with Source as TMyDragObject do
    begin
      panel := tpanel(control);
    end;
end;

procedure Tcrroomform.roombuttonClick(Sender: TObject);
var
  newpanel: tpanel;
begin
  // 같은 방 체크, 호수,금액 입력체크, DB에 방번호와 금액을 넣는다.
  //판넬에 크기 및 나타낼 위치 지정, 판넬 이벤트 수동실행
   if roomedit.Text = '' then
   begin
    roomedit.SetFocus;
   raise exception.Create('호수를 입력하십시오 ');
   end;

   if dm.crt.locate('room',roomedit.Text,[])then
      raise exception.create('같은 방이 있습니다.');

   if opmoneyedit.Text ='' then
      raise Exception.Create('금액을 넣어주세요');

    newpanel := tpanel.Create(crroomform);
    newpanel.parent := crroomform;
    newpanel.Width := 50;
    newpanel.Height := 50;
    newpanel.Top := 30;
    newpanel.Left := 40;
    newpanel.OnMouseDown := opcreate;
    newpanel.OnStartDrag := Shape3StartDrag;
    newpanel.OnDragDrop := Shape3DragDrop;
    newpanel.OnDragOver := Shape3DragOver;
    newpanel.DragMode := dmautomatic;
    newpanel.Name := 'a' + roomEdit.Text;

    flist.AddObject('a'+roomEdit.Text,newpanel);

   dm.crt.Insert;
   dm.crt.FieldByName('ROOM').AsString :=roomedit.Text;
   dm.crt.FieldByName('SUIB').Asinteger :=strtoint(opmoneyedit.Text);
   dm.crt.Post;
   dm.crt.ApplyUpdates(-1);

   showmessage('완료');

end;

procedure Tcrroomform.roomchkClick(Sender: TObject);
var
  i: byte;
  panel: tpanel;
begin
//방번호를 체크하여 방위치 테이블에 방번호가 같으면 위치 저장하지 않고 다른 방을 찾아서 테이블에 저장한다.
  for i := 0 to Panel2.ControlCount - 1 do
  if Panel2.Controls[i] is tpanel then
  begin
      if not dm.roomchk.locate('roomcheck', (Panel2.Controls[i] as tpanel).Name , []) then
      begin
        dm.roomchk.Insert;
        dm.roomchk.FieldByName('roomcheck').AsString :=(Panel2.Controls[i] as tpanel).Name;
        dm.roomchk.FieldByName('shapetop').AsInteger :=(Panel2.Controls[i] as tpanel).Top;
        dm.roomchk.FieldByName('shapeleft').AsInteger :=(Panel2.Controls[i] as tpanel).Left;
        dm.roomchk.Post;
        dm.roomchk.ApplyUpdates(-1);
     end;
   end;
   showmessage('완료하였습니다.');
end;

procedure Tcrroomform.roomsideButtonClick(Sender: TObject);
// 방에디트 창에 호수를 쳐서 방과 같은 이름이 있을때 서치폼을 띄워서 DB의 내용을 집어 넣는다
var
  search: tsearchform;
begin
  if roomsideEdit.Text = '' then
  begin
    roomsideEdit.SetFocus;
    raise exception.Create('호수를 입력하십시오 ');
  end;
  if dm.crt.locate('room', roomsideEdit.Text, []) then
  begin
    search := tsearchform.Create(goroom);
    search.searchroomedit.Text := dm.crt.FieldByName('room').AsString;
    search.nameEdit.Text := dm.crt.FieldByName('name').AsString;
    search.telEdit.Text := dm.crt.FieldByName('tel').AsString;
    search.suibEdit.Text := dm.crt.FieldByName('suib').AsString;
//    search.suibDateTimePicker.Date := dm.crt.FieldByName('suibdate').AsDateTime;
    search.boEdit.Text := dm.crt.FieldByName('bo').AsString;
    search.inDateTimePicker.Date := dm.crt.FieldByName('indate').AsDateTime;
    search.outDateTimePicker.Date := dm.crt.FieldByName('outdate').AsDateTime;
    search.Show;
  end;

end;

procedure Tcrroomform.Shape3DragDrop(Sender, Source: TObject; X, Y: Integer);
var
  panel: tpanel;
begin
  if Source is TMyDragObject then
    with Source as TMyDragObject do
    begin
      panel := tpanel(control);
      if (Sender = panel) then { dropping on ourselves, move the shape }
      begin
        panel.Left := panel.Left + X - hotx;
        panel.Top := panel.Top + Y - hoty;
        { snap if dropping on panel and option is checked }
      end;
    end;
end;

procedure Tcrroomform.Shape3DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
var
  panel: tpanel;
begin
  if Source is TMyDragObject then
    with Source as TMyDragObject do
    begin
      panel := tpanel(control);
      { shape is the object being dragged, sender is the object
        being dragged over - check if they are the sme }
    end;
end;

procedure Tcrroomform.Shape3StartDrag(Sender: TObject;
  var DragObject: TDragObject);
var
  b: TBitmap;
  p: TPoint;

begin
  if Sender is tpanel then
    with Sender as tpanel do
    begin
      DragImageList.clear;
      DragImageList.Height := Height;
      DragImageList.Width := Width;
      b := TBitmap.Create;
      b.Width := Width;
      b.Height := Height;
      with b.canvas do
      begin
        brush.color := tpanel(Sender).brush.color;
        brush.style := bssolid;
//        case panel of
//          stRectangle:
//            rectangle(0, 0, Width, Height);
//          stRoundrect:
//            roundrect(0, 0, Width, Height, Width div 4, Height div 4);
//        end;
      end;
      if DragImageList.Add(b, nil) < 0 then
        showmessage('Dragmage add failed');
      p := screentoclient(mouse.cursorpos);
      hotx := p.X; { keep track of cursor location relative to top left corner }
      hoty := p.Y; { of the shape being dragged }

      DragImageList.setdragimage(0, hotx, hoty); { set the drag image }
      DragObject := TMyDragObject.Create(tpanel(Sender));
      { Create the drag object }
      { remove from PartsList list is there }
    end;
end;

end.
