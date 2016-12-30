unit main;

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
    Label12: TLabel;
    Label15: TLabel;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    DBLookupComboBox5: TDBLookupComboBox;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid3MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure showCount();
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

uses database;

procedure TForm1.Button10Click(Sender: TObject);
begin
  DM.part.Insert; // 부서 추가
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
  DM.part.Cancel; // 부서 취소
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
  if messagedlg('부서를 삭제하시겠습니까?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    try // 부서 삭제
      DM.part.delete;
      DM.part.ApplyUpdates(-1);
    except
      showmessage('삭제에 실패하였습니다.');
    end;
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
  DM.employee.Cancel; // 사원 입력 취소
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
  if messagedlg('추가 사원을 삭제하시겠습니까?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
  then
    try // 추가 인원 삭제
      DM.proEmp.delete;
      DM.proEmp.ApplyUpdates(-1);
      showCount();
    except
      showmessage('삭제에 실패하였습니다.');
    end;
end;

procedure TForm1.Button15Click(Sender: TObject);
begin
  DM.proEmp.Insert; // 프로젝트 추가 인원 추가
end;

procedure TForm1.Button16Click(Sender: TObject);
begin
  DM.proEmp.Cancel; // 프로젝트 추가 인원 취소
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  flag: Integer;
begin
  if DBEdit6.Text = '' then
    showmessage('사원번호를 입력해 주세요.');
  if DBEdit4.Text = '' then
    showmessage('이름을 입력해 주세요.');
  if DBEdit5.Text = '' then
    showmessage('전화번호를 입력해 주세요.');
  if DBLookupComboBox1.Text = '' then
    showmessage('부서를 선택해 주세요.');
  if DBLookupComboBox2.Text = '' then
    showmessage('팀을 선택해 주세요.')
  else
  begin
    DM.insertCheck.close;
    DM.insertCheck.SQL.Text :=
      'select count(*) from employee where emp_no=:eno;';
    DM.insertCheck.ParamByName('eno').AsString := DBEdit6.Text;
    DM.insertCheck.open;
    flag := DM.insertCheck.FieldByName('count').AsInteger;
    if flag > 0 then
    begin
      showmessage('중복된 사원번호입니다.');
      DM.employee.Cancel;
    end
    else
    begin
      DM.employee.post; // 사원 등록
      DM.employee.ApplyUpdates(-1);
    end;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if messagedlg('사원을 삭제하시겠습니까?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    try // 사원 삭제
      DM.employee.delete;
      DM.employee.ApplyUpdates(-1);
    except
      showmessage('삭제에 실패하였습니다.');
    end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  DM.employee.Insert; // 사원 추가
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  DM.project.Insert; // 프로젝트 추가
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  if messagedlg('프로젝트를 삭제하시겠습니까?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
  then
    try // 프로젝트 삭제
      DM.project.delete;
      DM.project.ApplyUpdates(-1);
      DBGrid4.datasource.DataSet.Active := false; //변경된 데이터를 재출력하기위해  DBGRID 재실행
      DBGrid4.datasource.DataSet.Active := true;
      DBGrid4.Columns[0].Title.caption := '프로젝트 번호';
      DBGrid4.Columns[0].width := 70;
      DBGrid4.Columns[1].Title.caption := '참여자 이름';
      DBGrid4.Columns[1].width := 150;
    except
      showmessage('삭제에 실패하였습니다.');
    end;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  DM.project.Cancel; // 프로젝트 취소
end;

procedure TForm1.Button7Click(Sender: TObject);
var
  flag: Integer;
begin
  if DBLookupComboBox5.Text = '' then
    showmessage('프로젝트 번호를 입력해 주세요.');
  if DBLookupComboBox4.Text = '' then
    showmessage('추가 사원을 선택해 주세요.')
  else
  begin   //IB 버그로 인해 간접적으로 중복데이터 검사 처리
    DM.insertCheck.close;
    DM.insertCheck.SQL.Text :=
      'select count(*) from pro_emp where project_no=:pno and employee_name=:ename;';
    DM.insertCheck.ParamByName('pno').AsString := DBLookupComboBox5.Text;
    DM.insertCheck.ParamByName('ename').AsString := DBLookupComboBox4.Text;
    DM.insertCheck.open;
    flag := DM.insertCheck.FieldByName('count').AsInteger;
    if flag > 0 then //프로젝트 추가 인원 중복 검사
    begin
      showmessage('중복된 사원입니다.');
      DM.proEmp.Cancel;
    end
    else
    begin
      // 프로젝트 추가 인원 등록
      DM.proEmp.post;
      DM.proEmp.ApplyUpdates(-1);
      showCount();
    end;
  end;
end;

procedure TForm1.Button8Click(Sender: TObject);
var
  flag: Integer;
begin
  if DBEdit3.Text = '' then
    showmessage('부서 번호를 입력해 주세요.');
  if DBEdit1.Text = '' then
    showmessage('부서명을 입력해 주세요.');
  if DBEdit2.Text = '' then
    showmessage('팀명을 입력해 주세요.')
  else
  begin
    DM.insertCheck.close;
    DM.insertCheck.SQL.Text := 'select count(*) from part where part_no=:pno;';
    DM.insertCheck.ParamByName('pno').AsString := DBEdit3.Text;
    DM.insertCheck.open;
    flag := DM.insertCheck.FieldByName('count').AsInteger;
    if flag > 0 then //부서 중복 확인
    begin
      showmessage('중복된 부서 번호입니다.');
      DM.part.Cancel;
    end
    else
    begin
      DM.part.post; // 부서 등록
      DM.part.ApplyUpdates(-1);
    end;
  end;
end;

procedure TForm1.Button9Click(Sender: TObject);
var
  flag: Integer;
begin
  if DBEdit7.Text = '' then
    showmessage('프로젝트 번호를 입력해 주세요.');
  if DBEdit8.Text = '' then
    showmessage('프로젝트 이름을 입력해 주세요.');
  if DBLookupComboBox3.Text = '' then
    showmessage('매니저를 선택해 주세요.');
  if DBComboBox1.Text = '' then
    showmessage('진행상태를 선택해 주세요.')
  else
  begin
    DM.insertCheck.close;
    DM.insertCheck.SQL.Text :=
      'select count(*) from project where pro_no=:pno;';
    DM.insertCheck.ParamByName('pno').AsString := DBEdit7.Text;
    DM.insertCheck.open;
    flag := DM.insertCheck.FieldByName('count').AsInteger;
    if flag > 0 then //프로젝트 중복 확인
    begin
      showmessage('중복된 프로젝트 번호입니다.');
      DM.project.Cancel;
    end
    else
    begin
      DM.project.post; // 프로젝트 등록
      DM.project.ApplyUpdates(-1);
    end;
  end;
end;

procedure TForm1.DBGrid3MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  showCount(); // 참여 인원수 출력
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i: Byte;
begin
  for i := 0 to TreeView1.Items.Count - 1 do // 트리뷰 노드 할당 정리
    if TreeView1.Items[i].Data <> nil then
      Dispose(partPrt(TreeView1.Items[i].Data));
  Action := caFree;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  wk_part: string;
begin
  DM.partView.close;
  DM.partView.open;
  with DM.partView, TreeView1 do
  begin
    while not EOF do
    begin
      new(prt); // 조직도 생성
      if wk_part <> FieldByName('part_name').AsString then
        selected := Items.Add(selected, FieldByName('part_name').AsString);
      prt^.TEAM := FieldByName('part_team').AsString;
      Items.AddChildObject(selected, FieldByName('part_team').AsString, prt);
      wk_part := FieldByName('part_name').AsString;
      next;
    end;
  end;

  showCount();

  begin // LISTVIEW, DBGRID 초기화
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

procedure TForm1.showCount;
begin
  DM.empcount.close;
  DM.empcount.Params[0].AsString := DBEdit7.Text;
  DM.empcount.open;
  Label15.caption := DM.empcount.FieldByName('count').AsString + ' 명';
  // DBGRID 클릭시 프로젝트 참여 인원 수 출력
end;

procedure TForm1.TreeView1Click(Sender: TObject);
var
  listitem: tlistitem;
begin
  if not TreeView1.selected.HasChildren then
  begin
    DM.empview.close;
    DM.empview.Params[0].AsString := partPrt(TreeView1.selected.Data)^.TEAM;
    // 팀을 받아와 해당 조직도 출력
    DM.empview.open;
    ListView1.Items.clear;

    while not DM.empview.EOF do
    begin
      listitem := ListView1.Items.Add; // 해당 팀의 사원 정보 출력
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
