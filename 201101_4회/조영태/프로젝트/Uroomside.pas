unit Uroomside;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, ExtCtrls;

type
  TroomsideFrame = class(TFrame)
    roomsidePanel: TPanel;
    roomsideEdit: TEdit;
    namesideEdit: TEdit;
    floowComboBox: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    roomsideButton: TButton;
    namesideButton: TButton;
    procedure roomsideButtonClick(Sender: TObject);
    procedure namesideButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses udm, usearch, Ugo;

{$R *.dfm}

procedure TroomsideFrame.namesideButtonClick(Sender: TObject);
//이름에디트 창에 이름를 쳐서 이름과 같은 이름이 있을때 서치폼을 띄워서 DB의 내용을 집어 넣는다
var
 search : tsearchform;
begin
 if namesideedit.Text = '' then
   begin
   namesideedit.SetFocus;
   raise exception.Create('이름을 입력하십시오.');
// if dm.crt.Locate('name',namesideedit.Text,[]) then
//    raise exception.Create('이름이 없습니다.');
   end;
if dm.crt.locate('name',namesideedit.text, []) then
begin
  search := Tsearchform.create(goroom);
  search.searchroomedit.Text := dm.crt.FieldByName('room').AsString;
  search.nameEdit.Text := dm.crt.FieldByName('name').AsString;
  search.telEdit.Text := dm.crt.FieldByName('tel').AsString;
  search.suibEdit.Text := dm.crt.FieldByName('suib').AsString;
//  search.suibDateTimePicker.Date :=dm.crt.FieldByName('suibdate').AsDateTime;
  search.boEdit.Text := dm.crt.FieldByName('bo').AsString;
  search.inDateTimePicker.Date := dm.crt.FieldByName('indate').AsDateTime;
  search.outDateTimePicker.Date :=dm.crt.FieldByName('outdate').AsDateTime;
  search.Show;
end;
end;

procedure TroomsideFrame.roomsideButtonClick(Sender: TObject);
//방에디트 창에 호수를 쳐서 방과 같은 이름이 있을때 서치폼을 띄워서 DB의 내용을 집어 넣는다
var
 search : tsearchform;
begin
 if roomsideedit.Text = '' then
   begin
   roomsideedit.SetFocus;
   raise exception.Create('호수를 입력하십시오 ');
   end;
if dm.crt.locate('room',roomsideedit.text, []) then
begin
  search := Tsearchform.create(goroom);
  search.searchroomedit.Text := dm.crt.FieldByName('room').AsString;
  search.nameEdit.Text := dm.crt.FieldByName('name').AsString;
  search.telEdit.Text := dm.crt.FieldByName('tel').AsString;
  search.suibEdit.Text := dm.crt.FieldByName('suib').AsString;
//  search.suibDateTimePicker.Date :=dm.crt.FieldByName('suibdate').AsDateTime;
  search.boEdit.Text := dm.crt.FieldByName('bo').AsString;
  search.inDateTimePicker.Date := dm.crt.FieldByName('indate').AsDateTime;
  search.outDateTimePicker.Date :=dm.crt.FieldByName('outdate').AsDateTime;
  search.Show;
end;


end;

end.
