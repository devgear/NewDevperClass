unit UFront_Form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, FMTBcd, DB, SqlExpr, Mask, DBCtrls;

type
  TFrontForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Bt_Login: TButton;
    Bt_Cancel: TButton;
    IDEdit: TDBEdit;
    PWEdit: TDBEdit;
    procedure Bt_CancelClick(Sender: TObject);
    procedure Bt_LoginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrontForm: TFrontForm;

implementation

uses ClientModuleUnit1;


{$R *.dfm}

procedure TFrontForm.Bt_CancelClick(Sender: TObject);
begin
  Close;
//  Application.Terminate;
end;

procedure TFrontForm.Bt_LoginClick(Sender: TObject);
var
  SQLResult : integer;
  SQLText : string;
begin
  if IDEdit.text='' then
    begin
      showmessage('아이디를 입력하세요');
      IDEdit.setfocus;
      exit;
    end;

  if (PWEdit.text='') or (PWEdit.text='none') then
    begin
      showmessage('패스워드는 공백이나 특수 문자를 허용하지 않습니다');
      PWEdit.text:='';
      PWEdit.setfocus;
      exit;
    end;

    with ClientModule1.User do
    begin
      SQLText := FieldByName('')
      Locate('P_ID',)

      Close;
      SQL.Clear;
      SQL.Text := 'SELECT * FROM SHOP WHERE C_ID = '''  + IDEdit.text + '''';
      Open;
    if RecordCount = 0 then
    begin
      showmessage('존재하지않는 아이디입니다.');
      IDEdit.setfocus;
      exit;
    end else
    begin
      if fieldbyname('C_PW').asstring <> PWEdit.Text then
      begin
        showmessage('패스워드가 다릅니다');
        PWEdit.text:='';
        PWEdit.setfocus;
        exit;
      end;
  end;
  end;
end;

end.
