unit RentSeat;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, dateUtils,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls,
  Data.DB, Vcl.Mask, Vcl.ComCtrls, Vcl.Buttons, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids; // Vcl.Dialogs.MessageDlg

type
  TButtonInfo = record
    Num: Integer;
    Button: TButton;
  end;

  TSeatForm = class(TForm)
    SeatPanel: TPanel;
    desk1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    LibName: TDBEdit;

    LibSource: TDataSource;
    RentSource: TDataSource;
    Label3: TLabel;
    PickDate: TDateTimePicker;
    btnConfirm: TButton;
    SeatPanel2: TPanel;
    btnReserve: TButton;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    RentPanel: TPanel;
    STimeCombo: TComboBox;
    ETimeCombo: TComboBox;
    Label2: TLabel;
    Panel1: TPanel;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    UserSource: TDataSource;
    editNum: TEdit;
    Panel2: TPanel;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    DupSeatSource: TDataSource;
    Edit1: TEdit;
    qrySeat: TFDQuery;
    procedure SeatClick(Sender: TObject);
    procedure SeatNumCheck(ADATE: TDate; ALIBSEQ: Integer);
    procedure btnConfirmClick(Sender: TObject);
    procedure btnReserveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    mycheckNum: Integer;
    SNum: Integer;
    mysql: Integer;
    iNum: array of Integer;
    FButtonInfos: array [0 .. 17] of TButtonInfo;
    function DuplicatedSeat: Boolean;
    function Reservation: Boolean;
  end;

var
  SeatForm: TSeatForm;
  i: Integer;

implementation

{$R *.dfm}

uses DataAccessModule, FindLib, Mypage, Main, MyReserve;

procedure TSeatForm.SeatNumCheck(ADATE: TDate; ALIBSEQ: Integer); // 좌석번호체크 프로시저
var
  i, iMaxNum: Integer;
begin
  qrySeat.Close;
  qrySeat.SQL.Text := 'SELECT RENT_SEATNUM FROM RENT WHERE RENT_DATE = :DATE AND LIB_SEQ = :LIBSEQ';

  qrySeat.ParamByName('DATE').Asdate := ADATE;
  qrySeat.ParamByName('LIBSEQ').AsInteger := ALIBSEQ;
  qrySeat.Open;

  iMaxNum := 0;
  if (qrySeat.RecordCount > 0) then
  begin
    iMaxNum := qrySeat.RecordCount;
    SetLength(iNum, qrySeat.RecordCount);
    i := 0;

    qrySeat.First;
    while not qrySeat.Eof do
    begin
      if i < iMaxNum then
      begin
        iNum[i] := qrySeat.FieldByName('RENT_SEATNUM').AsInteger;
        inc(i);
        qrySeat.Next;
      end
      else
        break;
    end
  end;
end;

procedure TSeatForm.btnConfirmClick(Sender: TObject); // 조회버튼
var
  Nums: array of Integer;
  i: Integer;
  J: Integer;
  date: TDate;
  libseq: Integer;
  x: Integer;
  seatnum: Integer;
begin

  if PickDate.date > Now - 1 then
  begin
    SeatPanel2.Visible := True;
    SeatNumCheck(PickDate.date, strtoint(DBEdit1.Text));
    for i := 0 to Length(FButtonInfos) - 1 do
      FButtonInfos[i].Button.Enabled := True;

    for i := 0 to Length(iNum) - 1 do
    begin
      for J := 0 to Length(FButtonInfos) - 1 do
      begin
        if FButtonInfos[J].Num = iNum[i] then
        begin
          FButtonInfos[J].Button.Enabled := false;
          break;
        end;
      end;
    end;

  end
  else
  begin
    SeatPanel2.Visible := false;
    ShowMessage('오늘 날짜보다 이전입니다');
  end;


  // 나중에 아이디 하나당 한날짜만 예약하도록 할 것!!!!!!!!!!!!

end;

procedure TSeatForm.btnReserveClick(Sender: TObject); // 예약버튼

begin
  DuplicatedSeat;

  if not Assigned(MyReserveForm) then
    MyReserveForm := TMyReserveForm.Create(Self);
  MyReserveForm.Parent := MainForm.MainPanel;
  MyReserveForm.BorderStyle := bsNone;
  MyReserveForm.Align := alClient;
  MyReserveForm.Show;
