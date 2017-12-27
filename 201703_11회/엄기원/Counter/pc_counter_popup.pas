unit pc_counter_popup;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Unit1;

type
  TForm_pop = class(TForm)
    Panel4: TPanel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Panel5: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Button4: TButton;
    Edit_nowtime: TEdit;
    Edit_alltime: TEdit;
    Edit_pay: TEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label12: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button4Click(Sender: TObject);
    procedure DBLookupComboBox1CloseUp(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_pop: TForm_pop;
  update_mod: integer;

implementation

{$R *.dfm}

uses Pc_Counter_now, PC_counter_dm;

procedure TForm_pop.Button4Click(Sender: TObject);
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
    user_id := Edit1.text;
    result2 := serverMethods.addtime_no(user_id);

    serverMethods.Add_time_history(add_day,add_time,time_name,now_time,result2);


    result := serverMethods.show_item_time(time_name);
    serverMethods.edit_time(result, user_id);

    ShowMessage('시간 충전이 완료 되었습니다');
    clientmodule.ClientData_update.Refresh;
    Form_pop.Close;
  end;

end;

procedure TForm_pop.DBLookupComboBox1CloseUp(Sender: TObject);
var
  serverMethods:TServerMethods2Client;
  item_name_to:string;
  result,result2,alltime: integer;
begin
  serverMethods := TServerMethods2Client.Create(clientmodule.SQLConnection1.DBXConnection);

  item_name_to:= DBLookupComboBox1.text;
  result := serverMethods.show_item_time(item_name_to);
  result2 := serverMethods.show_item_price(item_name_to);
  alltime := STRtoint(Edit6.Text) + result;
  Edit_alltime.text:= format('%0.2d',[alltime div 60])+'시간'+ format('%0.2d',[alltime mod 60])+'분';
  Edit_pay.Text := inttostr(result2)+'원';

end;

procedure TForm_pop.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  Form_pop := nil;
end;

procedure TForm_pop.FormCreate(Sender: TObject);
var
serverMethods:TServerMethods2Client;
selected_no:integer;
nowtime:integer;
begin
 //ShowMessage(inttostr(find_no));
 serverMethods := TServerMethods2Client.Create(clientmodule.SQLConnection1.DBXConnection);
 selected_no:= serverMethods.pop_no(find_no);

 Edit1.Text:= serverMethods.pop_id(selected_no);
 Edit2.Text:= serverMethods.pop_pw(selected_no);
 Edit3.Text:= serverMethods.pop_name(selected_no);
 Edit4.Text:= serverMethods.pop_birth (selected_no);
 Edit5.Text:= inttostr(serverMethods.pop_cash(selected_no));
 Edit6.Text:= inttostr(serverMethods.pop_time(selected_no));

   nowtime := STRtoint(Edit6.Text);
   Edit_nowtime.Text:=format('%0.2d',[nowtime div 60])+'시간'+ format('%0.2d',[nowtime mod 60])+'분';
end;

end.
