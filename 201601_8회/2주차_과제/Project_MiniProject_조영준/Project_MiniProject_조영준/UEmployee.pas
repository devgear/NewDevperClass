unit UEmployee;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask, Vcl.ComCtrls;

type
  TEmployeeForm = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    TabSheet2: TTabSheet;
    Lb_Name: TLabel;
    Lb_Phone: TLabel;
    Lb_Team: TLabel;
    Edt_name: TDBEdit;
    Edt_Phone: TDBEdit;
    Bt_Insert: TButton;
    Bt_Delete: TButton;
    Bt_CanCel: TButton;
    Bt_Post: TButton;
    TeamCombo: TDBLookupComboBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Lb_NameSeach: TLabel;
    Edt_NameSearch: TEdit;
    procedure Bt_InsertClick(Sender: TObject);
    procedure Bt_DeleteClick(Sender: TObject);
    procedure Bt_CanCelClick(Sender: TObject);
    procedure Bt_PostClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EmployeeForm: TEmployeeForm;
  i: Boolean;

implementation

{$R *.dfm}

uses UDM;

procedure TEmployeeForm.Bt_CanCelClick(Sender: TObject);
begin
  DM.Employee.Cancel; // 취소
  DM.Employee.CancelUpdates;
  showmessage('취소되었습니다.');
end;

procedure TEmployeeForm.Bt_DeleteClick(Sender: TObject);
begin
  if Messagedlg('삭제하시겟습니까??', mtconfirmation, [mbok, mbcancel], 0) = mrok then
  begin
    try
      DM.Employee.Delete; // 선택된 데이터 삭제
      DM.Employee.ApplyUpdates(-1);
    except
      showmessage('삭제 오류');
    end;
  end;
  DM.Employee.Refresh;
end;

procedure TEmployeeForm.Bt_InsertClick(Sender: TObject);
begin
  i := true;
  DM.Employee.Insert; // 입력모드 변경U
  showmessage('입력모드입니다.');
end;

procedure TEmployeeForm.Bt_PostClick(Sender: TObject);
begin
  try
    DM.Employee.Post; // 저장
    DM.Employee.ApplyUpdates(-1);
    if i = true then
    begin
      showmessage('추가되었습니다.');
      i := false
    end
    else
    begin
      showmessage('수정되었습니다.')
    end;
    DM.project.Refresh

  except
    if i = true then
    begin
      raise Exception.Create('입력하신 정보를 다시 확인하세요');
    end
    else
      showmessage('입력모드가 아니거나 수정할 정보가 없습니다');
  end;
end;

procedure TEmployeeForm.Button1Click(Sender: TObject);
begin
  DM.Employee.First;
end;

procedure TEmployeeForm.Button2Click(Sender: TObject);
begin
  if not DM.Employee.Bof then
    DM.Employee.Prior;
end;

procedure TEmployeeForm.Button3Click(Sender: TObject);
begin
  if not DM.Employee.Eof then
    DM.Employee.Next;
end;

procedure TEmployeeForm.Button4Click(Sender: TObject);
begin
  DM.Employee.Last;
end;

procedure TEmployeeForm.Edit1Change(Sender: TObject);
begin
  DM.Employee.IndexFieldNames := 'E_NAME';
  DM.Employee.FindNearest([Edt_NameSearch.Text]);
end;

procedure TEmployeeForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree
end;

end.
