unit Client_fun;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,System.IniFiles,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Client_Module, Data.DB,
  Unit3, Vcl.ExtCtrls, Vcl.Imaging.jpeg;

type
  TForm_fun = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Label4: TLabel;
    Label5: TLabel;
    Label_time: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label_min: TLabel;
    Timer1: TTimer;
    Image1: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_fun: TForm_fun;
  login_day,login_time,end_day,end_time:string;
  result2 :integer;

implementation

{$R *.dfm}

uses Client_login;

procedure TForm_fun.Button1Click(Sender: TObject);
//var
  //serverMethods:TServerMethods2Client;
begin
   //serverMethods.logout(PCNo);
   Form_fun.close;
   
end;

procedure TForm_fun.FormClose(Sender: TObject; var Action: TCloseAction);
var
  serverMethods:TServerMethods2Client;
  result:integer;
begin

    serverMethods := TServerMethods2Client.Create(ClientModule1.SQLConnection1.DBXConnection);
    result:= serverMethods.after_login_no(pcno);

    end_day := Formatdatetime ('yyyy:mm:dd', now);
    end_time := Formatdatetime ('hh:mm:ss', now);
    serverMethods.Appendlogin_history(login_day,LOGIN_time,End_day,end_time,result,pcno);
    serverMethods.logout(PCNo);


    Action := caFree;
    Form_fun  := nil;

    Form_client_main := TForm_client_main.Create(Application);
    Form_client_main.Show;
end;

procedure TForm_fun.FormCreate(Sender: TObject);
var
  serverMethods:TServerMethods2Client;
  result: string;
 // result2 :integer;
begin
    serverMethods := TServerMethods2Client.Create(ClientModule1.SQLConnection1.DBXConnection);
    login_day := Formatdatetime ('yyyy:mm:dd', now);
    login_time := Formatdatetime ('hh:mm:ss', now);

    Label4.Caption := ' '''+inttostr(pcno)+'''번 자리';
    result:= serverMethods.after_login_name(pcno);
    result2:= serverMethods.after_login_time(pcno);
    label2.caption := result;
    Label_time.Caption := inttostr(result2 div 60);
    Label_min.Caption :=  inttostr(result2 mod 60);
    //PCNo



    Timer1.Enabled:= true;
end;





procedure TForm_fun.Timer1Timer(Sender: TObject);
var
  serverMethods:TServerMethods2Client;
  logouty:integer;
begin
  serverMethods := TServerMethods2Client.Create(ClientModule1.SQLConnection1.DBXConnection);
  serverMethods.minustime(pcno);
  result2:= serverMethods.after_login_time(pcno);
  Label_time.Caption := inttostr(result2 div 60);
  Label_min.Caption :=  inttostr(result2 mod 60);

  if result2 = 30 then
      ShowMessage('사용시간이 30분 남았습니다.');
  if result2 = 10 then
      ShowMessage('사용시간이 10분 남았습니다.');
  if result2 = 5 then
      ShowMessage('사용시간이 5분 남았습니다.');
  if result2 = 0 then
    begin
      ShowMessage('선불시간이 모두 소모 되었습니다.');
      Form_fun.close;
    end;
   logouty:=serverMethods.power_login_check(pcno);
   if logouty = 1 then
    begin
      ShowMessage('관리자에 의해 강제 종료 되었습니다.');
      Form_fun.close;
    end;

  //ShowMessage('hi');
end;

end.



