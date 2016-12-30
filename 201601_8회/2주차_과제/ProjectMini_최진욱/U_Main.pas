unit U_Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.UITypes,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Data.FMTBcd, Data.SqlExpr,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, IBX.IBEvents;

type
  Part = Record // 부서 구조체 생성
    Name: String;
    Team: String;
  end;

  PartPrt = ^Part;

  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    PageControl2: TPageControl;
    TabSheet4: TTabSheet;
    Grid_Emp: TDBGrid;
    TabSheet5: TTabSheet;
    LB_Name: TLabel;
    LB_Phone: TLabel;
    LB_E_Team: TLabel;
    ComboBox_Team: TDBLookupComboBox;
    Edit_Name: TDBEdit;
    Btn_E_Insert: TButton;
    Btn_E_Post: TButton;
    Btn_E_Delete: TButton;
    Btn_E_Cancel: TButton;
    TabSheet2: TTabSheet;
    PageControl4: TPageControl;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    LB_part: TLabel;
    LB_Team: TLabel;
    Edit_Part: TDBEdit;
    Edit_Team: TDBEdit;
    Btn_Pa_Insert: TButton;
    Btn_Pa_Post: TButton;
    Btn_Pa_Delete: TButton;
    Btn_Pa_Calcel: TButton;
    TabSheet3: TTabSheet;
    PageControl3: TPageControl;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    LB_P_Name1: TLabel;
    LB_Term: TLabel;
    LB_Manager: TLabel;
    LB_State: TLabel;
    ComboBox_manager: TDBLookupComboBox;
    Edit_Project: TDBEdit;
    Btn_Pr_Insert: TButton;
    Btn_Pr_Post: TButton;
    Btn_Pr_Delete: TButton;
    Btn_Pr_Cancel: TButton;
    ComboBox_State: TDBComboBox;
    TabSheet10: TTabSheet;
    LB_P_Name2: TLabel;
    ComboBox_P_Name: TDBLookupComboBox;
    ComboBox_EMP_Name: TDBLookupComboBox;
    Btn_PL_Insert: TButton;
    Btn_PL_Post: TButton;
    Btn_PL_Delete: TButton;
    Btn_PL_Cancel: TButton;
    TreeView_Part: TTreeView;
    ListView_Part: TListView;
    Date_start: TDateTimePicker;
    Date_finish: TDateTimePicker;
    LB_E_Name2: TLabel;
    Grid_Project: TDBGrid;
    Grid_P_List: TDBGrid;
    Edit_Phone: TDBEdit;
    Grid_PART: TDBGrid;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    procedure Btn_E_InsertClick(Sender: TObject);
    procedure Btn_E_PostClick(Sender: TObject);
    procedure Btn_E_DeleteClick(Sender: TObject);
    procedure Btn_E_CancelClick(Sender: TObject);
    procedure Btn_Pa_InsertClick(Sender: TObject);
    procedure Btn_Pa_PostClick(Sender: TObject);
    procedure Btn_Pa_DeleteClick(Sender: TObject);
    procedure Btn_Pa_CalcelClick(Sender: TObject);
    procedure Btn_Pr_InsertClick(Sender: TObject);
    procedure Btn_Pr_PostClick(Sender: TObject);
    procedure Btn_Pr_DeleteClick(Sender: TObject);
    procedure Btn_Pr_CancelClick(Sender: TObject);
    procedure Btn_PL_InsertClick(Sender: TObject);
    procedure Btn_PL_PostClick(Sender: TObject);
    procedure Btn_PL_DeleteClick(Sender: TObject);
    procedure Btn_PL_CancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TreeView_PartClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Prt: PartPrt;

implementation

{$R *.dfm}

uses U_DM;

var
  td: TTransactionDesc;

procedure TForm1.Btn_E_InsertClick(Sender: TObject);
begin
  DM.Employee.Insert;
end;

procedure TForm1.Btn_E_PostClick(Sender: TObject);
begin
  if Edit_Name.Text = '' then
    showmessage('사원이름을 반드시 입력하세요')
  else
  begin
    DM.Employee.Post;
    DM.Employee.ApplyUpdates(-1);
  end;
end;

