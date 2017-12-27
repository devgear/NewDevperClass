unit Pc_Counter_now;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Menus,
  Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  PC_counter_dm, Vcl.Grids, Vcl.DBGrids, Unit1, Pc_counter_UserView,
  pc_counter_popup;

type
  TForm_now = class(TForm)
    C_Panel28: TPanel;
    pcnum: TLabel;
    Label_user_name28: TLabel;
    Label_con28: TLabel;
    C_Panel18: TPanel;
    Label2: TLabel;
    Label_user_name18: TLabel;
    Label_con18: TLabel;
    C_Panel10: TPanel;
    Label5: TLabel;
    Label_user_name10: TLabel;
    Label_con10: TLabel;
    C_Panel9: TPanel;
    Label8: TLabel;
    Label_user_name9: TLabel;
    Label_con9: TLabel;
    C_Panel8: TPanel;
    Label11: TLabel;
    Label_user_name8: TLabel;
    Label_con8: TLabel;
    C_Panel5: TPanel;
    Label14: TLabel;
    Label_user_name5: TLabel;
    Label_con5: TLabel;
    C_Panel4: TPanel;
    Label17: TLabel;
    Label_user_name4: TLabel;
    Label_con4: TLabel;
    C_Panel3: TPanel;
    Label20: TLabel;
    Label_user_name3: TLabel;
    Label_con3: TLabel;
    C_Panel2: TPanel;
    Label23: TLabel;
    Label_user_name2: TLabel;
    Label_con2: TLabel;
    C_Panel1: TPanel;
    Label26: TLabel;
    Label_user_name1: TLabel;
    Label_con1: TLabel;
    C_Panel27: TPanel;
    Label29: TLabel;
    Label_user_name27: TLabel;
    Label_con27: TLabel;
    C_Panel26: TPanel;
    Label32: TLabel;
    Label_user_name26: TLabel;
    Label_con26: TLabel;
    C_Panel25: TPanel;
    Label35: TLabel;
    Label_user_name25: TLabel;
    Label_con25: TLabel;
    C_Panel24: TPanel;
    Label38: TLabel;
    Label_user_name24: TLabel;
    Label_con24: TLabel;
    C_Panel23: TPanel;
    Label41: TLabel;
    Label_user_name23: TLabel;
    Label_con23: TLabel;
    C_Panel22: TPanel;
    Label44: TLabel;
    Label_user_name22: TLabel;
    Label_con22: TLabel;
    C_Panel21: TPanel;
    Label47: TLabel;
    Label_user_name21: TLabel;
    Label_con21: TLabel;
    C_Panel20: TPanel;
    Label50: TLabel;
    Label_user_name20: TLabel;
    Label_con20: TLabel;
    C_Panel19: TPanel;
    Label53: TLabel;
    Label_user_name19: TLabel;
    Label_con19: TLabel;
    C_Panel17: TPanel;
    Label56: TLabel;
    Label_user_name17: TLabel;
    Label_con17: TLabel;
    C_Panel16: TPanel;
    Label59: TLabel;
    Label_user_name16: TLabel;
    Label_con16: TLabel;
    C_Panel15: TPanel;
    Label62: TLabel;
    Label_user_name15: TLabel;
    Label_con15: TLabel;
    C_Panel14: TPanel;
    Label65: TLabel;
    Label_user_name14: TLabel;
    Label_con14: TLabel;
    C_Panel13: TPanel;
    Label68: TLabel;
    Label_user_name13: TLabel;
    Label_con13: TLabel;
    C_Panel7: TPanel;
    Label71: TLabel;
    Label_user_name7: TLabel;
    Label_con7: TLabel;
    C_Panel6: TPanel;
    Label74: TLabel;
    Label_user_name6: TLabel;
    Label_con6: TLabel;
    C_Panel12: TPanel;
    Label77: TLabel;
    Label_user_name12: TLabel;
    Label_con12: TLabel;
    C_Panel11: TPanel;
    Label80: TLabel;
    Label_user_name11: TLabel;
    Label_con11: TLabel;
    PopupMenu1: TPopupMenu;
    hello1: TMenuItem;
    Panel_main: TPanel;
    Timer1: TTimer;
    N1: TMenuItem;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    Shape9: TShape;
    Shape10: TShape;
    Shape11: TShape;
    Shape12: TShape;
    Shape13: TShape;
    Shape14: TShape;
    Shape15: TShape;
    Shape16: TShape;
    Shape17: TShape;
    Shape18: TShape;
    Shape19: TShape;
    Shape20: TShape;
    Shape21: TShape;
    Shape22: TShape;
    Shape23: TShape;
    Shape24: TShape;
    Shape25: TShape;
    Shape26: TShape;
    Shape27: TShape;
    Shape28: TShape;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure hello1Click(Sender: TObject);
    procedure C_Panel1ContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
    procedure N1Click(Sender: TObject);

type
  TClient_T = record
  User_name : string;
  Client_con : string;
end;

private
  Fclient_set : array [1..28] of TClient_T;
    { Private declarations }
public
    { Public declarations }
end;

var
  Form_now: TForm_now;
  find_no:integer;

implementation



{$R *.dfm}

