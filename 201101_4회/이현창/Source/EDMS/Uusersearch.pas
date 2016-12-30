unit Uusersearch;

interface

uses
	Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
	Dialogs, StdCtrls, Grids, DBGrids, ComCtrls, ExtCtrls, FMTBcd, DB, SqlExpr;

type
	deptrec = record
		code: string;
		dept: string;
		section: string;

	end;

	deptrecptr = ^deptrec;

	TRecvListForm = class(TForm)
		Panel1: TPanel;
		Panel3: TPanel;
		SearchEdit: TEdit;
		empQuery: TSQLQuery;
		ListView1: TListView;
		ComboBox1: TComboBox;
		Button1: TButton;
		procedure ListView1DblClick(Sender: TObject);
		procedure PrintListView(ComboIndex: Integer);
		procedure FormCreate(Sender: TObject);
		procedure Button1Click(Sender: TObject);
	private
		{ Private declarations }
	var
		prt: deptrecptr;
	public

		{ Public declarations }

	end;

var
	RecvListForm: TRecvListForm;

implementation

uses Uds_dm, Uinsert;

{$R *.dfm}

procedure TRecvListForm.Button1Click(Sender: TObject);
begin
	if SearchEdit.Text = '' then
		raise Exception.Create('검색어를 입력 하셔야 합니다.');

	PrintListView(ComboBox1.ItemIndex);
end;

procedure TRecvListForm.FormCreate(Sender: TObject);
begin
	PrintListView(ComboBox1.ItemIndex);
end;

procedure TRecvListForm.ListView1DblClick(Sender: TObject);
begin
	if ListView1.ItemIndex <> -1 then
	begin
		// if Uds_dm.UserID <> ListView1.Selected.Caption then
		// begin
		insertForm.recvEdit.Text := ListView1.Selected.SubItems[2];
		insertForm.recver_id := ListView1.Selected.Caption;
		RecvListForm.Close;
		// end
		// else
		// raise Exception.Create('자기 자신은 선택할 수 없습니다.');
	end;

end;

procedure TRecvListForm.PrintListView(ComboIndex: Integer);
var
	sql_str: string;
	listitem: TListItem;
begin
	ListView1.Clear;
	sql_str :=
		'Select emp.*, dept.DEPT_NM, dept.DEPT_SECTION_NM, class.CLASS_NM, class.CLASS_STEP From '
		+ 'emp, dept, class Where emp.emp_dept_code = dept.dept_code ' +
		'And emp.emp_class_code = class.class_code ';

	empQuery.SQL.Clear;
	empQuery.SQL.Add(sql_str);
	if SearchEdit.Text <> '' then
	begin
		case ComboIndex of
			0:
				empQuery.SQL.Add('and emp_nm like ''%' + SearchEdit.Text + '%''');
			1:
				empQuery.SQL.Add('and emp_no like ''%' + SearchEdit.Text + '%''');
			2:
				empQuery.SQL.Add('and dept_nm like ''%' + SearchEdit.Text + '%''');
			3:
				empQuery.SQL.Add('and dept_section_nm like ''%' +
					SearchEdit.Text + '%''');
		end;
	end;
	empQuery.SQL.Add('and class_step >= ' + IntToStr(Uds_dm.UserStep) + ' ');
	empQuery.Open;
	if empQuery.Eof then
		raise Exception.Create('결과가 없습니다.');
	while not empQuery.Eof do
	begin
		listitem := ListView1.Items.Add;
		listitem.Caption := empQuery.FieldByName('emp_no').AsString;
		listitem.SubItems.Add(empQuery.FieldByName('dept_nm').AsString);
		listitem.SubItems.Add(empQuery.FieldByName('dept_section_nm').AsString);
		listitem.SubItems.Add(empQuery.FieldByName('emp_nm').AsString);
		listitem.SubItems.Add(empQuery.FieldByName('class_nm').AsString);
		empQuery.Next;
	end;

end;

end.
