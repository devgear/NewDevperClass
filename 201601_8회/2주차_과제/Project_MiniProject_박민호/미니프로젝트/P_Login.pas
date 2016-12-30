unit P_Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TLogin = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Login: TLogin;

implementation

{$R *.dfm}

uses P_Main;

procedure TLogin.Button1Click(Sender: TObject); // 로그인 버튼 클릭
begin
  if Edit1.Text = '' then
     Showmessage('아이디를 입력하세요')
      else
        if Edit2.Text = '' then
           Showmessage('비밀번호를 입력하세요.')
      else
        begin
          showmessage('로그인 완료');
          Login.Close;
        end;
end;

procedure TLogin.Button2Click(Sender: TObject); // 취소 버튼 클릭
begin
  Login.Close;
end;

end.