procedure TForm_now.C_Panel1ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
 // ShowMessage(.);
end;

procedure TForm_now.FormCreate(Sender: TObject);
var
  serverMethods:TServerMethods2Client;
  I: Integer;
  lab,lab_user : Tlabel;
  cshap : TShape;
  user_no_to: integer;
  result :string;
  result2 :integer;
begin
    clientmodule.ClientData_client.First;
   Timer1.Enabled:=True;
   for I := 1 to 28 do
    begin
      serverMethods := TServerMethods2Client.Create(clientmodule.SQLConnection1.DBXConnection);

      lab := Self.findcomponent('label_con'+IntToStr(i)) as TLabel;
      lab_user := Self.findcomponent('Label_user_name'+IntToStr(i)) as TLabel;
      cshap := Self.findcomponent('Shape'+IntToStr(i)) as TShape;

      Fclient_set[i].Client_con := clientmodule.ClientData_clientCLIENT_CON.Asstring;
      Fclient_set[i].User_name := clientmodule.ClientData_clientUSER_NO.Asstring;

      user_no_to := strtoint(Fclient_set[i].User_name);
      result:= serverMethods.find_user(user_no_to);
      if user_no_to = 0 then
        begin
            if Fclient_set[i].Client_con = '0' then
            begin
              lab.caption := '컴퓨터 꺼짐';
              cshap.Visible := False;
            end
        else
            begin
              lab.caption := '컴퓨터 켜짐' ;
               cshap.Visible := True;
            end;

        end
      else
        begin
            result2 := serverMethods.find_user_time(user_no_to);
            lab.caption := format('%0.2d',[result2 div 60])+'시간'+ format('%0.2d',[result2 mod 60])+'분';
            cshap.pen.Color := clInfoBk;
        end;


      lab_user.caption := result;

      clientmodule.ClientData_client.Next;
    end;



end;

procedure TForm_now.hello1Click(Sender: TObject);
var
  serverMethods:TServerMethods2Client;
  selected_no : integer;
begin
    serverMethods := TServerMethods2Client.Create(clientmodule.SQLConnection1.DBXConnection);
    find_no := PopupMenu1.PopupComponent.tag;      
    
    selected_no := serverMethods.pop_no(find_no);
    if selected_no = 0  then
    begin
      ShowMessage('사용중인 회원이 없습니다.');
      exit
    end
    else    
      begin
        if not Assigned(Form_pop) then
        Form_pop := TForm_pop.Create(Application);
        Form_pop.Show;
      end; 
end;

procedure TForm_now.N1Click(Sender: TObject);
var
  serverMethods:TServerMethods2Client;
  selected_no : integer;
begin
    serverMethods := TServerMethods2Client.Create(clientmodule.SQLConnection1.DBXConnection);
    find_no := PopupMenu1.PopupComponent.tag;      
    
    selected_no := serverMethods.pop_no(find_no);
    if selected_no = 0  then
    begin
      ShowMessage('사용중인 회원이 없습니다.');
      exit
    end
    else    
      begin
        if Messagedlg('정말 해당 회원을 로그아웃 시키겠습니까 ?', mtconfirmation, [mbYes, mbNo], 0) = mrYes  then
          begin
           serverMethods.power_logout(find_no);  
          end;
        
      end; 
end;

procedure TForm_now.Timer1Timer(Sender: TObject);
var
  serverMethods:TServerMethods2Client;
  I: Integer;
  lab,lab_user : Tlabel;
  user_no_to: integer;
  result :string;
  result2 :integer;
  cshap : TShape;
begin
    clientmodule.ClientData_client.First;
   Timer1.Enabled:=True;
   for I := 1 to 28 do
    begin
      serverMethods := TServerMethods2Client.Create(clientmodule.SQLConnection1.DBXConnection);

      lab := Self.findcomponent('label_con'+IntToStr(i)) as TLabel;
      lab_user := Self.findcomponent('Label_user_name'+IntToStr(i)) as TLabel;
      cshap := Self.findcomponent('Shape'+IntToStr(i)) as TShape;

      Fclient_set[i].Client_con := clientmodule.ClientData_clientCLIENT_CON.Asstring;
      Fclient_set[i].User_name := clientmodule.ClientData_clientUSER_NO.Asstring;

      user_no_to := strtoint(Fclient_set[i].User_name);
      result:= serverMethods.find_user(user_no_to);
      if user_no_to = 0 then
        begin
            if Fclient_set[i].Client_con = '0' then
            begin
              lab.caption := '컴퓨터 꺼짐';
              cshap.Visible := False;
              cshap.pen.Color := clSkyBlue;
            end
            else
            begin
              lab.caption := '컴퓨터 켜짐' ;
               cshap.pen.Color := clSkyBlue;
               cshap.Visible := True;
            end;
        end
      else
        begin
            result2 := serverMethods.find_user_time(user_no_to);
            lab.caption := format('%0.2d',[result2 div 60])+'시간'+ format('%0.2d',[result2 mod 60])+'분';
            cshap.pen.Color := clInfoBk;
        end;


      lab_user.caption := result;

      clientmodule.ClientData_client.Next;
    end;
end;


end.
