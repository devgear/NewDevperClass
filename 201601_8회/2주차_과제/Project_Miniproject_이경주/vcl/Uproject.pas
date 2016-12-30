unit Uproject;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.DBCtrls, Data.Bind.Components,
  Data.Bind.DBScope, Vcl.Mask, Data.FMTBcd, Data.SqlExpr,System.UITypes;

type
  Tproject = class(TForm)
    PageControl: TPageControl;
    TabSheet2: TTabSheet;
    btn_pro_delete: TButton;
    TabSheet3: TTabSheet;
    DBGrid1: TDBGrid;
    lb_pname: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    lb_pmanager: TLabel;
    Label11: TLabel;
    edit_pname: TDBEdit;
    DBEdit5: TDBEdit;
    edit_ppersons: TDBEdit;
    combo_pmanager: TDBLookupComboBox;
    btn_pro_cancel: TButton;
    btn_pro_post: TButton;
    Label12: TLabel;
    edit_pstartd: TDBEdit;
    edit_endd: TDBEdit;
    btn_pro_insert: TButton;
    procedure FormResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);

    procedure Button4Click(Sender: TObject);
    procedure btn_pro_deleteClick(Sender: TObject);
    procedure btn_pro_cancelClick(Sender: TObject);
    procedure btn_pro_postClick(Sender: TObject);
    procedure edit_pnameChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  project: Tproject;
  a: byte;

implementation

{$R *.dfm}

uses ClientModuleUnit1;

// 삭제
procedure Tproject.btn_pro_deleteClick(Sender: TObject);
begin
  if messagedlg('삭제', mtconfirmation, [mbyes, mbno], 0) = mryes then
  begin
    try
      dm.project.Delete;
      dm.project.ApplyUpdates(-1);
    except
      showmessage('오류');

    end;
  end;

end;

// 프로젝트 추가
procedure Tproject.Button4Click(Sender: TObject);
var
  flag: Integer;
begin
  if edit_pname.Text = '' then
    showmessage('프로젝트 이름을 입력하세요');
  if combo_pmanager.Text = '' then
    showmessage('매니저를 선택하세요');
  if edit_pstartd.Text = '' then
    showmessage('시작 날짜를 선택하세요');
  if edit_endd.Text = '' then
    showmessage('종료 날짜를 선택하세요.');
  if dbedit5.Text = '' then
    showmessage('진행상태를 선택해 주세요.')
  else
  begin
    dm.search.Close;
    dm.search.SQL.Text :=
      'select count(*) from project where pro_no=:pname;';
    //dm.search.ParamByName('pname').AsString := edit_pname;
    dm.search.open;
    flag := dm.search.FieldByName('count').AsInteger;
    if flag > 0 then // 중복 확인
    begin
      showmessage('중복된 프로젝트 번호입니다.');
      dm.project.Cancel;
    end
    else
    begin
      dm.project.post; // 프로젝트 등록
      dm.project.ApplyUpdates(-1);
    end;
  end;
end;

procedure Tproject.edit_pnameChange(Sender: TObject);
begin
  // SQLQuery1.Close;
  // SQLQuery1.FieldByName('pname').AsString;
  // SQLQuery1.Open;
end;

// 변경된 내용 취소
procedure Tproject.btn_pro_cancelClick(Sender: TObject);
begin
  dm.project.Cancel;
end;

// 수정 입력된 내용을 적용
procedure Tproject.btn_pro_postClick(Sender: TObject);
begin
  dm.project.post;
end;

// 폼이 열릴때 dbgrid의 제목 출력
procedure Tproject.FormCreate(Sender: TObject);
begin
  try
    // dm.count.Close;
    // dm.count.SQL :=
    // 'select count(*) from emp where pname =:''프로젝트1''';
    // dm.count.Open;
  except

  end;
  begin
    DBGrid1.columns[0].title.Caption := '프로젝트 명';
    DBGrid1.columns[1].title.Caption := '시작 날짜';
    DBGrid1.columns[2].title.Caption := '끝 날짜';
    DBGrid1.columns[3].title.Caption := '관리자';
    DBGrid1.columns[4].title.Caption := '참여 인원';
    DBGrid1.columns[5].title.Caption := '진행도';

    DBGrid1.columns[0].width := 78;
    DBGrid1.columns[1].width := 60;
    DBGrid1.columns[2].width := 78;
    DBGrid1.columns[3].width := 60;
    DBGrid1.columns[4].width := 60;
    DBGrid1.columns[5].width := 50;
  end;
end;

procedure Tproject.FormResize(Sender: TObject);
begin
  // label5.caption := inttostr(datetimepicker2.Date) - inttostr(datetimepicker1.Date);

end;

procedure Tproject.FormShow(Sender: TObject);
begin
dm.count.Close;
dm.count.SQL.Text:=
'select count(*) from e_project where epname_eppersons';
dm.count.Params[0].AsString:=edit_ppersons.Text;
dm.count.Open;
edit_ppersons.Text:=dm.count.FieldByName('count').AsString;
end;

end.
