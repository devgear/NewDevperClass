Unit Udisrent;

Interface

Uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls;

Type
  TDisForm = Class(TForm)
    StringGrid1: TStringGrid;
    Procedure FormCreate(Sender: TObject);
    Procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);

  Private
    { Private declarations }
  Public
    { Public declarations }
  End;

Var
  DisForm: TDisForm;

Implementation

Uses Udm;

{$R *.dfm}

Procedure TDisForm.FormCreate(Sender: TObject);
Var
  i: byte;
Begin
  With StringGrid1 Do
  Begin
    rowcount := dm.subquery.RecordCount + 2;
    cells[0, 0] := '회원이름';
    cells[1, 0] := '반납예정일';
    cells[2, 0] := '회수여부';
 {   For i := 1 To dm.subquery.RecordCount Do
    Begin
      cells[0, i] := '';
      cells[1, i] := '';
    End;
    }
    dm.subquery.First;
    For i := 1 To dm.subquery.RecordCount Do
    Begin
      cells[0, i] := dm.subquery.FieldByName('name').AsString;
      cells[1, i] := dm.subquery.FieldByName('back_date').AsString;
      cells[2, i] := dm.subquery.FieldByName('car_status').AsString;
      dm.subquery.Next;
    End;
  End;
End;

Procedure TDisForm.StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
Var
  pos: Integer;
  oldalign: word;
  s: String;
  val: String;
Begin
  s := StringGrid1.cells[ACol, ARow];
  With StringGrid1.Canvas Do
    fillrect(Rect);
    val := dm.subquery.FieldByName('back_date').AsString;
    if strtodate(val) > date then
    font.Color := clred;
    
    begin

    end;


End;

End.
