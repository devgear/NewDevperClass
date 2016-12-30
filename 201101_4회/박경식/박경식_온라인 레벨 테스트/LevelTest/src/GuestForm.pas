unit GuestForm;

interface

uses
  Global,
  LTClasses,
  LTConsts,
  LTUtils,
  DAOMember,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrGuest = class(TForm)
    btGuestLogin: TButton;
    btCancel: TButton;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    edTeacherID: TLabeledEdit;
    edTeacherPassword: TLabeledEdit;
    GroupBox2: TGroupBox;
    edStudentName: TLabeledEdit;
    edStudentPhone: TLabeledEdit;
    edStudentGrade: TLabeledEdit;
    edStudentSchool: TLabeledEdit;
    btCheck: TButton;
    procedure btCancelClick(Sender: TObject);
    procedure btGuestLoginClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btCheckClick(Sender: TObject);
  private
    { Private declarations }
    FConfirmTeacher: Boolean;
    FDAOMember: TDAOMember;
  public
    { Public declarations }
  end;
var
  frGuest: TfrGuest;

function Guest: Boolean;

implementation

{$R *.dfm}

function Guest: Boolean;
begin
  frGuest := TfrGuest.Create(nil);
  try
    frGuest.Position := poScreenCenter;
    frGuest.ShowModal;
    Result := frGuest.ModalResult = mrOk;
  finally
    frGuest.Free;
  end;
end;

procedure TfrGuest.btCancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrGuest.btCheckClick(Sender: TObject);
var
  Confirm: Boolean;
begin
  Confirm := FDAOMember.Validate(Trim(edTeacherID.Text),
    Trim(edTeacherPassword.Text));

  if not(Confirm) then
  begin
    Showmessage('강사 아이디 또는 비밀번호가 틀렸습니다');
    exit;
  end;
  FConfirmTeacher := True;
  Showmessage('강사인증이 확인 되었습니다');
end;

procedure TfrGuest.btGuestLoginClick(Sender: TObject);
var
  Academy: TAcademy;
  Guest: TGuest;
begin
  if FConfirmTeacher = False then
    exit;

  Academy := FDAOMember.Authentication(Trim(edTeacherID.Text),
    Trim(edTeacherPassword.Text));
  try
    gUser.Academy.Assign(Academy);
    gUser.UserId := CreateGuestID;
    gUser.Level := AUTH_GUEST;
    gUser.TeacherId := edTeacherID.Text;
    gUser.Name := edStudentName.Text;
    gUser.Phone := edStudentPhone.Text;
    gUser.School := edStudentSchool.Text;
    gUser.Grade := edStudentGrade.Text;

    FDAOMember.InsertGuest(gUser);

    ModalResult := mrOk;
  finally
    Academy.Free;
  end;
end;

procedure TfrGuest.FormCreate(Sender: TObject);
begin
  FDAOMember := TDAOMember.Create;
  FConfirmTeacher := False;
end;

procedure TfrGuest.FormDestroy(Sender: TObject);
begin
  FDAOMember.Free;
end;

end.