end;

procedure TSeatForm.FormCreate(Sender: TObject);
var
  date: TDate;
  libseq: Integer;
  seatnum: Integer;

begin
  date := PickDate.date;
  libseq := strtoint(DBEdit1.Text);
  DataAccess.CheckSeat(date, libseq);

  FButtonInfos[0].Num := 1;
  FButtonInfos[0].Button := Button1;

  FButtonInfos[1].Num := 2;
  FButtonInfos[1].Button := Button2;

  FButtonInfos[2].Num := 3;
  FButtonInfos[2].Button := Button3;

  FButtonInfos[3].Num := 4;
  FButtonInfos[3].Button := Button4;

  FButtonInfos[4].Num := 5;
  FButtonInfos[4].Button := Button5;

  FButtonInfos[5].Num := 6;
  FButtonInfos[5].Button := Button6;

  FButtonInfos[6].Num := 7;
  FButtonInfos[6].Button := Button7;

  FButtonInfos[7].Num := 8;
  FButtonInfos[7].Button := Button8;

  FButtonInfos[8].Num := 9;
  FButtonInfos[8].Button := Button9;

  FButtonInfos[9].Num := 10;
  FButtonInfos[9].Button := Button10;

  FButtonInfos[10].Num := 11;
  FButtonInfos[10].Button := Button11;

  FButtonInfos[11].Num := 12;
  FButtonInfos[11].Button := Button12;

  FButtonInfos[12].Num := 13;
  FButtonInfos[12].Button := Button13;

  FButtonInfos[13].Num := 14;
  FButtonInfos[13].Button := Button14;

  FButtonInfos[14].Num := 15;
  FButtonInfos[14].Button := Button15;

  FButtonInfos[15].Num := 16;
  FButtonInfos[15].Button := Button16;

  FButtonInfos[16].Num := 17;
  FButtonInfos[16].Button := Button17;

  FButtonInfos[17].Num := 18;
  FButtonInfos[17].Button := Button18;
end;

procedure TSeatForm.SeatClick(Sender: TObject); // 좌석번호 입력
begin
  SNum := strtoint((Sender as TButton).Caption);

  ShowMessage(inttostr(SNum));
  editNum.Text := inttostr(SNum);
end;

function TSeatForm.DuplicatedSeat: Boolean; // 예약하기
var
  seatnum: Integer;
  Pdate: TDate;
  Plibseq: Integer;

begin
  seatnum := SNum;

  Pdate := PickDate.date;
  Plibseq := strtoint(DBEdit1.Text);

  if DataAccess.DuplicatedNum(Pdate, Plibseq, seatnum) then
  begin
    ShowMessage('이미 예약된 자리입니다.');
    exit;
  end
  else
  begin
    ShowMessage('예약 가능합니다.');
    Reservation;
  end;
end;

function TSeatForm.Reservation: Boolean; // qryRent 에 예약정보 보내는 function
var
  UserSeq: Integer;
  libseq: Integer;
  RentDate: TDate;
  RentStime, RentETime: string;
  RentSeatNum: Integer;
begin
  DataAccess.qryRent.Append;

  UserSeq := DataAccess.myseq;
  libseq := FindForm.mylib;
  RentDate := PickDate.date;
  RentStime := STimeCombo.Text;
  RentETime := ETimeCombo.Text;
  RentSeatNum := SNum;

  DataAccess.qryRent.FieldByName('USer_Seq').AsInteger := UserSeq;
  DataAccess.qryRent.FieldByName('Lib_Seq').AsInteger := libseq;
  DataAccess.qryRent.FieldByName('Rent_Date').AsDateTime := RentDate;
  DataAccess.qryRent.FieldByName('Rent_STime').AsDateTime := strtotime(RentStime);
  DataAccess.qryRent.FieldByName('Rent_ETime').AsDateTime := strtotime(RentETime);
  DataAccess.qryRent.FieldByName('Rent_Seatnum').AsInteger := RentSeatNum;
  DataAccess.qryRent.FieldByName('Rent_YN').AsString := 'Y';
  DataAccess.qryRent.post;
  ShowMessage('예약완료');
end;

end.
