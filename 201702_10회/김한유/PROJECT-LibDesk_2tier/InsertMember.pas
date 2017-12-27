unit InsertMember;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Data.DB;

type
  TInsertForm = class(TForm)
    InsertSource: TDataSource;
    LoginBack: TPanel;
    LoginCenter: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    editName: TDBEdit;
    editId: TDBEdit;
    editPw: TDBEdit;
    editPhone: TDBEdit;
    editMail: TDBEdit;
    Pnl_Insert: TPanel;
    Pnl_DupID: TPanel;
    procedure btnInsertClick(Sender: TObject);
    procedure DupIDClick(Sender: TObject);
  private
    { Private declarations }
    function DuplicatedUser: Boolean;
  public
    { Public declarations }
  end;

var
  InsertForm: TInsertForm;

implementation

{$R *.dfm}

uses DataAccessModule, Login, Main;

procedure TInsertForm.btnInsertClick(Sender: TObject);
begin
  if editName.Text = '' then
  begin
    ShowMessage('이름을 입력하세요.');
    editName.SetFocus;
    Exit;
  end;

  if editId.Text = '' then
  begin
    ShowMessage('아이디를 입력하세요.');
    editId.SetFocus;
    Exit;
  end;

  if editPw.Text = '' then
  begin
    ShowMessage('비밀번호를 입력하세요.');
    editPw.SetFocus;
    Exit;
  end;

  if editPhone.Text = '' then
  begin
    ShowMessage('전화번호를 입력하세요.');
    editPhone.SetFocus;
    Exit;
  end;

  DataAccess.qryUser.post;
  // DataAccess.qryUser.Refresh;

  if not DataAccess.qryUser.Eof then
  begin
    ShowMessage('회원가입을 축하드립니다. 로그인화면에서 다시 로그인 해주세요');
    // Label6.Caption := 'welcome';
    begin
      if not Assigned(LoginForm) then
        LoginForm := TLoginForm.Create(Self);
      LoginForm.Parent := MainForm.mainpanel;
      LoginForm.BorderStyle := bsNone;
      LoginForm.Align := alClient;
      LoginForm.Show;
    end;

  end;

end;

procedure TInsertForm.DupIDClick(Sender: TObject);
begin
  DuplicatedUser;
end;

function TInsertForm.DuplicatedUser: Boolean;
var
  ID: string;
  Seq: integer;
begin
//  Seq := DataAccess.qryUser.FieldByName('USER_SEQ').AsInteger;
//  ID := DataAccess.qryUser.FieldByName('USER_ID').AsString;
  ID := editId.Text;

  if (ID = '') then
    Exit;

  if DataAccess.DuplicatedID(ID) then
  begin
    ShowMessage('이미 등록된 ID 입니다.');
  end

  else
  begin
    ShowMessage('사용가능한 ID 입니다.');
    editPw.enabled := true;
    editMail.enabled := true;
    editPhone.enabled := true;
  end;
end;

end.
