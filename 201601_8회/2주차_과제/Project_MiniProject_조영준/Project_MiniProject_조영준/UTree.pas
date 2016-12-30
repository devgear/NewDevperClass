unit UTree;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Data.FMTBcd, Data.DB,
  Data.SqlExpr;

type
  TTreeForm = class(TForm)
    TreeView1: TTreeView;
    ListView1: TListView;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure TreeView1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

type
  Deptrec = Record
    dept: string;
    Team: string;
  End;

  DeptrecPtr = ^Deptrec;

var
  TreeForm: TTreeForm;
  Prt: DeptrecPtr;

implementation

{$R *.dfm}

uses UDM;

procedure TTreeForm.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i, j: byte;
begin
  for i := 0 to TreeView1.Items.Count - 1 do
    if TreeView1.Items[i].Data <> Nil then
      dispose(DeptrecPtr(TreeView1.Items[i].Data));
  Action := cafree;
end;

procedure TTreeForm.FormCreate(Sender: TObject);
VAR
  wk_dept, wk_team: string;
begin
  DM.DeptQuery.Close;
  DM.DeptQuery.Open;
  with DM.DeptQuery, TreeView1 do
  begin
    while not EoF do
    begin
      new(Prt);
      if wk_dept <> FieldByName('d_dept').asstring then
        selected := Items.Add(selected, FieldByName('D_dept').asstring);
      Prt^.Team := FieldByName('D_team').asstring;
      Items.AddChildObject(selected, FieldByName('D_team').asstring, Prt);
      wk_dept := FieldByName('D_dept').asstring;
      Next;
    end;
  end;
end;

procedure TTreeForm.TreeView1Click(Sender: TObject);
var
  i: byte;
  ListItem: TListItem;
begin
  if not TreeView1.selected.HasChildren then
  begin
    DM.EmployeeQuery.Close;
    DM.EmployeeQuery.Params[0].asstring :=
      DeptrecPtr(TreeView1.selected.Data)^.Team;
    DM.EmployeeQuery.Open;
    ListView1.Items.Clear;

    while not DM.EmployeeQuery.EoF do
    begin
      ListItem := ListView1.Items.Add;
      ListItem.Caption := DM.EmployeeQuery.FieldByName('E_name').asstring;
      ListItem.SubItems.Add(DM.EmployeeQuery.FieldByName('E_Team').asstring);
      DM.EmployeeQuery.Next;
    end;

  end;

end;

end.
