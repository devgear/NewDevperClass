unit MyPage;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Vcl.DBCtrls, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ComCtrls;

type
  TMyForm = class(TForm)
    MyPanel: TPanel;
    EditSTime: TEdit;
    DataSource_Lib: TDataSource;
    qryRentCheck: TFDQuery;
    Button1: TButton;
    LibNameCombo: TDBLookupComboBox;
    RPickDate: TDateTimePicker;
    EditETime: TEdit;
    EditSeatNum: TEdit;
    DataSource_rent: TDataSource;
    qryUserCheck: TFDQuery;
    DataSource_User: TDataSource;
    Edit4: TEdit;
    qryLib: TFDQuery;
    qryLibCheck: TFDQuery;
    Edit5: TEdit;
    PanelMenu: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    PanelReserve: TPanel;
    Label4: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    procedure Button1Click(Sender: TObject);
    function UserCheck(AUserID: string): Boolean;
    function LibCheck(ALibName: string): Boolean;
    function RentCheck(ALibSeq: integer; ARentDate: tdate; AUserseq: integer): Boolean;
    procedure PutInform(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    myUserSeq: integer;
    myRentSTime: TDateTime;
    myRentETime: TDateTime;
    myRentSeatNum: integer;
    myLibSeq: integer;
    RMYID: string;
  end;

var
  MyForm: TMyForm;

implementation

{$R *.dfm}

uses DataAccessModule, Main;

procedure TMyForm.Button1Click(Sender: TObject); // userSeq, libseq 만들어오기
var
  RLib: string;
begin
  RMYID := MainForm.MyID.Caption;
  RLib := LibNameCombo.Text;

  if MyForm.UserCheck(RMYID) then
  begin
    Edit4.Text := inttostr(myUserSeq);
  end;

  if MyForm.LibCheck(RLib) then
  begin
    Edit5.Text := inttostr(myLibSeq);
  end;

  MyForm.PutInform(self);

end;

procedure TMyForm.PutInform(Sender: TObject); // 정보 뿌려주는 버튼
var
  Rdate: tdate;
  RLib: string;
  Rlibseq: integer;
begin
  Rdate := RPickDate.Date;
  Rlibseq := strtoint(Edit5.Text);
  RLib := LibNameCombo.Text;

  if MyForm.RentCheck(Rlibseq, Rdate, myUserSeq) then
  begin
    Edit4.Text := inttostr(myUserSeq);
    EditSTime.Text := TimeToStr(myRentSTime);
    EditETime.Text := TimeToStr(myRentETime);
    EditSeatNum.Text := inttostr(myRentSeatNum);

  end
end;

function TMyForm.RentCheck(ALibSeq: integer; ARentDate: tdate; AUserseq: integer): Boolean; // 예약정보체크
begin
  qryRentCheck.Close;
  qryRentCheck.SQL.Text := 'SELECT * FROM RENT WHERE LIB_SEQ = :LIBSEQ AND RENT_DATE = :DATE AND USER_SEQ = :USERSEQ';
  qryRentCheck.ParamByName('LIBSEQ').AsInteger := ALibSeq;
  qryRentCheck.ParamByName('DATE').AsDate := ARentDate;
  qryRentCheck.ParamByName('USERSEQ').AsInteger := AUserseq;
  qryRentCheck.Open;

  if (qryRentCheck.RecordCount > 0) then
  begin
    myRentSTime := qryRentCheck.FieldByName('Rent_STime').AsDateTime;
    myRentETime := qryRentCheck.FieldByName('Rent_ETime').AsDateTime;
    myRentSeatNum := qryRentCheck.FieldByName('Rent_SEATNUM').AsInteger;
    Result := True;
  end
  else
  begin
    ShowMessage('예약정보가 없습니다.');
  end;

end;

function TMyForm.UserCheck(AUserID: string): Boolean; // 해당 User_Seq 찾기(id 통해서)
begin
  qryUserCheck.Close;
  qryUserCheck.SQL.Text := 'SELECT * FROM USERS WHERE USER_ID = :USERID';
  qryUserCheck.ParamByName('USERID').AsString := AUserID;
  qryUserCheck.Open;

  if (qryUserCheck.RecordCount > 0) then
  begin
    myUserSeq := qryUserCheck.FieldByName('User_Seq').AsInteger;
    Result := True;
  end;
end;

function TMyForm.LibCheck(ALibName: string): Boolean; // 해당 Lib_Seq 찾기
begin
  qryLibCheck.Close;
  qryLibCheck.SQL.Text := 'SELECT LIB_SEQ FROM LIB WHERE LIBNAME = :LIBNAME';
  qryLibCheck.ParamByName('LIBNAME').AsString := ALibName;
  qryLibCheck.Open;

  if (qryUserCheck.RecordCount > 0) then
  begin
    myLibSeq := qryLibCheck.FieldByName('LIB_SEQ').AsInteger;
    Result := True;
  end;
end;

end.
