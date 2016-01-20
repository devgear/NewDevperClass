unit UProject;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ToolWin, Vcl.ComCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TProjectForm = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    GroupBox3: TGroupBox;
    Edit1: TEdit;
    STATUS: TTrackBar;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button3: TButton;
    btn_addmember: TButton;
    Startdate: TDateTimePicker;
    EndDate: TDateTimePicker;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBGrid2: TDBGrid;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    Label9: TLabel;
    Edit2: TEdit;
    Button4: TButton;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    GroupBox6: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    STATUS_1: TTrackBar;
    Button5: TButton;
    Button6: TButton;
    GroupBox7: TGroupBox;
    Edit3: TEdit;
    Button7: TButton;
    startdate_1: TDateTimePicker;
    enddate_1: TDateTimePicker;
    GroupBox8: TGroupBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Click(Sender: TObject);
    procedure btn_addmemberClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Edit2Click(Sender: TObject);
    function search(add : string) :string; //검사 함수
    procedure Edit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Button7Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProjectForm: TProjectForm;
  P_member : array [0..20] of integer;
  P_member_NAME : array [0..20] of string;
  P_memberCount ,KEY ,key2: integer;
  add : string;

implementation

{$R *.dfm}

uses UDM, UTEAM;
procedure TProjectForm.btn_addmemberClick(Sender: TObject);
var
 i : integer;
begin

  TEAM := TTEAM.Create(Application);
  if TEAM.ShowModal = mrok then
  begin
    P_membercount := TEAM.ListBox1.Items.Count;
    for I := 0 to TEAM.ListBox1.Items.Count-1 do
    begin
      P_member[i+1]:= strToInt(TEAM.ListBox1.Items.Strings[i].Substring(0,pos('#',TEAM.ListBox1.Items.Strings[i])-1));
    end;
    P_member[0]:=StrToInt(copy(TEAM.Label2.Caption,0,pos('#',TEAM.Label2.Caption)-1));
    showmessage('수정되었습니다.');
  end;
  TEAM.Free;
end;

procedure TProjectForm.Button1Click(Sender: TObject);
begin
  close;
end;

procedure TProjectForm.Button3Click(Sender: TObject);
var
 i : integer;
 keyint : integer;
begin
  search(edit1.Text);
  if add='1' then
  exit
  else if (edit1.Text ='프로젝트 이름') then
  begin
    showmessage('이름을 입력하세요.');
    edit1.Text := '프로젝트 이름';
    i:=1;
  end
  else if P_membercount =0 then
  begin
    showmessage('맴버를 넣으세요');
    i:=1;
  end
  else if enddate.Date < startdate.Date then
  begin
    showmessage('종료날짜가 시작날짜보다 뒤에 있습니다.');
    enddate.Date := now;
    i:=1;
  end
  else if i =1 then
  exit;
  dm.PROJECTTable.Insert;
  dm.PROJECTTable.FieldByName('P_NAME').AsString := Edit1.Text;
  dm.PROJECTTable.FieldByName('P_STARTDATE').AsDateTime :=startdate.Date;
  dm.PROJECTTable.FieldByName('P_ENDDATE').AsDateTime :=EndDate.Date;
  dm.PROJECTTable.FieldByName('P_MANAGER_ID').AsInteger := P_member[0];
  dm.PROJECTTable.FieldByName('P_MEMBERCOUNT').AsInteger := P_membercount;
  dm.PROJECTTable.FieldByName('P_STATUS').AsInteger := STATUS.Position;
  dm.PROJECTTable.Post;
  dm.PROJECTTable.Last;
  keyint:=dm.PROJECTTable.FieldByName('P_ID').AsInteger;
  dm.PROJECTTable.Refresh;

  for I := 0 to P_membercount-1 do
  begin
    dm.PRO_MEMBERTable.Insert;
    dm.PRO_MEMBERTable.FieldByName('M_ID').AsInteger := P_member[i+1];
    dm.PRO_MEMBERTable.FieldByName('P_ID').AsInteger := keyint;
    dm.PRO_MEMBERTable.post;
    dm.PRO_MEMBERTable.Next;
  end;
  dm.PRO_MEMBERTable.Refresh;
  P_membercount := 0;
  edit1.Text := '프조젝트 이름';
  startdate.Date := now;
  enddate.Date := now;
  STATUS.Position :=10;
