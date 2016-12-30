unit uitems;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, Grids, StdCtrls;

type
  TitemsFrame = class(TFrame)
    itemStringGrid: TStringGrid;
    itemnameedit: TEdit;
    exedit: TEdit;
    taedit: TEdit;
    totaledit: TEdit;
    itemnamelabel: TLabel;
    exlabel: TLabel;
    talabel: TLabel;
    totallabel: TLabel;
    iteminBt: TButton;
    itemclbt: TButton;
    itemdelbt: TButton;
    procedure iteminBtClick(Sender: TObject);
    procedure itemclbtClick(Sender: TObject);
    procedure itemdelbtClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses udm;

{$R *.dfm}

procedure TitemsFrame.itemclbtClick(Sender: TObject);
begin
  itemnameedit.Text := '';
  exedit.Text := '';
  taedit.Text := '';
  totaledit.Text := '';
  showmessage('취소되었습니다.')
end;

procedure TitemsFrame.itemdelbtClick(Sender: TObject);
begin
if dm.items.locate('iname', itemnameedit.text, []) then
   dm.items.delete;
   dm.items.ApplyUpdates(-1);

   showmessage('삭제되었습니다.')
end;

procedure TitemsFrame.iteminBtClick(Sender: TObject);
begin
   dm.items.Insert;
   dm.items.FieldByName('iname').AsString := itemnameedit.Text;
   dm.items.FieldByName('exp').Asinteger :=strtoint(exedit.Text);
   dm.items.FieldByName('ta').Asinteger :=strtoint(taedit.Text);
   dm.items.FieldByName('total').Asinteger :=strtoint(totaledit.Text);
   dm.items.Post;
   dm.items.ApplyUpdates(-1);
   showmessage('완료되었습니다.');

end;

end.
