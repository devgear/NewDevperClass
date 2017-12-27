unit Client_login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, System.IniFiles,
  Client_Module, Client_New_user, Unit3, Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
    TForm_client_main = class(TForm)
    Edit_id: TEdit;
    Edit_pw: TEdit;
    Button_login: TButton;
    button_newuser: TButton;
    Button3: TButton;
    Edit_Client_No: TEdit;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure button_newuserClick(Sender: TObject);
    procedure Button_loginClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PCNo: Integer;
  Form_client_main: TForm_client_main;
  User_Id_To,User_PW_to: string;

implementation

{$R *.dfm}

uses Client_fun;


procedure TForm_client_main.Button3Click(Sender: TObject);
var

  Path: string;
  IniFile: TIniFile;
  //PCNo: Integer;
begin
  Path := ExtractFilePath(Application.ExeName) + 'Info.ini';

  IniFile := TIniFile.Create(Path);
  try
    PCNo := StrToIntDef(Edit_Client_No.Text, 0);

    IniFile.WriteInteger('PC', 'No', PCNo);
  finally
    IniFile.Free;
  end;

end;

procedure TForm_client_main.Button_loginClick(Sender: TObject);
var
  serverMethods:TServerMethods2Client;
  result, result2, result3:integer;

begin
   serverMethods := TServerMethods2Client.Create(ClientModule1.SQLConnection1.DBXConnection);
   User_Id_to := Edit_ID.text;
   User_PW_to := Edit_PW.text;

   
   result:= serverMethods.loginYN(User_Id_to, User_PW_to);
   if result = 0 then
   begin
      ShowMessage('로그인  실패!');
      exit;
   end
    else
   begin
       result2 := ServerMethods.loginYN_con(User_Id_to, User_PW_to);
       if result2 = 1 then
       begin
          ShowMessage('이미 접속한 사용자 입니다.!');
          exit;
       end
      else
      begin
         result3:= serverMethods.loginYN_time(User_Id_to, User_PW_to);
         if result3 = 0 then
         begin
          ShowMessage('선불 시간이 없습니다!');
          exit;
       end
      else
       begin
        if not Assigned(Form_fun) then
        begin
        serverMethods.do_login(User_Id_to, pcno);
        Application.CreateForm(TForm_fun, Form_fun);
//        Form_fun := TForm_fun.Create(Application);
        Form_fun.Show;

        Visible := false;

       end;
      end;

   end;
   end;

end;

procedure TForm_client_main.button_newuserClick(Sender: TObject);
begin
  if not Assigned(Form_newuser) then
    Form_newuser := TForm_newuser.Create(Application);
    Form_newuser.Show;
end;

procedure TForm_client_main.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action := caFree;
    Form_fun  := nil;

    Application.Terminate;
end;

procedure TForm_client_main.FormCreate(Sender: TObject);
var
  Path: string;
  IniFile: TIniFile;
  //PCNo: Integer;
begin
  Path := ExtractFilePath(Application.ExeName) + 'Info.ini';

  IniFile := TIniFile.Create(Path);
  try
    PCNo := IniFile.ReadInteger('PC', 'No', 0);

    Edit_Client_No.Text := IntToStr(PCNo)+'번 자리';
  finally
    IniFile.Free;
  end;



end;

end.
