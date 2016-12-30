unit Main_Calender;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin,
  Vcl.Grids, Vcl.Samples.Calendar, Vcl.ExtCtrls, Data.DB, Vcl.DBGrids, MoDule1;

type
  TMain_Form = class(TForm)
    Panel3: TPanel;
    Calendar1: TCalendar;
    SpinEdit1: TSpinEdit;
    MonthLabel: TLabel;
    Label2: TLabel;
    PrevYear: TButton;
    PrevMonthBtn: TButton;
    NextYear: TButton;
    NextMonthBtn: TButton;
    NOWBTN: TButton;
    OKBTN: TButton;
    CancelBTN: TButton;
    YEARLabel: TLabel;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    GroupBox2: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    GroupBox3: TGroupBox;
    Panel1: TPanel;
    Label13: TLabel;
    ComboBox1: TComboBox;
    Label14: TLabel;
    Edit2: TEdit;
    Button2: TButton;
    procedure Label1Click(Sender: TObject);
    procedure PrevYearClick(Sender: TObject);
    procedure NextYearClick(Sender: TObject);
    procedure PrevMonthBtnClick(Sender: TObject);
    procedure NextMonthBtnClick(Sender: TObject);
    procedure OKBTNClick(Sender: TObject);
    procedure NOWBTNClick(Sender: TObject);
    procedure CancelBTNClick(Sender: TObject);
    procedure Calendar1Change(Sender: TObject);
    procedure Calendar1Click(Sender: TObject);
    procedure Calendar1DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    // procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
    procedure SetDate(Date: TDateTime);
    function GetDate: TDateTime;
    procedure SetStrDate(AStrDate: String);
    function GetStrDate: String;
    function StrToDay(nstr: string): TDateTime;
    function NumTrim(nstr: string): string;

  public
    { Public declarations }
    property SelDate: TDateTime read GetDate write SetDate;
    property StrDate: String read GetStrDate write SetStrDate;
  end;

var

  Main_Form: TMain_Form;

implementation

{$R *.dfm}

uses Room_Info, Main_Client;

procedure TMain_Form.SetDate(Date: TDateTime);
begin
  Calendar1.CalendarDate := Date;
end;

function TMain_Form.GetDate: TDateTime;
begin
  Result := Calendar1.CalendarDate;
end;

procedure TMain_Form.SetStrDate(AStrDate: String);
begin
  if AStrDate < '19000101' then
  begin
    SetDate(Now());
  end
  else
  begin
    SetDate(StrToDay(AStrDate));
  end;
end;

function TMain_Form.GetStrDate: String;
begin
  Result := NumTrim(FormatDateTime('YYYY-MM-DD', (Calendar1.CalendarDate)));
end;

function TMain_Form.StrToDay(nstr: string): TDateTime;
var
  addtring: string;
  strcount: integer;
begin
  addtring := '';
  for strcount := 1 to length(nstr) do
  begin
    if (strcount = 5) or (strcount = 7) then
    begin
      addtring := addtring + '-';
    end;
    if ((copy(nstr, strcount, 1) >= '0') and (copy(nstr, strcount, 1) <= '9'))
    then
      addtring := addtring + copy(nstr, strcount, 1);
  end;
  if length(addtring) < 8 then
  begin
    Result := Now;
  end
  else
    try
      Result := StrToDate(addtring);
    except
      Result := Now;
    end;
end;

function TMain_Form.NumTrim(nstr: string): string;
var
  addtring: string;
  strcount: integer;
  floatchk: boolean;
begin
  addtring := '';
  floatchk := false;
  for strcount := 1 to length(nstr) do
  begin
    if ((strcount = 1) and (copy(nstr, strcount, 1) = '-')) then
    begin
      addtring := addtring + copy(nstr, strcount, 1);
    end
    else if ((strcount = 1) and (copy(nstr, strcount, 1) = '.')) then
    begin
      floatchk := true;
      addtring := addtring + '0' + copy(nstr, strcount, 1);
    end
    else if ((floatchk = false) and (copy(nstr, strcount, 1) = '.')) then
    begin
      floatchk := true;
      addtring := addtring + copy(nstr, strcount, 1);
    end
    else if ((copy(nstr, strcount, 1) >= '0') and
      (copy(nstr, strcount, 1) <= '9')) then

      addtring := addtring + copy(nstr, strcount, 1);
  end;
  if addtring = '' then
  begin
    Result := '0';
    exit;
  end
  else
    Result := addtring;
