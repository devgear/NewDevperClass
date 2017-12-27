unit Client_New_User;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Data.FMTBcd, Data.DB, Data.SqlExpr, Unit3;

type
  TForm_newuser = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Button2: TButton;
    Edit_ID: TEdit;
    Edit_PW: TEdit;
    Edit_Name: TEdit;
    Edit_Birth: TEdit;
    Edit_phone: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  Form_newuser: TForm_newuser;

implementation

{$R *.dfm}

uses Client_Module;

procedure TForm_newuser.Button2Click(Sender: TObject);
var
  serverMethods:TServerMethods2Client;
  User_Id,User_PW,User_Name,User_birth,User_Phone: string;
  result:integer;
begin
   //onclose := 0;
   serverMethods := TServerMethods2Client.Create(ClientModule1.SQLConnection1.DBXConnection);
   User_Id := Edit_ID.text;
   User_PW := Edit_PW.text;
   User_Name := Edit_Name.text;
   User_birth := Edit_Birth.text;
   User_Phone  := Edit_Phone.text;
   if User_id = '' then
   begin
      ShowMessage('아이디를 입력하세요');
      exit;
   end;
   if User_pw = '' then
   begin
      ShowMessage('비밀번호를 입력하세요');
      exit;
   end;
   if User_name = '' then
   begin
      ShowMessage('이름을 입력하세요');
      exit;
   end;
   if User_birth = '' then
   begin
      ShowMessage('생년월일를 입력하세요');
      exit;
   end;
   if User_phone = '' then
   begin
      ShowMessage('핸드폰 번호을 입력하세요');
      exit;
   end;
   result:= serverMethods.AppendProjectMember(User_Id, User_PW, User_Name, User_birth, User_Phone);
   if result = 0 then
   begin
      ShowMessage('회원 가입 실패!');
      exit;
   end
    else
   begin
      Client_Module.ClientModule1.ClientData_client.Refresh;
      Client_Module.ClientModule1.ClientData_User.Refresh;
      ShowMessage('회원 가입 성공!');
      Form_newuser.Close;
      exit;

   end;



end;

procedure TForm_newuser.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  Form_newuser := nil;
  ClientModule1.ClientData_User.Refresh;
end;

end.
