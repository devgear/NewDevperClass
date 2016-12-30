unit Join;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.DBCtrls;

type
  TJoinForm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Button1: TButton;
    Button2: TButton;
    Label6: TLabel;
    Button3: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit6: TEdit;
    memo1: TMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  JoinForm: TJoinForm;

implementation

{$R *.dfm}

uses BookDm, CheckID;

procedure TJoinForm.Button1Click(Sender: TObject);
begin
try
server.Insert_Join(Edit1.Text,Edit3.Text,Edit2.Text,Edit6.Text,Edit4.Text,memo1.Text);
DataModule1.MemberDataSet.Refresh;
ShowMessage('회원가입 완료!!');
Except
 On e: Exception do
   ShowMessage('erorr');

end;
end;

procedure TJoinForm.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TJoinForm.Button3Click(Sender: TObject);
begin
 if DataModule1.MemberDataSet.Locate('ID', Edit1.Text, []) then
    ShowMessage('이미 등록된 ID 입니다.')
  else
   ShowMessage('사용 가능한 ID입니다.');
end;

procedure TJoinForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