end;

procedure TMain_Form.Button1Click(Sender: TObject);
var
  a,b,c,d,sum : integer;
begin
  SpinEdit1.Visible := false;
  Edit1.Text := Main_Form.StrDate;
  ModalResult := mrok;
  if RadioButton1.Checked then
  begin
    form3.Edit8.Text := '소회의실 [ R1001 ]';
    form3.Edit13.Text := '60000';
    form3.Edit9.Text := '1';
    form3.Edit10.Text := '1001';
    form3.Edit11.Text := '20';
  end
  else if RadioButton2.Checked then
  begin
    form3.Edit8.Text := '소회의실 [ R1002 ]';
    form3.Edit13.Text := '60000';
    form3.Edit9.Text := '1';
    form3.Edit10.Text := '1002';
    form3.Edit11.Text := '15';
  end
  else if RadioButton3.Checked then
  begin
    form3.Edit8.Text := '중회의실 [ R1003 ]';
    form3.Edit13.Text := '80000';
    form3.Edit9.Text := '1';
    form3.Edit10.Text := '1003';
    form3.Edit11.Text := '40';
  end
  else if RadioButton4.Checked then
  begin
    form3.Edit8.Text := '중회의실 [ R1004 ]';
    form3.Edit13.Text := '80000';
    form3.Edit9.Text := '1';
    form3.Edit10.Text := '1004';
    form3.Edit11.Text := '40';
  end
  else
  begin
    form3.Edit8.Text := '대회의실 [ R1005 ]';
    form3.Edit13.Text := '100000';
    form3.Edit9.Text := '1';
    form3.Edit10.Text := '1005';
    form3.Edit11.Text := '40';
  end;
  form3.Edit21.text := ComboBox1.Items[ComboBox1.ItemIndex];
  form3.Edit16.text := edit2.Text;


  if CheckBox1.Checked then
  begin
    form3.Edit23.Text := form3.Edit23.Text + CheckBox1.Caption + ', ';
    a:=strtoint(form3.Edit15.Text);
    b:=10000;
    sum := a + b;
    form3.Edit15.Text := inttostr(sum);
    a:=0;
    b:=0;
    Sum :=0;
  end;
  if CheckBox2.Checked then
  begin
    form3.Edit23.Text := form3.Edit23.Text + CheckBox2.Caption + ', ' ;
    a:=strtoint(form3.Edit15.Text);
    b:=15000;
    sum := a + b;
    form3.Edit15.Text := inttostr(sum);
    a:=0;
    b:=0;
    Sum :=0;
  end;
  if CheckBox3.Checked then
  begin
    form3.Edit23.Text := form3.Edit23.Text + CheckBox3.Caption + ', ';
    a:=strtoint(form3.Edit15.Text);
    b:=20000;
    sum := a + b;
    form3.Edit15.Text := inttostr(sum);
    a:=0;
    b:=0;
    Sum :=0;
  end;


  c:=strtoint(Form3.edit13.text);
  d:=strtoint(Form3.edit15.text);
  sum := c + d;
  Form3.edit20.text := inttostr(sum);
end;

procedure TMain_Form.Button2Click(Sender: TObject);
begin
  Main_Form.Close;
end;

procedure TMain_Form.Calendar1Change(Sender: TObject);
begin
  SpinEdit1.Text := IntToStr(Calendar1.Year);
  YEARLabel.Caption := IntToStr(Calendar1.Year);
  MonthLabel.Caption := IntToStr(Calendar1.Month);
end;

procedure TMain_Form.Calendar1Click(Sender: TObject);
var
  code: string;
  a, b, c: integer;
