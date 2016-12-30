unit UDept;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.ToolWin, Vcl.ComCtrls;

type
  TDeptForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    GroupBox3: TGroupBox;
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    DBGrid1: TDBGrid;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Button2: TButton;
    Edit4: TEdit;
    Label4: TLabel;
    btn_del: TButton;
    btn_ins: TButton;
    Edit5: TEdit;
    Edit6: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    Label3: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit2Click(Sender: TObject);
    procedure Edit3Click(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure Edit4Click(Sender: TObject);
    procedure btn_delClick(Sender: TObject);
    procedure editclear;
    procedure newclear;                                                 // edit 클리어 하기. 프로시저 선언
    procedure btn_insClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DeptForm: TDeptForm;

implementation

{$R *.dfm}

uses UDM;

procedure TDeptForm.btn_insClick(Sender: TObject);                              // 수정
var
  i : integer;
begin
  dm.DEPTTable.First;
  for I := 0 to dm.DEPTTable.RecordCount-1 do
  begin
    if (edit5.Text = dm.DEPTTable.FieldByName('D_DEPT').AsString) and (edit6.Text = dm.DEPTTable.FieldByName('D_TEAM').AsString) then
    begin
      showmessage('같은 부서와 팀이 있습니다.');
      exit;
    end
    else
      dm.DEPTTable.Next;
  end;
  if messagedlg('정말 수정하시겠습니까?', mtconfirmation,[mbyes, mbno],0) = mryes then
  try

    dm.DEPTTable.Edit;
    dm.DEPTTable.FieldByName('D_DEPT').AsString := edit5.Text;
    dm.DEPTTable.FieldByName('D_TEAM').AsString := edit6.Text;
    dm.DEPTTable.Post;
    dm.DEPTTable.Refresh;
    showmessage('수정되었습니다.');
  except
    on e:exception do
      showmessage(e.Message);
  end;
  editclear;
end;

procedure TDeptForm.Button1Click(Sender: TObject);                              // 검색
var
  i : integer;
begin
  dm.DEPTTable.First;
  for I := 0 to dm.DEPTTable.RecordCount-1 do
  begin
    if (edit1.Text = dm.DEPTTable.FieldByName('D_DEPT').AsString) and (edit4.Text = dm.DEPTTable.FieldByName('D_TEAM').AsString) then
    begin
      edit5.Text := dm.DEPTTable.FieldByName('D_DEPT').AsString;
      edit6.Text := dm.DEPTTable.FieldByName('D_TEAM').AsString;
      btn_del.Enabled := true;
      btn_ins.Enabled := true;
      exit;
    end
    else
    dm.DEPTTable.Next;
  end;
  showmessage('결과가 검색되지 않습니다.');
  editclear;
end;

procedure TDeptForm.Button2Click(Sender: TObject);                              // 신규 등록
var
  i : integer;
begin
  if (edit2.Text ='부서명 입력') or (edit3.Text ='팀명 입력') then
  begin
    showmessage('내용을 입력하세요.');
    newclear;
    exit;
  end;
  dm.DEPTTable.First;
  for I := 0 to dm.DEPTTable.RecordCount-1 do                                   // 중복처리
  begin
    if (edit2.Text = dm.DEPTTable.FieldByName('D_DEPT').AsString) and (edit3.Text = dm.DEPTTable.FieldByName('D_TEAM').AsString) then
    begin
      showmessage('같은 부서와 팀이 있습니다.');
      newclear;
      exit;
    end
    else
    dm.DEPTTable.Next;
  end;
  dm.DEPTTable.Insert;
  dm.DEPTTable.FieldByName('D_DEPT').AsString := edit2.Text;
  dm.DEPTTable.FieldByName('D_TEAM').AsString := edit3.Text;
  dm.DEPTTable.Post;
  newclear;
  dm.DEPTTable.Refresh;
end;

procedure TDeptForm.Button3Click(Sender: TObject);
begin
  close;
end;

procedure TDeptForm.Edit1Click(Sender: TObject);
begin
  if edit1.Text = '부서를 입력하세요' then
    edit1.Text := '';

end;

procedure TDeptForm.Edit2Click(Sender: TObject);
begin
  if edit2.Text = '부서명 입력' then
    edit2.Text := '';
end;

procedure TDeptForm.Edit3Click(Sender: TObject);
begin
  if edit3.Text = '팀명 입력' then
    edit3.Text := '';
end;

procedure TDeptForm.Edit4Click(Sender: TObject);
begin
  if edit4.Text = '팀명을 입력하세요' then
    edit4.Text :='';
end;

procedure TDeptForm.editclear;
begin
  edit1.Text := '부서를 입력하세요';
  edit4.Text := '팀명을 입력하세요';
  edit5.Text := '';
  edit6.Text := '';
  btn_del.Enabled := false;
  btn_del.Enabled := false;
end;

procedure TDeptForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DeptForm := nil; //선언된 변수 초기화
  Action := caFree;
end;

procedure TDeptForm.newclear;
begin
  edit2.Text := '부서명 입력';
  edit3.Text := '팀명 입력';
end;

procedure TDeptForm.btn_delClick(Sender: TObject);                              // 삭제 처리
begin
  if messagedlg('정말 삭제하시겠습니까?', mtconfirmation,[mbyes, mbno],0) = mryes then
  try
    dm.DEPTTable.Delete;
    showmessage('삭제되었습니다.');
  except
    on e:exception do
      showmessage(e.Message);
  end;
  editclear;


end;

end.
