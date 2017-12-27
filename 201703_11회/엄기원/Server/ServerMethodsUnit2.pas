unit ServerMethodsUnit2;

interface

uses System.SysUtils, System.Classes, System.Json,
    DataSnap.DSProviderDataModuleAdapter,
    Datasnap.DSServer, Datasnap.DSAuth, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Datasnap.Provider, FMX.Dialogs, Vcl.ExtCtrls;

type
  TServerMethods2 = class(TDSServerModule)
    FDConnection_main: TFDConnection;
    FDTable_client: TFDTable;
    DataSetProvider_client: TDataSetProvider;
    FDTable_User: TFDTable;
    DataSetProvider_User: TDataSetProvider;
    FDTable_clientCLIENT_NO: TSmallintField;
    FDTable_clientUSER_NO: TIntegerField;
    FDTable_clientCLIENT_CON: TStringField;
    FDQuery_max_user_no: TFDQuery;
    FDQuery: TFDQuery;
    FDTable_UserUSER_NO: TIntegerField;
    FDTable_UserUSER_ID: TStringField;
    FDTable_UserUSER_PW: TStringField;
    FDTable_UserUSER_NAME: TStringField;
    FDTable_UserUSER_BIRTH: TStringField;
    FDTable_UserUSER_PHONE: TStringField;
    FDTable_UserUSER_CASH: TIntegerField;
    FDTable_UserUSER_TIME: TIntegerField;
    FDTable_UserUSER_CON: TStringField;
    FDTable_time: TFDTable;
    FDTable_timeTIME_NO: TIntegerField;
    FDTable_timeTIME_NAME: TStringField;
    FDTable_timeTIM_PRISE: TIntegerField;
    FDTable_timeTIME_TIME: TIntegerField;
    DataSetProvider_TIME: TDataSetProvider;
    FDTable_login_histry: TFDTable;
    FDTable_time_add_history: TFDTable;
    FDTable_login_histryLOGIN_NO: TIntegerField;
    FDTable_login_histryUSER_NO: TIntegerField;
    FDTable_login_histryLOGIN_DAY: TStringField;
    FDTable_login_histryLOGIN_TIME: TStringField;
    FDTable_login_histryEND_DAY: TStringField;
    FDTable_login_histryEND_TIME: TStringField;
    FDTable_login_histryLOGIN_CLIENT: TIntegerField;
    DataSetProvider_login_history: TDataSetProvider;
    FDQuery_max_login_hisno: TFDQuery;
    FDQuery_login_history: TFDQuery;
    DataSetProvider_login_Q: TDataSetProvider;
    DataSetProvider_add_time_history: TDataSetProvider;
    FDQuery_add_time_history_q: TFDQuery;
    DataSetProvider_add_tim_hitory_Q: TDataSetProvider;
    FDQuery_max_addtime_no: TFDQuery;
    FDTable_time_add_historyTIMEADD_NO: TIntegerField;
    FDTable_time_add_historyUSER_NO: TIntegerField;
    FDTable_time_add_historyTIME_NAME: TStringField;
    FDTable_time_add_historyADD_DAY: TStringField;
    FDTable_time_add_historyADD_TIME: TStringField;
    FDTable_time_add_historyNOW_TIME: TStringField;
    DataSetProvider: TDataSetProvider;
    FDQuery_day_day: TFDQuery;
    DataSetProvider_dayday: TDataSetProvider;
    procedure DSServerModuleCreate(Sender: TObject);
   // procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public

    procedure minustime(const pcno: Integer);
    procedure con_Client(const pcno: Integer);
    procedure con_Client_off(const pcno: Integer);
    procedure logout(const pcno: Integer);
    procedure edit_time(const time: integer; user_id:string);
    procedure do_login(const User_Id_to: string ; pcno: integer);
    procedure Appendlogin_history(const LOGIN_day,LOGIN_time,End_day,end_time: string; user_no,login_client:integer);
    procedure Add_time_history(const add_day,add_time,time_name,now_time: string; user_no:integer);
    procedure power_logout(const selecd_no: integer);
    procedure popoup(const selected_no: Integer);

    function addtime_no(const user_id_to: string):integer;
    function show_item_time(const item_name: string):integer;
    function show_item_price(const item_name: string):integer;
    function find_user(const user_no_to: integer):string;
    function find_user_time(const user_no_to: integer):integer;
    function AppendProjectMember(const User_Id,User_PW,User_Name,User_Birth,User_Phone: string):integer;
    function loginYN(const User_Id_to,User_PW_to: string):integer;
    function loginYN_time(const User_Id_to,User_PW_to: string):integer;
    function loginYN_con(const User_Id_to,User_PW_to: string):integer;
    function after_login_name(const pcno: integer):string;
    function after_login_time(const pcno: integer):integer;
    function after_login_no(const pcno: integer):integer;
    function power_login_check(const pcno: integer):integer;
    function pop_id(const selecd_no: integer):string;
    function pop_pw(const selecd_no: integer):string;
    function pop_name(const selecd_no: integer):string;
    function pop_birth(const selecd_no: integer):string;
    function pop_cash(const selecd_no: integer):integer;
    function pop_time(const selecd_no: integer):integer;
    function pop_no(const selecd_no: integer):integer;
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;