begin
  SpinEdit1.Visible := false;
  // Edit1.Text := Form2.StrDate;
  a := Calendar1.Year;
  b := Calendar1.Month;
  c := Calendar1.Day;
  if c >10 then
    Edit1.Text := IntToStr(a) + '-0' + IntToStr(b) + '-' + IntToStr(c)
  else Edit1.Text := IntToStr(a) + '-0' + IntToStr(b) + '-0' + IntToStr(c);
  code := '1001';
  if demo.Res_Search(Edit1.Text, code) = 0 then
  begin
    RadioButton1.Caption := '예약가능';
    RadioButton1.Enabled := true;
  end
  else
  begin
    RadioButton1.Caption := '에약불가';
    RadioButton1.Enabled := false;
  end;
  code := '1002';
  if demo.Res_Search(Edit1.Text, code) = 0 then
  begin
    RadioButton2.Caption := '예약가능';
    RadioButton2.Enabled := true;
  end
  else
  begin
    RadioButton2.Caption := '에약불가';
    RadioButton2.Enabled := false;
  end;
  code := '1003';
  if demo.Res_Search(Edit1.Text, code) = 0 then
  begin
    RadioButton3.Caption := '예약가능';
    RadioButton3.Enabled := true;
  end
  else
  begin
    RadioButton3.Caption := '에약불가';
    RadioButton3.Enabled := false;
  end;
  code := '1004';
  if demo.Res_Search(Edit1.Text, code) = 0 then
  begin
    RadioButton4.Caption := '예약가능';
    RadioButton4.Enabled := true;
  end
  else
  begin
    RadioButton4.Caption := '에약불가';
    RadioButton4.Enabled := false;
  end;
  code := '1005';
  if demo.Res_Search(Edit1.Text, code) = 0 then
  begin
    RadioButton5.Caption := '예약가능';
    RadioButton5.Enabled := true;
  end
  else
  begin
    RadioButton5.Caption := '에약불가';
    RadioButton5.Enabled := false;
  end;
end;

procedure TMain_Form.Calendar1DblClick(Sender: TObject);
begin
  SelDate := Calendar1.CalendarDate;

  SpinEdit1.Visible := false;
  Edit1.Text := Main_Form.StrDate;
end;

procedure TMain_Form.CancelBTNClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

{
  procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
  begin
  Action := cafree;
  end;
}
procedure TMain_Form.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  RoomInfo_Form.Free;
  Action := caFree;
end;

procedure TMain_Form.FormCreate(Sender: TObject);
begin
  RoomInfo_Form := TRoomInfo_Form.Create(nil);
  RoomInfo_Form.Parent := Panel1;
  RoomInfo_Form.BorderStyle := bsNone;
  RoomInfo_Form.Align := alClient;
  RoomInfo_Form.Show;
end;

procedure TMain_Form.Label1Click(Sender: TObject);
begin
  SpinEdit1.Visible := true;
end;

procedure TMain_Form.NextMonthBtnClick(Sender: TObject);
begin
  SpinEdit1.Visible := false;
  Calendar1.NextMonth;
end;

procedure TMain_Form.NextYearClick(Sender: TObject);
begin
  SpinEdit1.Visible := false;
  Calendar1.NextYear;
end;

procedure TMain_Form.NOWBTNClick(Sender: TObject);
begin
  SpinEdit1.Visible := false;
  Calendar1.CalendarDate := Now;
end;

procedure TMain_Form.OKBTNClick(Sender: TObject);
begin

  ModalResult := mrok;
  Edit1.Text := Main_Form.StrDate;
  //EDIT1.Text := FormatDateTime('yyyy-mm-dd',Calendar1.CalendarDate);
end;

procedure TMain_Form.PrevMonthBtnClick(Sender: TObject);
begin
  SpinEdit1.Visible := false;
  Calendar1.PrevMonth;
end;

procedure TMain_Form.PrevYearClick(Sender: TObject);
begin
  SpinEdit1.Visible := false;
  Calendar1.PrevYear;
end;

end.
