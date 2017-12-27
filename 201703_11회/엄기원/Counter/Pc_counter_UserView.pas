unit Pc_counter_UserView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls, PC_counter_dm,
  Unit1;

type
  TForm_UserView = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    Splitter1: TSplitter;
    Panel3: TPanel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    ID: TLabel;
    PASSWD: TLabel;
    Label3: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit_find_user: TEdit;
    Button_updatemod: TButton;
    Button_save: TButton;
    Button_cancle: TButton;
    Panel4: TPanel;
    Splitter2: TSplitter;
    Panel5: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Button1: TButton;
    Edit_nowtime: TEdit;
    Edit_alltime: TEdit;
    Edit_pay: TEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure Edit_find_userChange(Sender: TObject);
    procedure Button_updatemodClick(Sender: TObject);
    procedure Button_saveClick(Sender: TObject);
    procedure Button_cancleClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit7Change(Sender: TObject);
    procedure DBLookupComboBox1CloseUp(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_UserView: TForm_UserView;
  update_mod: integer;

implementation

{$R *.dfm}

procedure TForm_UserView.Button1Click(Sender: TObject);
var
   serverMethods:TServerMethods2Client;
   now_time,add_day,add_time,item_name_to, user_id,time_name:string;
   result,result2: integer;
begin
   if Messagedlg('시간을 충전 하시겠습니까? ?', mtconfirmation, [mbYes, mbNo], 0) = mrYes  then
  begin
    serverMethods := TServerMethods2Client.Create(clientmodule.SQLConnection1.DBXConnection);

    add_day := Formatdatetime ('yyyy:mm:dd', now);
    add_time := Formatdatetime ('hh:mm:ss', now);
    time_name := DBLookupComboBox1.text;
    now_time := Edit_alltime.Text;
    user_id := DBEdit2.text;
    result2 := serverMethods.addtime_no(user_id);

    serverMethods.Add_time_history(add_day,add_time,time_name,now_time,result2);


    result := serverMethods.show_item_time(time_name);
    serverMethods.edit_time(result, user_id);

    ShowMessage('시간 충전이 완료 되었습니다');
    clientmodule.ClientData_update.Refresh;
    Form_UserView.Close;



  end;

end;

procedure TForm_UserView.Button_cancleClick(Sender: TObject);
begin
  clientmodule.ClientData_update.Cancel;
end;

procedure TForm_UserView.Button_saveClick(Sender: TObject);
begin
  if update_mod = 0 then
  begin
    ShowMessage('정보 변경 보튼을 먼저 눌러 주세요.');
    exit;
  end
  else
  begin
    clientmodule.ClientData_update.Post;
    clientmodule.ClientData_update.applyupdates(-1);
    DBEdit2.ReadOnly := true;
    DBEdit3.ReadOnly := true;
    DBEdit4.ReadOnly := true;
    DBEdit5.ReadOnly := true;
    DBEdit6.ReadOnly := true;
    DBEdit7.ReadOnly := true;
    update_mod := 0;
  end;

end;

procedure TForm_UserView.Button_updatemodClick(Sender: TObject);
begin
  clientmodule.ClientData_update.Edit;
  DBEdit2.ReadOnly := false;
  DBEdit3.ReadOnly := false;
  DBEdit4.ReadOnly := false;
  DBEdit5.ReadOnly := false;
  DBEdit6.ReadOnly := false;
  DBEdit7.ReadOnly := false;
  update_mod :=1;
end;

procedure TForm_UserView.DBEdit7Change(Sender: TObject);
var
nowtime:integer;
begin
   nowtime := STRtoint(DBEdit7.Text);
   Edit_nowtime.Text:=format('%0.2d',[nowtime div 60])+'시간'+ format('%0.2d',[nowtime mod 60])+'분';
end;

procedure TForm_UserView.DBLookupComboBox1CloseUp(Sender: TObject);
var
  serverMethods:TServerMethods2Client;
  item_name_to:string;
  result,result2,alltime: integer;
begin
  serverMethods := TServerMethods2Client.Create(clientmodule.SQLConnection1.DBXConnection);

  item_name_to:= DBLookupComboBox1.text;
  result := serverMethods.show_item_time(item_name_to);
  result2 := serverMethods.show_item_price(item_name_to);
  alltime := STRtoint(DBEdit7.Text) + result;
  Edit_alltime.text:= format('%0.2d',[alltime div 60])+'시간'+ format('%0.2d',[alltime mod 60])+'분';
  Edit_pay.Text := inttostr(result2)+'원';

end;

procedure TForm_UserView.Edit_find_userChange(Sender: TObject);
var
  fiter:string;
  USER_ID_to:string;
begin
  fiter:= '' ;
  USER_ID_to := Edit_find_user.Text;

  if USER_ID_to <> '' then
  begin
    fiter := 'USER_ID like ''%'+USER_ID_to+'%''';

  end;
  clientmodule.ClientData_update.Filter := fiter ;
  clientmodule.ClientData_update.Filtered := (fiter <> '') ;

end;

procedure TForm_UserView.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  Form_UserView := nil;
end;

procedure TForm_UserView.FormCreate(Sender: TObject);
var
nowtime,result_time:integer;
begin
   clientmodule.ClientData_update.Refresh;
   clientmodule.ClientData_USER.Refresh;
   update_mod := 0;
   nowtime := STRtoint(DBEdit7.Text);
   Edit_nowtime.Text:=format('%0.2d',[nowtime div 60])+'시간'+ format('%0.2d',[nowtime mod 60])+'분';
end;

end.
