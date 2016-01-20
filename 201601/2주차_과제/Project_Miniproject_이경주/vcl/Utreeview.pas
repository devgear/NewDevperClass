unit Utreeview;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Data.FMTBcd,
  Data.DB, Data.SqlExpr;

type
  TFrame1 = class(TFrame)
    TreeView1: TTreeView;
    ListView1: TListView;
    dept_query: TSQLQuery;
    emp_query: TSQLQuery;
    procedure FrameResize(Sender: TObject);
    procedure TreeView1Click(Sender: TObject);
    procedure FrameExit(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses ClientModuleUnit1;

type
  deptrec = record
    code: string;
    section: string;
  end;

  deptrecptr = ^deptrec;

var
  prt: deptrecptr;


procedure TFrame1.FrameExit(Sender: TObject);
var
i,j : byte;
begin
for i := 0 to treeview1.Items.Count -1 do
  if treeview1.Items[i].Data <> nil then
  dispose(deptrecptr(treeview1.Items[i].Data));
 // action:=cafree;

end;

procedure TFrame1.FrameResize(Sender: TObject);
var
  wk_dept, wk_team: string;
begin
  dept_query.Close;
  dept_query.Open;
  with dept_query, TreeView1 do
  begin
    while not EOF do
    begin
      New(prt);
      if wk_dept <> FieldByName('dname').AsString then
        selected := items.Add(selected, FieldByName('dname').AsString);
      prt^.code := FieldByName('dteam').AsString;
     // prt^.section := FieldByName('dteam').AsString;
      items.AddChildObject(selected, FieldByName('dteam').AsString, prt);
      wk_dept := FieldByName('dname').AsString;
      next;
    end;
  end;
end;

procedure TFrame1.TreeView1Click(Sender: TObject);
var
  i: byte;
  listitem: tlistitem;
begin
  if not TreeView1.selected.HasChildren then
  begin
    emp_query.Close;
    emp_query.Params[0].AsString := deptrecptr(TreeView1.selected.Data^).code;
    emp_query.Open;
    ListView1.items.Clear;

    while not emp_query.EOF do
    begin
      listitem := ListView1.items.Add;
      listitem.Caption := emp_query.FieldByName('ename').AsString;
      listitem.SubItems.Add(emp_query.FieldByName('eteam').AsString);
      emp_query.next;
    end;

  end;
end;

end.
