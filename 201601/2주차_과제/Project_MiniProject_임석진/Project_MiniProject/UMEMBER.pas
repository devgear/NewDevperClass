unit UMEMBER;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls, Vcl.ToolWin;

type
  TMEMBERForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox2: TGroupBox;
    Button1: TButton;
    GroupBox3: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Button3: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    GroupBox4: TGroupBox;
    Label4: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    GroupBox5: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Label7: TLabel;
    Edit5: TEdit;
    Button2: TButton;
    Button4: TButton;
    procedure Button3Click(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure Edit2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure clearEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MEMBERForm: TMEMBERForm;

implementation

{$R *.dfm}

uses UDM, UIns;

procedure TMEMBERForm.Button1Click(Sender: TObject);
var
 i : integer;
begin
  dm.MEMBERTable.First;
  for I := 0 to dm.MEMBERTable.RecordCount-1 do
  begin
   if (dm.MEMBERTable.FieldByName('M_NAME').AsString = Edit2.Text) and (dm.MEMBERTable.FieldByName('M_M_Name').AsString =DBLookupComboBox2.Text) then
   begin
     edit5.Text :=dm.MEMBERTable.FieldByName('M_ID').AsString;
     edit3.Text :=dm.MEMBERTable.FieldByName('M_NAME').AsString;
     edit4.Text :=dm.MEMBERTable.FieldByName('M_M_Name').AsString;
     edit2.Text := '';
     showmessage('검색되었습니다.');
     exit;
   end
   else
   dm.MEMBERTable.Next;
  end;
  showmessage('결과가 검색되지 않습니다.');
end;

procedure TMEMBERForm.Button2Click(Sender: TObject);
begin
  insform := TInsForm.Create(Application);
  insform.Edit1.Text := Edit3.Text;
  if insform.ShowModal = mrok then
  begin
    dm.MEMBERTable.Edit;
    dm.MEMBERTable.FieldByName('M_NAME').AsString := insform.Edit1.Text;
    dm.MEMBERTable.Post;
    showmessage('수정되었습니다.');
    clearEdit;
  end;
  insform.Free;
end;

procedure TMEMBERForm.Button3Click(Sender: TObject);
var
 i :integer;
begin
  if edit1.Text = '이름을 입력하세요' then
  begin
    showmessage('이름을 작성해 주세요');
    dm.MEMBERTable.Cancel;
    exit;
  end;
  dm.MEMBERTable.FieldByName('M_NAME').AsString := Edit1.Text;
  dm.MEMBERTable.Post;
  dm.MEMBERTable.Refresh;
  showmessage('등록되었습니다.');
  edit1.Text := '이름을 입력하세요';
end;

procedure TMEMBERForm.Button4Click(Sender: TObject);
begin
  if messagedlg('정말 삭제하시겠습니까?', mtconfirmation,[mbyes, mbno],0) = mryes then
  try
    dm.MEMBERTable.Delete;
    showmessage('삭제되었습니다.');
  except
    on e:exception do
      showmessage(e.Message);
  end;
  clearEdit;
end;

procedure TMEMBERForm.clearEdit;
begin
  edit3.Text := '';
  edit4.Text := '';
  edit5.Text := '';
end;

procedure TMEMBERForm.Edit1Click(Sender: TObject);
begin
  if edit1.Text = '이름을 입력하세요' then
  begin
    edit1.Text := '';
    dm.MEMBERTable.Insert;
  end;
end;

procedure TMEMBERForm.Edit2Click(Sender: TObject);
begin
  if edit2.Text ='이름을 입력하세요' then
    edit2.Text := '';
end;

end.
