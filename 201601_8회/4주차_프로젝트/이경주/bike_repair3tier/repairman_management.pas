unit repairman_management;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.ComCtrls, Vcl.Mask;

type
  TRepairMan = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    rman_add: TButton;
    rman_delete: TButton;
    rman_cancle: TButton;
    rman_post: TButton;
    DBEdit5: TDBEdit;
    Button1: TButton;
    procedure rman_addClick(Sender: TObject);
    procedure rman_deleteClick(Sender: TObject);
    procedure rman_cancleClick(Sender: TObject);
    procedure rman_postClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RepairMan: TRepairMan;

implementation

{$R *.dfm}

uses bike_dm;

procedure TRepairMan.Button1Click(Sender: TObject);
begin
  DBEdit5.Text := datetostr(now);
end;

procedure TRepairMan.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  RepairMan.Free;
end;

procedure TRepairMan.FormCreate(Sender: TObject);
begin
  DBGrid1.Columns[0].Title.Caption := '고유번호';
  DBGrid1.Columns[1].Title.Caption := '이름';
  DBGrid1.Columns[2].Title.Caption := '폰 번호';
  DBGrid1.Columns[3].Title.Caption := '경력 연수';
  DBGrid1.Columns[4].Title.Caption := '등록 날짜';

  DBGrid1.Columns[0].width := 60;
  DBGrid1.Columns[1].width := 60;
  DBGrid1.Columns[2].width := 80;
  DBGrid1.Columns[3].width := 60;
  DBGrid1.Columns[4].width := 80;

end;

procedure TRepairMan.rman_addClick(Sender: TObject);
var
  flag: integer;
begin
  if DBEdit1.Text = '' then
    showmessage('수리공 번호를 입력하세요');
  if DBEdit2.Text = '' then
    showmessage('수리공 이름을 입력하세요');
  if DBEdit3.Text = '' then
    showmessage('폰 번호를 입력하세요');
  if DBEdit5.Text = '' then
    showmessage('등록 날짜를 입력하세요')
  else
  begin

    try
      demo.insertcheck(dbedit1.Text);//수리공 번호 중복 못찾음
      dm1.RepairMan.Insert;

    except
    showmessage('중복된 번호 입니다');
    dm1.repairman.Cancel;
      raise
    end;

    dm1.repairman.post;
    dm1.repairman.ApplyUpdates(-1);
    showmessage('추가 되었습니다.');
  end;
end;

procedure TRepairMan.rman_cancleClick(Sender: TObject);
begin
  dm1.RepairMan.Cancel;
  dm1.RepairMan.CancelUpdates;
end;

procedure TRepairMan.rman_deleteClick(Sender: TObject);
begin
  if messagedlg('삭제 할까요?', mtconfirmation, [mbyes, mbno], 0) = mryes then
  try
    dm1.RepairMan.Delete;
  dm1.RepairMan.ApplyUpdates(-1);
  except
  raise
  end;
  showmessage('삭제되었습니다');
end;

procedure TRepairMan.rman_postClick(Sender: TObject);
begin
  dm1.RepairMan.Post;
  dm1.RepairMan.ApplyUpdates(-1);
end;

end.