var
  end;
  var
  User_no_to:integer;
  logouty:integer;

implementation


{$R *.dfm}


uses System.StrUtils;

function TServerMethods2.EchoString(Value: string): string;
begin
  Result := Value;
end;

function TServerMethods2.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;



//procedure TServerMethods2.find_User(const surch_id:string);
//begin
//  FDQuery_counter.FindNearest([surch_id]);
//end;

procedure TServerMethods2.Add_time_history(const add_day,add_time,time_name,now_time: string; user_no:integer);
begin
  FDConnection_main.StartTransaction;
  try
      with FDTable_time_add_history do  begin
            Append;
            FieldByName('timeadd_NO').AsInteger := FDQuery_max_addtime_no.FieldByName('add').AsInteger;
            FieldByName('add_day').AsString := add_day;
            FieldByName('add_time').AsString := add_time;
            FieldByName('time_name').AsString := time_name;
            FieldByName('now_time').Asstring := now_time;
            FieldByName('USER_NO').AsInteger := User_no;


            Post;
      end;
      FDConnection_main.Commit;
  except
      FDConnection_main.Rollback;
  end;

end;

procedure TServerMethods2.Appendlogin_history(const LOGIN_day,LOGIN_time,End_day,end_time: string; user_no,login_client:integer);
begin
  FDConnection_main.StartTransaction;
  try
      with FDTable_login_histry do  begin
            Append;
            FieldByName('login_NO').AsInteger := FDQuery_max_login_hisno.FieldByName('add').AsInteger;
            FieldByName('login_day').AsString := login_day;
            FieldByName('login_time').AsString := login_time;
            FieldByName('end_day').AsString := end_day;
            FieldByName('end_time').AsString := end_time;
            FieldByName('USER_NO').AsInteger := User_no;
            FieldByName('login_client').AsInteger := login_client;

            Post;
      end;
      FDConnection_main.Commit;
  except
      FDConnection_main.Rollback;
  end;

end;

function TServerMethods2.AppendProjectMember(const User_Id,User_PW,User_Name,User_Birth,User_Phone: string):integer;
begin
  FDConnection_main.StartTransaction;
  try

//    FDTable_User.Append;
//    FDTable_User.FieldByName('USER_NO').AsInteger := FDQuery_max_user_no.FieldByName('add').AsInteger;
//    FDTable_User.FieldByName('USER_ID').AsString := User_Id;
//    FDTable_User.FieldByName('USER_PW').AsString := User_PW;
//    FDTable_User.FieldByName('USER_NAME').AsString := User_Name;
//    FDTable_User.FieldByName('USER_BIRTH').AsString := User_Birth;
//    FDTable_User.FieldByName('USER_PHONE').AsString := User_Phone;
//    FDTable_User.FieldByName('USER_CASH').AsString := '0';
//    FDTable_User.FieldByName('USER_CON').AsString := '0';
//    FDTable_User.FieldByName('USER_Time').AsString := '00:00';

      with FDTable_User do  begin
            Append;
            FieldByName('USER_NO').AsInteger := FDQuery_max_user_no.FieldByName('add').AsInteger;
            FieldByName('USER_ID').AsString := User_Id;
            FieldByName('USER_PW').AsString := User_PW;
            FieldByName('USER_NAME').AsString := User_Name;
            FieldByName('USER_BIRTH').AsString := User_Birth;
            FieldByName('USER_PHONE').AsString := User_Phone;
            FieldByName('USER_CASH').ASinteger := 0;
            FieldByName('USER_CON').AsString := '0';
            FieldByName('USER_Time').ASinteger := 0;
            Post;
      end;
      FDConnection_main.Commit;
  except
      //on E:Exception do begin
         FDConnection_main.Rollback;
         Result := 0;//'처리실패.'+#13+#13+ E.Message;
         //showmessage('처리실패.'+#13+#13+ E.Message);
         exit;
     // end;
  end;
    Result := 1;
   //Showmessage('등록 되었습니다.');
  //FDTable_User.Refresh;