end;

procedure TProjectForm.Button4Click(Sender: TObject);
var
 i : integer;
begin
  dm.PROJECTTable.First;
  for I := 0 to dm.PROJECTTable.RecordCount do
  begin
    if edit2.Text = dm.PROJECTTable.FieldByName('P_NAME').AsString then
    begin
      showmessage('검색성공!');
      edit3.Text := dm.PROJECTTable.FieldByName('P_NAME').AsString;
      startdate_1.DateTime := dm.PROJECTTable.FieldByName('P_STARTDATE').AsDateTime;
      enddate_1.DateTime := dm.PROJECTTable.FieldByName('P_ENDDATE').AsDateTime;
      STATUS_1.Position := dm.PROJECTTable.FieldByName('P_STATUS').AsInteger;
      KEY :=  dm.PROJECTTable.FieldByName('P_ID').AsInteger;
      key2 := dm.PROJECTTable.FieldByName('P_MEMBERCOUNT').AsInteger;
      exit;
    end
    else
    dm.PROJECTTable.Next;
  end;
end;

procedure TProjectForm.Button5Click(Sender: TObject);
var
 i, j : integer;
 keyint : integer;
begin

  if (edit3.Text ='프로젝트 이름') then
  begin
    showmessage('이름을 입력하세요.');
    edit3.Text := '프로젝트 이름';
    i:=1;
  end
  else if P_membercount =0 then
  begin
    showmessage('맴버를 넣으세요');
    i:=1;
  end
  else if enddate_1.Date < startdate_1.Date then
  begin
    showmessage('종료날짜가 시작날짜보다 뒤에 있습니다.');
    enddate_1.Date := now;
    i:=1;
  end
  else if i =1 then
  exit;
  dm.PROJECTTable.Edit;
  dm.PROJECTTable.FieldByName('P_NAME').AsString := Edit3.Text;
  dm.PROJECTTable.FieldByName('P_STARTDATE').AsDateTime :=startdate_1.Date;
  dm.PROJECTTable.FieldByName('P_ENDDATE').AsDateTime :=EndDate_1.Date;
  dm.PROJECTTable.FieldByName('P_MANAGER_ID').AsInteger := P_member[0];
  dm.PROJECTTable.FieldByName('P_MEMBERCOUNT').AsInteger := P_membercount;
  dm.PROJECTTable.FieldByName('P_STATUS').AsInteger := STATUS_1.Position;
  keyint:=dm.PROJECTTable.FieldByName('P_ID').AsInteger;
  dm.PROJECTTable.Post;
  dm.PROJECTTable.Last;
  dm.PROJECTTable.Refresh;

  for I := 0 to P_membercount-1 do
  begin
    for j := 0 to dm.PRO_MEMBERTable.RecordCount do
    begin
      if keyint = dm.PRO_MEMBERTable.FieldByName('P_ID').AsInteger then
      begin
        dm.PRO_MEMBERTable.Edit;
        dm.PRO_MEMBERTable.FieldByName('M_ID').AsInteger := P_member[i+1];
        dm.PRO_MEMBERTable.FieldByName('P_ID').AsInteger := keyint;
        dm.PRO_MEMBERTable.post;
        dm.PRO_MEMBERTable.Next;
        break
      end
      else
        dm.PRO_MEMBERTable.Next;

    end;

  end;
  dm.PRO_MEMBERTable.Refresh;

end;

