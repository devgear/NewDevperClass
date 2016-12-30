unit ULogin;

interface

uses
	Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
	Dialogs, FMTBcd, DB, SqlExpr, StdCtrls;

type
	TLoginForm = class(TForm)
		Label1: TLabel;
		Label2: TLabel;
		Label3: TLabel;
		Edt_Password: TEdit;
		Edt_id: TEdit;
		Label4: TLabel;
		btn_OK: TButton;
		btn_cancel: TButton;
		procedure OKBtnClick(Sender: TObject);
		procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btn_cancelClick(Sender: TObject);

	private
		{ Private declarations }
	var
		checked: boolean;
	public
		function getChecked: boolean;
		{ Public declarations }

	end;

var
	LoginForm: TLoginForm;

implementation

uses Uds_dm;

{$R *.dfm}

procedure TLoginForm.btn_cancelClick(Sender: TObject);
begin
	LoginForm.Close;
end;

procedure TLoginForm.FormCreate(Sender: TObject);
begin
	checked := false;
end;

procedure TLoginForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
	if Key = #13 then
		SelectNext((ActiveControl as TWinControl), true, true);
end;

function TLoginForm.getChecked: boolean;
begin
	result := checked;
end;

procedure TLoginForm.OKBtnClick(Sender: TObject);
begin
	if (Edt_id.Text = '') then
		raise Exception.Create('아이디를 입력해주세요')
	else if (Edt_Password.Text = '') then
		raise Exception.Create('패스워드를 입력해주세요');

	dm.MyQuery.Close;
	dm.MyQuery.Params[0].AsString := Edt_id.Text;
	dm.MyQuery.Open;

	if dm.MyQuery.IsEmpty then
		raise Exception.Create('아이디가 없습니다.');

	if dm.MyQuery.FieldByName('emp_passwd').AsString <> Edt_Password.Text then
		raise Exception.Create('패스워드가 틀립니다.');

	checked := true;
	LoginForm.Close;

end;

end.
