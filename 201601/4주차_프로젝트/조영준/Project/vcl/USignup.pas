unit USignup;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.OleServer, Excel2000, Vcl.OleAuto, comObj;

type
  TForm9 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    btnclose: TButton;
    Panel2: TPanel;
    DBGrid2: TDBGrid;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Button1: TButton;
    procedure btncloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;
  v : variant;
 const
  xlWBATWorksheet = -4167;

implementation

{$R *.dfm}

uses UDM;

procedure TForm9.btncloseClick(Sender: TObject);
begin
  close;
end;

procedure TForm9.Button1Click(Sender: TObject);
var
  i: integer;
begin
 v:= CreateOleObject('Excel.Application');
  v.visible := true;
//v.Workbooks.Add;
  v.workBooks.Add[xlWBATWorksheet];
  dm.SignDataSet.First;
  for i := 0 to dbgrid1.Columns.Count-1 do
  begin
  V.cells[1,i+1] := dbgrid1.Columns[i].title.Caption;
  v.cells[2,i+1] := dbgrid1.Columns[i].Field.Text;
  end;

  V.cells[3,1] := '학번';
  V.cells[3,2] := '이름';
  v.cells[1,8] := '수강인원수';
  v.cells[2,8] := inttostr(dm.signDataSet.RecordCount) +'명';
  for I := 0 to dm.signDataSet.RecordCount-1 do
  begin
  V.Cells[4+i,1] := DBgrid2.Fields[0].text;
  V.Cells[4+i,2] := dbgrid2.Fields[1].Text;
  dm.SignDataSet.Next;
  end;
  for I := 0 to 5 do
    begin
      v.cells[3,3+i] := datetostr(now()+i);
    end;
end;

procedure TForm9.DBGrid1DblClick(Sender: TObject);
begin
  dm.signDataSet.ParamByName('a').asinteger := dm.SUBJECTDataSet.FieldByName
    ('sbjt_num').asinteger;
  dm.signDataSet.ParamByName('b').asinteger := dm.SUBJECTDataSet.FieldByName
    ('sbjt_class').asinteger;
  dm.signDataSet.Open;
  dm.signDataSet.Refresh;
  Label2.caption := '수강인원 : ' + inttostr(dm.signDataSet.RecordCount) + '명';
end;

procedure TForm9.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form9 := nil;
  Action := cafree;
end;

end.