end;

function TServerMethods2.loginYN(const User_Id_to,User_PW_to: string):integer;
begin
//    FDQuery_login_ckeck.close;
//    FDQuery_login_ckeck.ParamByName('USER_ID_TO').Value := User_Id_to;
//    FDQuery_login_ckeck.ParamByName('USER_PW_TO').Value := User_PW_to;
//    FDQuery_login_ckeck.Open;
//    Result := FDQuery_login_ckeck.FieldByName('count').AsInteger;


     with FDQuery do begin
        close;
        sql.Clear;
        sql.Add('SELECT COUNT(*) cnt FROM PC_USER    ');
        sql.Add('WHERE USER_ID = '''+User_Id_to+'''  ');
        sql.Add('   AND USER_PW = '''+User_PW_to+''' ');
        open;
        if FieldByName('cnt').AsInteger = 1 then
           Result := 1
           else
           Result := 0;
     end;


end;

function TServerMethods2.loginYN_time(const User_Id_to,User_PW_to: string):integer;
begin
//    FDQuery_login_ckeck.close;
//    FDQuery_login_ckeck.ParamByName('USER_ID_TO').Value := User_Id_to;
//    FDQuery_login_ckeck.ParamByName('USER_PW_TO').Value := User_PW_to;
//    FDQuery_login_ckeck.Open;
//    Result := FDQuery_login_ckeck.FieldByName('count').AsInteger;


     with FDQuery do begin
        close;
        sql.Clear;
        sql.Add('SELECT USER_TIME FROM PC_USER    ');
        sql.Add('WHERE USER_ID = '''+User_Id_to+'''  ');
        open;
        if FieldByName('USER_TIME').AsInteger = 0 then
           Result := 0
           else
           Result := 1;
     end;


end;

function TServerMethods2.loginYN_con(const User_Id_to,User_PW_to: string):integer;
begin
//    FDQuery_login_ckeck.close;
//    FDQuery_login_ckeck.ParamByName('USER_ID_TO').Value := User_Id_to;
//    FDQuery_login_ckeck.ParamByName('USER_PW_TO').Value := User_PW_to;
//    FDQuery_login_ckeck.Open;
//    Result := FDQuery_login_ckeck.FieldByName('count').AsInteger;


     with FDQuery do begin
         close;
        sql.Clear;
        sql.Add('SELECT User_con  FROM PC_USER ');
        sql.Add('WHERE USER_ID = '''+User_Id_to+''' ');
        open;
        if FieldByName('USER_con').AsInteger = 0 then
           Result := 0
           else
           Result := 1;
     end;


end;

procedure TServerMethods2.do_login(const User_Id_to: string; pcno:integer);
var
user_no_to: integer;
begin
      with FDQuery do begin
        close;
        sql.Clear;
        sql.Add('select user_no from PC_user where user_id = '''+User_Id_to+''' ');
        open;
        user_no_to:= FieldByName('User_no').Asinteger;
      end;

      FDConnection_main.StartTransaction;

      with FDQuery do begin
        close;
        sql.Clear;
        sql.Add('UPDATE CLIENT SET user_no = '''+IntToStr(user_no_to)+''' ');
        sql.Add('WHERE CLIENT_NO = '''+IntToStr(PCno)+''' ');

      end;

      try
      with FDQuery do begin
        ExecSQL;
      end;

        FDConnection_main.Commit;
      except
        FDConnection_main.Rollback;
      end;

      FDConnection_main.StartTransaction;

      with FDQuery do begin
        close;
        sql.Clear;
        sql.Add('UPDATE PC_USER SET user_con = 1 ');
        sql.Add('WHERE USER_NO = '''+IntToStr(user_no_to)+''' ');

      end;

      try
      with FDQuery do begin
        ExecSQL;
      end;

        FDConnection_main.Commit;
      except
        FDConnection_main.Rollback;
      end;

    end;


procedure TServerMethods2.DSServerModuleCreate(Sender: TObject);
begin
 logouty := 0;
end;

procedure TServerMethods2.con_Client(const PCno: Integer);
begin
  with  FDQuery do begin
        close;
        sql.Clear;
        sql.Add('UPDATE CLIENT SET CLIENT_CON = 1 ');
        sql.Add('WHERE CLIENT_NO = '''+IntToStr(PCno)+''' ');
  end;

  FDConnection_main.StartTransaction;
  try
    FDQuery.ExecSQL;


    FDConnection_main.Commit;
  except
    FDConnection_main.Rollback;
  end;
end;

procedure TServerMethods2.con_Client_off(const PCno: Integer);
begin
    with  FDQuery do begin
        close;
        sql.Clear;
        sql.Add('UPDATE CLIENT SET CLIENT_CON = 0 ');
        sql.Add('WHERE CLIENT_NO = '''+IntToStr(PCno)+''' ');
    end;
    FDConnection_main.StartTransaction;
    try
        FDQuery.ExecSQL;
        FDConnection_main.Commit;
    except
        FDConnection_main.Rollback;
    end;
end;

function TServerMethods2.after_login_name(const pcno: integer):string;
var
  token, user_no_to :string;
begin
     with FDQuery do begin
        close;
        sql.Clear;
        sql.Add('SELECT USER_NO  FROM client    ');
        sql.Add('WHERE Client_no = '''+inttostr(pcno)+'''  ');
        open;
        user_no_to:= FieldByName('User_no').AsString;
        //Result := FieldByName('cnt').AsInteger;
     end;

     with FDQuery do begin
        close;
        sql.Clear;
        sql.Add('SELECT USER_NAME FROM PC_USER    ');
        sql.Add('WHERE USER_NO = '''+user_no_to+'''  ');
        open;
        token:= FieldByName('USER_NAME').AsString;
        //Result := FieldByName('cnt').AsInteger;
     end;
        Result:= token;
end;
function TServerMethods2.addtime_no(const user_id_to: string):integer;
var
  user_no_to :integer;
begin
     with FDQuery do begin
        close;
        sql.Clear;
        sql.Add('SELECT USER_NO  FROM pc_user    ');
        sql.Add('WHERE user_id = '''+user_id_to+'''  ');
        open;
        user_no_to:= FieldByName('User_no').Asinteger;

     end;
     Result:= user_no_to;

end;

function TServerMethods2.pop_no(const selecd_no: integer):integer;
var
  user_no_to :integer;
begin
     with FDQuery do begin
        close;
        sql.Clear;
        sql.Add('SELECT USER_no  FROM client    ');
        sql.Add('WHERE client_no = '''+inttostr(selecd_no)+'''  ');
        open;
        user_no_to:= FieldByName('User_no').Asinteger;

     end;
     Result:= user_no_to;

end;

function TServerMethods2.pop_id(const selecd_no: integer):string;
var
  user_no_to :string;
begin
     with FDQuery do begin
        close;
        sql.Clear;
        sql.Add('SELECT USER_id  FROM pc_user    ');
        sql.Add('WHERE user_no = '''+inttostr(selecd_no)+'''  ');
        open;
        user_no_to:= FieldByName('User_id').Asstring;

     end;
     Result:= user_no_to;

end;

function TServerMethods2.pop_pw(const selecd_no: integer):string;
var
  user_no_to :string;
begin
     with FDQuery do begin
        close;
        sql.Clear;
        sql.Add('SELECT USER_pw  FROM pc_user    ');
        sql.Add('WHERE user_no = '''+inttostr(selecd_no)+'''  ');
        open;
        user_no_to:= FieldByName('User_pw').Asstring;

     end;
     Result:= user_no_to;

end;

function TServerMethods2.pop_name(const selecd_no: integer):string;
var
  user_no_to :string;
begin
     with FDQuery do begin
        close;
        sql.Clear;
        sql.Add('SELECT USER_name  FROM pc_user    ');
        sql.Add('WHERE user_no = '''+inttostr(selecd_no)+'''  ');
        open;
        user_no_to:= FieldByName('User_name').Asstring;

     end;
     Result:= user_no_to;

end;

function TServerMethods2.pop_BIRTH(const selecd_no: integer):string;
var
  user_no_to :string;
begin
     with FDQuery do begin
        close;
        sql.Clear;
        sql.Add('SELECT USER_BIRTH  FROM pc_user    ');
        sql.Add('WHERE user_no = '''+inttostr(selecd_no)+'''  ');
        open;
        user_no_to:= FieldByName('USER_BIRTH').Asstring;

     end;
     Result:= user_no_to;

end;

function TServerMethods2.pop_cash(const selecd_no: integer):integer;
var
  user_no_to :integer;
begin
     with FDQuery do begin
        close;
        sql.Clear;
        sql.Add('SELECT USER_cash  FROM pc_user    ');
        sql.Add('WHERE user_no = '''+inttostr(selecd_no)+'''  ');
        open;
        user_no_to:= FieldByName('USER_cash').Asinteger;

     end;
     Result:= user_no_to;

end;

function TServerMethods2.pop_time(const selecd_no: integer):integer;
var
  user_no_to :integer;
begin
     with FDQuery do begin
        close;
        sql.Clear;
        sql.Add('SELECT USER_time  FROM pc_user    ');
        sql.Add('WHERE user_no = '''+inttostr(selecd_no)+'''  ');
        open;
        user_no_to:= FieldByName('USER_time').Asinteger;

     end;
     Result:= user_no_to;

end;

function TServerMethods2.after_login_no(const pcno: integer):integer;
var
  user_no_to :integer;
begin
     with FDQuery do begin
        close;
        sql.Clear;
        sql.Add('SELECT USER_NO  FROM client    ');
        sql.Add('WHERE Client_no = '''+inttostr(pcno)+'''  ');
        open;
        user_no_to:= FieldByName('User_no').Asinteger;

     end;
     Result:= user_no_to;

end;

function TServerMethods2.after_login_time(const pcno: integer):integer;
var
  user_no_to :string;
begin
     with FDQuery do begin
        close;
        sql.Clear;
        sql.Add('SELECT USER_NO  FROM client    ');
        sql.Add('WHERE Client_no = '''+inttostr(pcno)+'''  ');
        open;
        user_no_to:= FieldByName('User_no').AsString;
        //Result := FieldByName('cnt').AsInteger;
     end;

     with FDQuery do begin
        close;
        sql.Clear;
        sql.Add('SELECT USER_TIME FROM PC_USER    ');
        sql.Add('WHERE USER_NO = '''+user_no_to+'''  ');
        open;
        Result:= FieldByName('USER_TIME').AsInteger;
        //Result := FieldByName('cnt').AsInteger;
     end;


end;

procedure TServerMethods2.logout(const pcno: integer);
var
  user_no_to: string;
begin
  with FDQuery do begin
        close;
        sql.Clear;
        sql.Add('SELECT USER_NO FROM CLIENT    ');
        sql.Add('WHERE CLIENT_NO = '''+IntToStr(pcno)+'''  ');
        open;
        user_no_to:=FieldByName('USER_NO').AsString;
  end;

  with  FDQuery do begin
        close;
        sql.Clear;
        sql.Add('UPDATE CLIENT SET USER_NO = 0 ');
        sql.Add('WHERE CLIENT_NO = '''+IntToStr(PCno)+''' ');
  end;
  FDConnection_main.StartTransaction;
  try
  FDQuery.ExecSQL;
  FDConnection_main.Commit;
  except
  FDConnection_main.Rollback;
  end;

  with  FDQuery do begin
        close;
        sql.Clear;
        sql.Add('UPDATE PC_USER SET USER_CON = 0 ');
        sql.Add('WHERE USER_NO = '''+user_no_to+''' ');
  end;
  FDConnection_main.StartTransaction;
  try
  FDQuery.ExecSQL;
  FDConnection_main.Commit;
  except
  FDConnection_main.Rollback;
  end;
end;

procedure TServerMethods2.minustime(const pcno: integer);
var
  user_no_to :string;
begin
    with FDQuery do begin
         close;
         sql.Clear;
         sql.Add('SELECT USER_NO  FROM client    ');
         sql.Add('WHERE Client_no = '''+inttostr(pcno)+'''  ');
         open;
         user_no_to:= FieldByName('User_no').Asstring;
    end;

    FDConnection_main.StartTransaction;
    try
        with FDQuery do begin
             close;
             sql.Clear;
             sql.Add('UPDATE PC_USER SET       ');
             sql.Add(' USER_TIME = USER_TIME-1 ');
             sql.Add('WHERE USER_NO = '''+user_no_to+'''  ');
             execute;
        end;
        FDConnection_main.Commit;
    except
        FDConnection_main.Rollback;

    end;

end;

function TServerMethods2.find_user(const user_no_to: integer):string;
begin
    if user_no_to = 0 then
     Result:= '미접속'
    else
     with FDQuery do begin
        close;
        sql.Clear;
        sql.Add('SELECT USER_NAME  FROM PC_USER    ');
        sql.Add('WHERE USER_NO = '''+inttostr(user_no_to)+'''  ');
        open;
        Result:= FieldByName('User_NAMe').AsString;
     end;

end;

function TServerMethods2.find_user_time(const user_no_to: integer):integer;
begin

     with FDQuery do begin
        close;
        sql.Clear;
        sql.Add('SELECT USER_TIME FROM PC_USER    ');
        sql.Add('WHERE USER_NO = '''+inttostr(user_no_to)+'''  ');
        open;
        Result:= FieldByName('USER_TIME').AsInteger;
        //Result := FieldByName('cnt').AsInteger;
     end;


end;

function TServerMethods2.show_item_time(const item_name: string):integer;
begin
     with FDQuery do begin
        close;
        sql.Clear;
        sql.Add('SELECT TIME_TIME  FROM ITEM_TIME    ');
        sql.Add('WHERE TIME_NAME = '''+item_name+'''  ');
        open;
        result:= FieldByName('TIME_TIME').Asinteger;
        //Result := FieldByName('cnt').AsInteger;
     end;

end;

function TServerMethods2.show_item_price(const item_name: string):integer;
begin
     with FDQuery do begin
        close;
        sql.Clear;
        sql.Add('SELECT TIM_PRISE  FROM ITEM_TIME    ');
        sql.Add('WHERE TIME_NAME = '''+item_name+'''  ');
        open;
        result:= FieldByName('TIM_PRISE').Asinteger;
        //Result := FieldByName('cnt').AsInteger;
     end;

end;

procedure TServerMethods2.edit_time(const time: integer; user_id:string);
begin
    FDConnection_main.StartTransaction;
     try
     with FDQuery do begin
        close;
        sql.Clear;
        sql.Add('UPDATE PC_USER SET USER_TIME = USER_TIME + '+inttostr(time)+'  ');
        sql.Add('WHERE USER_ID = '''+user_id+''' ');
        execute;
     end;
        FDConnection_main.Commit;
    except
        FDConnection_main.Rollback;

    end;

end;

procedure TServerMethods2.popoup(const selected_no: Integer);
begin
  with  FDQuery do begin
        close;
        sql.Clear;
        sql.Add('select *from pc_user ');
        sql.Add('WHERE user_NO = '''+IntToStr(selected_no)+''' ');
        open;
  end;
  end;

procedure TServerMethods2.power_logout(const selecd_no: integer);
begin
  logouty:=1
end;

function TServerMethods2.power_login_check(const pcno: integer):integer;
begin
     if logoutY = 1 then
      Result:= 1
     else
       Result:= 0;
end;





//procedure TServerMethods2.find_near(const user_id_to:string);
//begin
//      with FDQuery_counter do begin
//        close;
//        sql.Clear;
//        sql.Add('SELECT USER_NO, USER_ID, USER_BIRTH FROM PC_USER    ');
//        sql.Add('WHERE USER_ID like ''%'+user_id_to+'%''            ');
//        sql.Add('order by USER_ID                                   ');
//        open;
//     end;
//end;



end.

