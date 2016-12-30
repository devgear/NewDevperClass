unit LoginForm;

interface

uses
  LTClasses,
  Global,
  DAOMember,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrLogin = class(TForm)
    btLogin: TButton;
    Label1: TLabel;
    edID: TEdit;
    edPassword: TEdit;
    btGuest: TButton;
    btExit: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Label2: TLabel;
    procedure btExitClick(Sender: TObject);
    procedure btGuestClick(Sender: TObject);
    procedure btLoginClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure edPasswordKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    FDAOMember: TDAOMember;
  public
    { Public declarations }
  end;

var
  frLogin: TfrLogin;

function Login : Boolean;

implementation

{$R *.dfm}

uses
  GuestForm;

function Login : Boolean;
begin
  frLogin := TfrLogin.Create(nil);
  try
    frLogin.Position := poScreenCenter;
    frLogin.ShowModal;
    Result := frLogin.ModalResult = mrOk;
  finally
    frLogin.Free;
  end;
end;

procedure TfrLogin.btExitClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrLogin.btGuestClick(Sender: TObject);
begin
  if Guest then
  begin
    ModalResult := mrOk;
  end;
end;

procedure TfrLogin.btLoginClick(Sender: TObject);
var
  User: TUser;
begin
  if FDAOMember.Login(Trim(edID.Text), Trim(edPassword.Text)) then
  begin
    User := FDAOMember.Load(Trim(edID.Text));
    try
      TUser(gUser).Assign(User);
    finally
      User.Free;
    end;
    ModalResult := mrOk;
  end
  else
  begin
    Showmessage('아이디 또는 비밀번호가 틀렸습니다');
  end;
end;

procedure TfrLogin.edPasswordKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    btLoginClick(Sender);
  end;
end;

procedure TfrLogin.FormCreate(Sender: TObject);
begin
  FDAOMember := TDAOMember.Create;
  edID.Text := '';
  edPassword.Text := '';
end;

procedure TfrLogin.FormDestroy(Sender: TObject);
begin
  FDAOMember.Free;
end;

end.