procedure TProjectForm.Button6Click(Sender: TObject);
var
 i,j : integer;
begin
  if messagedlg('정말 삭제하시겠습니까?', mtconfirmation,[mbyes, mbno],0) = mryes then
  try
  dm.PRO_MEMBERTable.First;
  dm.MEMBERTable.First;
    for I := 0 to dm.PRO_MEMBERTable.RecordCount-1 do  //9
    begin
      if KEY = (dm.PRO_MEMBERTable.FieldByName('P_ID').AsInteger) then //24 24 24 24
        dm.PRO_MEMBERTable.Delete
      else
        dm.PRO_MEMBERTable.Next;
    end;
  dm.PROJECTTable.Delete;
  showmessage('삭제되었습니다.');
  except
    on e:exception do
      showmessage(e.Message);
  end;
end;

procedure TProjectForm.Button7Click(Sender: TObject);
var
 i,j : integer;
begin
  TEAM := TTEAM.Create(Application);
  TEAM.Label2.Caption := (IntToStr(dm.PROJECTTable.FieldByName('P_MANAGER_ID').AsInteger)+'#'+
  (dm.PROJECTTable.FieldByName('P_MANAGER_NAME').AsString));


  dm.PRO_MEMBERTable.First;
  dm.MEMBERTable.First;
  for I := 0 to dm.PRO_MEMBERTable.RecordCount-1 do  //9
  begin
    if KEY = (dm.PRO_MEMBERTable.FieldByName('P_ID').AsInteger) then //24 24 24 24
    begin
      P_member[i] := dm.PRO_MEMBERTable.FieldByName('M_ID').AsInteger;
      dm.MEMBERTable.First;
      for j := 0 to dm.MEMBERTable.RecordCount do
      begin
        if P_member[i] = dm.MEMBERTable.FieldByName('M_ID').AsInteger then
        begin
          P_member_NAME[i]:=dm.MEMBERTable.FieldByName('M_NAME').AsString;
          TEAM.ListBox1.Items.Add(IntToStr(P_member[i])+'#'+P_member_NAME[i]);
          break
        end
        else
          dm.MEMBERTable.Next;
      end;
      dm.PRO_MEMBERTable.Next;
    end
    else
      dm.PRO_MEMBERTable.Next;
  end;

  if TEAM.ShowModal = mrok then
  begin
    P_membercount := TEAM.ListBox1.Items.Count;
    for I := 0 to TEAM.ListBox1.Items.Count-1 do
    begin
      P_member[i+1]:= strToInt(TEAM.ListBox1.Items.Strings[i].Substring(0,pos('#',TEAM.ListBox1.Items.Strings[i])-1));
    end;
    P_member[0]:=StrToInt(copy(TEAM.Label2.Caption,0,pos('#',TEAM.Label2.Caption)-1));
    showmessage('수정되었습니다.');
  end;
  TEAM.Free;
end;

procedure TProjectForm.Edit1Click(Sender: TObject);
begin
  if edit1.Text = '프로젝트 이름' then
    edit1.Text :='';
end;

procedure TProjectForm.Edit2Click(Sender: TObject);
begin
  if edit2.Text = '이름' then
    edit2.Text := '';
end;

procedure TProjectForm.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
    if not dm.PROJECTTable.FindKey([edit2.Text]) then
    begin
      showmessage('프로젝트가 존제하지 않습니다.');
      edit2.Text := '이름';
    end;

end;

procedure TProjectForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

function TProjectForm.search(add: string): string;
var
 i : integer;
begin
  add := '';
  dm.PROJECTTable.First;
  for I := 0 to dm.PROJECTTable.RecordCount-1 do
  begin
    if dm.PROJECTTable.FieldByName('P_NAME').AsString = add then
    begin
      showmessage('이름이 중복됩니다.');
      add := '1';
      exit
    end
    else
      dm.PROJECTTable.Next;
  end;
end;

end.