procedure TForm1.Btn_Pa_CalcelClick(Sender: TObject);
begin
  DM.Part.Cancel;
end;

procedure TForm1.Btn_Pa_DeleteClick(Sender: TObject);
begin
  if messagedlg('삭제하시겠습니까?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    try
      DM.Part.Delete;
      DM.Part.ApplyUpdates(-1);
    except
      showmessage('삭제오류');
    end;
end;

procedure TForm1.Btn_Pa_InsertClick(Sender: TObject);
begin
  DM.Part.Insert;
end;

procedure TForm1.Btn_Pa_PostClick(Sender: TObject);
begin
  DM.Part.Post;
  DM.Part.ApplyUpdates(-1);
end;

procedure TForm1.Btn_PL_CancelClick(Sender: TObject);
begin
  DM.P_List.Cancel;
end;

procedure TForm1.Btn_PL_DeleteClick(Sender: TObject);
begin
  if messagedlg('삭제하시겠습니까?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    try
      DM.P_List.Delete;
      DM.P_List.ApplyUpdates(-1);
      DM.delete_Query.Close; // 프로젝트 참여인원 감소
      DM.delete_Query.SQL.Text :=
        'UPDATE PROJECT SET P_NUMBER=P_NUMBER-1 WHERE P_NAME=:NAME;';
      DM.delete_Query.ParamByName('NAME').AsString := ComboBox_P_Name.Text;
      DM.delete_Query.ExecSQL;
      Grid_Project.DataSource.DataSet.Active := False;
      Grid_Project.DataSource.DataSet.Active := True;
    except
      showmessage('삭제오류');
    end;
end;

procedure TForm1.Btn_PL_InsertClick(Sender: TObject);
begin
  DM.P_List.Insert;
end;

procedure TForm1.Btn_PL_PostClick(Sender: TObject);
begin
  try
    DM.Input_Query.Close;                           //중복검사
    DM.Input_Query.SQL.Text :=
      'SELECT COUNT(*) FROM P_LIST WHERE P_NAME=:NAME AND E_NAME=:TEAM;';
    DM.Input_Query.ParamByName('NAME').AsString := ComboBox_P_Name.Text;
    DM.Input_Query.ParamByName('TEAM').AsString := ComboBox_EMP_Name.Text;
    DM.Input_Query.open;
    if DM.Input_Query.FieldByName('COUNT').AsInteger = 0 then
    begin
      DM.Input_Query.Close;
      DM.Input_Query.SQL.Text := // 프로젝트 참여인원 증가
        'UPDATE PROJECT SET P_NUMBER=P_NUMBER+1 WHERE P_NAME=:NAME;';
      DM.Input_Query.ParamByName('NAME').AsString := ComboBox_P_Name.Text;
      DM.Input_Query.ExecSQL;
      DM.P_List.Post;
      DM.P_List.ApplyUpdates(-1);
      Grid_Project.DataSource.DataSet.Active := False;
      Grid_Project.DataSource.DataSet.Active := True;
    end
    else
      showmessage('중복된 값이 있습니다.')
  except
    raise Exception.Create('삽입 에러');
    DM.SQLConnection1.Rollback(td);
  end;

end;

procedure TForm1.Btn_Pr_CancelClick(Sender: TObject);
begin
  DM.Project.Cancel;
end;

procedure TForm1.Btn_Pr_DeleteClick(Sender: TObject);
begin
  if messagedlg('삭제하시겠습니까?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    try
      DM.Project.Delete;
      DM.Project.ApplyUpdates(-1);
      Grid_Project.DataSource.DataSet.Active := False;
      Grid_Project.DataSource.DataSet.Active := True;
      Grid_P_List.DataSource.DataSet.Active := False;
      Grid_P_List.DataSource.DataSet.Active := True;
    except
      showmessage('삭제오류');
    end;
end;

procedure TForm1.Btn_Pr_InsertClick(Sender: TObject);
begin
  DM.Project.Insert;
  Date_start.Date := now;
  Date_finish.Date := now;
end;

procedure TForm1.Btn_Pr_PostClick(Sender: TObject);
begin
  DM.Project.Post;
  DM.Project.ApplyUpdates(-1);
  DM.Input_Query.Close;
  DM.Input_Query.SQL.Text := // 관리자 테이블에 입력
    'insert into P_LIST(P_NAME, E_NAME) SELECT P_NAME, P_MANAGER FROM PROJECT WHERE P_NAME=:NAME;';
  DM.Input_Query.ParamByName('NAME').AsString := Edit_Project.Text;
  DM.Input_Query.ExecSQL;
  DM.Input_Query.Close;
  DM.Input_Query.SQL.Text := // 인원에 관리자 인원으로 입력
    'UPDATE PROJECT SET P_NUMBER=1 WHERE P_NAME=:NAME;';
  DM.Input_Query.ParamByName('NAME').AsString := Edit_Project.Text;
  DM.Input_Query.ExecSQL;
  Grid_Project.DataSource.DataSet.Active := False;
  Grid_Project.DataSource.DataSet.Active := True;
  Grid_P_List.DataSource.DataSet.Active := False;
  Grid_P_List.DataSource.DataSet.Active := True;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i: Byte;
begin
  for i := 0 to TreeView_Part.Items.Count - 1 do // 트리뷰 노드 할당 정리
    if TreeView_Part.Items[i].Data <> nil then
      Dispose(PartPrt(TreeView_Part.Items[i].Data));
  Action := caFree;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  wk_Part: String;
begin
  DM.PART_Query.Close;
  DM.PART_Query.open;
  with DM.PART_Query, TreeView_Part do
  begin
    while not EOF do
    begin
      New(Prt);
      if wk_Part <> FieldByName('P_NAME').AsString then // 부서별로 트리뷰에 출력
        Selected := Items.Add(Selected, FieldByName('P_NAME').AsString);
      Prt^.Team := FieldByName('P_TEAM').AsString;
      Items.AddChildObject(Selected, FieldByName('P_TEAM').AsString, Prt);
      wk_Part := FieldByName('P_NAME').AsString;
      Next;
    end;
  end;
  Grid_Emp.Columns[0].Width := 100;
  Grid_Emp.Columns[1].Width := 150;
  Grid_Emp.Columns[2].Width := 100;

  Grid_PART.Columns[0].Title.Caption := '부서명';
  Grid_PART.Columns[1].Title.Caption := '소속팀명';
  Grid_PART.Columns[0].Width := 100;
  Grid_PART.Columns[1].Width := 100;

  Grid_Project.Columns[0].Width := 100;
  Grid_Project.Columns[1].Width := 100;
  Grid_Project.Columns[2].Width := 100;
  Grid_Project.Columns[3].Width := 100;
  Grid_Project.Columns[4].Width := 80;
  Grid_Project.Columns[5].Width := 80;

  Grid_P_List.Columns[0].Title.Caption := '프로젝트명';
  Grid_P_List.Columns[1].Title.Caption := '사원명';
  Grid_P_List.Columns[0].Width := 120;
  Grid_P_List.Columns[1].Width := 100;
end;

procedure TForm1.TreeView_PartClick(Sender: TObject);
var
  Listitem: TListItem;
begin
  if not TreeView_Part.Selected.HasChildren then
  begin
    DM.EMP_Query.Close;
    DM.EMP_Query.Params[0].AsString :=
      PartPrt(TreeView_Part.Selected.Data)^.Team;
    DM.EMP_Query.open;
    ListView_Part.Items.Clear;

    while not DM.EMP_Query.EOF do
    begin // 선택한 팀명별 이름,전화번호 출력
      Listitem := ListView_Part.Items.Add;
      Listitem.Caption := DM.EMP_Query.FieldByName('E_NAME').AsString;
      Listitem.SubItems.Add(DM.EMP_Query.FieldByName('E_PHONE').AsString);
      DM.EMP_Query.Next;
    end;
  end;
end;

procedure TForm1.Btn_E_DeleteClick(Sender: TObject);
begin
  if messagedlg('삭제하시겠습니까?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    try
      DM.Employee.Delete;
      DM.Employee.ApplyUpdates(-1);
    except
      showmessage('삭제오류');
    end;
end;

procedure TForm1.Btn_E_CancelClick(Sender: TObject);
begin
  DM.Employee.Cancel;
end;

end.
