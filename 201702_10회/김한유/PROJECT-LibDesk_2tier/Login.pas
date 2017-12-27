unit Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, DataAccessModule,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Mask, Vcl.DBCtrls;

type
  TLoginForm = class(TForm)
    LoginBack: TPanel;
    LoginCenter: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    hilogin: TLabel;
    LoginSource: TDataSource;
    EditID: TEdit;
    EditPW: TEdit;
    Pnl_Login: TPanel;
    Panel1: TPanel;
    procedure btnLoginClick(Sender: TObject);
    procedure btnInsertClick(Sender: TObject);
  private
    { Private declarations }
    function CheckID: Boolean;
  public
    { Public declarations }

  end;

var
  LoginForm: TLoginForm;

implementation

{$R *.dfm}

uses InsertMember, Main, FindLib;

procedure TLoginForm.btnInsertClick(Sender: TObject);
begin
  if not Assigned(InsertForm) then
    InsertForm := TInsertForm.Create(Self);
  InsertForm.Parent := MainForm.mainpanel;
  InsertForm.BorderStyle := bsNone;
  InsertForm.Align := alClient;
  InsertForm.Show;

  DataAccess.qryUser.append;
  InsertForm.editName.SetFocus;
end;

procedure TLoginForm.btnLoginClick(Sender: TObject);

begin
  CheckID;
  MainForm.Label1.caption := inttostr(DataAccess.myseq);
end;

function TLoginForm.CheckID: Boolean;
var
  id, pw: string;
begin

  id := EditID.Text;
  pw := EditPW.Text;

  if DataAccess.CheckLOGIN(id, pw) then
  begin
    ShowMessage('로그인이 되었습니다.');

    if not Assigned(FindForm) then
      FindForm := TFindForm.Create(Self);
    FindForm.Parent := MainForm.mainpanel;
    FindForm.BorderStyle := bsNone;
    FindForm.Align := alClient;
    FindForm.Show;

    MainForm.PanelID.Visible := true;
    MainForm.myid.caption := id;
    MainForm.TopLoginPnl.Visible := false;
  end

  else
  begin
    ShowMessage('다시 입력바랍니다.');
    EditID.Clear;
    EditPW.Clear;
    EditID.SetFocus;
  end;
end;

end.
