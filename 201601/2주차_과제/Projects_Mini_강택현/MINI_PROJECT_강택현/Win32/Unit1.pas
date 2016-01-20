unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.StdCtrls, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope,
  Vcl.Mask, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  part = record
    part_n: string;
    TEAM: string;
  end;

  partPrt = ^part;

  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet9: TTabSheet;
    PageControl4: TPageControl;
    TabSheet10: TTabSheet;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Button3: TButton;
    Button9: TButton;
    Label13: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Button1: TButton;
    Button2: TButton;
    Button13: TButton;
    PageControl3: TPageControl;
    TabSheet6: TTabSheet;
    Label9: TLabel;
    Label10: TLabel;
    Label22: TLabel;
    Button8: TButton;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit2: TDBEdit;
    Button10: TButton;
    DBGrid1: TDBGrid;
    Button12: TButton;
    Button11: TButton;
    DBGrid2: TDBGrid;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label5: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label3: TLabel;
    TabSheet5: TTabSheet;
    DBLookupComboBox3: TDBLookupComboBox;
    DBGrid3: TDBGrid;
    Button4: TButton;
    TabSheet7: TTabSheet;
    TreeView1: TTreeView;
    Button5: TButton;
    Button6: TButton;
    Label6: TLabel;
    DBEdit10: TDBEdit;
    Label7: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    Button7: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label8: TLabel;
    ListView1: TListView;
    Label11: TLabel;
    DBComboBox1: TDBComboBox;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBGrid4: TDBGrid;
    procedure Button8Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure TreeView1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  prt: partPrt;

implementation

{$R *.dfm}

uses Unit3;

procedure TForm1.Button10Click(Sender: TObject);
begin
  DM.part.Insert;
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
  DM.part.Cancel;
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
  DM.part.delete;
  DM.part.ApplyUpdates(-1);
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
  DM.employee.Cancel;
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
  DM.proEmp.delete;
  DM.proEmp.ApplyUpdates(-1);
end;

procedure TForm1.Button15Click(Sender: TObject);
begin
  DM.proEmp.Insert;
end;

procedure TForm1.Button16Click(Sender: TObject);
begin
  DM.proEmp.Cancel;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  DM.employee.post;
  DM.employee.ApplyUpdates(-1);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  DM.employee.delete;
  DM.employee.ApplyUpdates(-1);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  DM.employee.Insert;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  DM.project.Insert;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  DM.project.delete;
  DM.project.ApplyUpdates(-1);
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  DM.project.Cancel;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  DM.proEmp.post;
  DM.proEmp.ApplyUpdates(-1);
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  DM.part.post;
  DM.part.ApplyUpdates(-1);
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  DM.project.post;
  DM.project.ApplyUpdates(-1);
  DM.insertPro.Close;
  DM.insertPro.SQL.Text :=
    'update project set pro_start=:pstart,pro_end=:pend where pro_no=:pno;';
  DM.insertPro.ParamByName('pno').AsString := DBEdit7.Text;
  DM.insertPro.ParamByName('pstart').AsString :=
    datetostr(DateTimePicker1.date);
  DM.insertPro.ParamByName('pend').AsString := datetostr(DateTimePicker2.date);
  DM.insertPro.ExecSQL;
  DBGrid3.datasource.DataSet.Active := false;
  DBGrid3.datasource.DataSet.Active := true;
  DBGrid3.Columns[0].Title.caption := '번호';
  DBGrid3.Columns[0].width := 70;
  DBGrid3.Columns[1].Title.caption := '프로젝트 이름';
  DBGrid3.Columns[1].width := 180;
  DBGrid3.Columns[2].Title.caption := '시작 날짜';
  DBGrid3.Columns[2].width := 100;
  DBGrid3.Columns[3].Title.caption := '종료 예정일';
  DBGrid3.Columns[3].width := 100;
  DBGrid3.Columns[4].Title.caption := '매니저';
  DBGrid3.Columns[4].width := 70;
  DBGrid3.Columns[5].Title.caption := '진행상태';
  DBGrid3.Columns[5].width := 70;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  wk_part: string;
begin
  DM.partView.Close;
  DM.partView.Open;
  with DM.partView, TreeView1 do
  begin
    while not EOF do
    begin
      new(prt);
      if wk_part <> FieldByName('part_name').AsString then
        selected := items.Add(selected, FieldByName('part_name').AsString);
      prt^.TEAM := FieldByName('part_team').AsString;
      items.AddChildObject(selected, FieldByName('part_team').AsString, prt);
      wk_part := FieldByName('part_name').AsString;
      next;
    end;
  end;

  begin
    ListView1.Columns[0].width := 70;
    ListView1.Columns[1].width := 70;
    ListView1.Columns[2].width := 100;
    ListView1.Columns[3].width := 100;
    ListView1.Columns[4].width := 100;

    DBGrid1.Columns[0].Title.caption := '번호';
    DBGrid1.Columns[0].width := 70;
    DBGrid1.Columns[1].Title.caption := '부서명';
    DBGrid1.Columns[1].width := 150;
    DBGrid1.Columns[2].Title.caption := '팀명';
    DBGrid1.Columns[2].width := 150;

    DBGrid2.Columns[0].Title.caption := '사원번호';
    DBGrid2.Columns[0].width := 70;
    DBGrid2.Columns[1].Title.caption := '이름';
    DBGrid2.Columns[1].width := 70;
    DBGrid2.Columns[2].Title.caption := '전화번호';
    DBGrid2.Columns[2].width := 100;
    DBGrid2.Columns[3].Title.caption := '부서';
    DBGrid2.Columns[3].width := 150;
    DBGrid2.Columns[4].Title.caption := '팀';
    DBGrid2.Columns[4].width := 150;

    DBGrid3.Columns[0].Title.caption := '번호';
    DBGrid3.Columns[0].width := 70;
    DBGrid3.Columns[1].Title.caption := '프로젝트 이름';
    DBGrid3.Columns[1].width := 180;
    DBGrid3.Columns[2].Title.caption := '시작 날짜';
    DBGrid3.Columns[2].width := 100;
    DBGrid3.Columns[3].Title.caption := '종료 예정일';
    DBGrid3.Columns[3].width := 100;
    DBGrid3.Columns[4].Title.caption := '매니저';
    DBGrid3.Columns[4].width := 70;
    DBGrid3.Columns[5].Title.caption := '진행상태';
    DBGrid3.Columns[5].width := 70;

    DBGrid4.Columns[0].Title.caption := '프로젝트 번호';
    DBGrid4.Columns[0].width := 70;
    DBGrid4.Columns[1].Title.caption := '참여자 이름';
    DBGrid4.Columns[1].width := 150;
  end;
end;

procedure TForm1.TreeView1Click(Sender: TObject);
var
  listitem: tlistitem;
begin
  if not TreeView1.selected.HasChildren then
  begin
    DM.empview.Close;
    DM.empview.Params[0].AsString := partPrt(TreeView1.selected.Data)^.TEAM;
    DM.empview.Open;
    ListView1.items.clear;

    while not DM.empview.EOF do
    begin
      listitem := ListView1.items.Add;
      listitem.caption := DM.empview.FieldByName('emp_no').AsString;
      listitem.SubItems.Add(DM.empview.FieldByName('emp_name').AsString);
      listitem.SubItems.Add(DM.empview.FieldByName('emp_phone').AsString);
      listitem.SubItems.Add(DM.empview.FieldByName('emp_part').AsString);
      listitem.SubItems.Add(DM.empview.FieldByName('emp_team').AsString);
      DM.empview.next;
    end;

  end;
end;

end.
