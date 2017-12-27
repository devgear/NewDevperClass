unit UReserve;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls, FMX.DateTimeCtrls, FMX.Edit, FMX.Objects,
  FMX.Controls.Presentation, FMX.Layouts, UClientClass, UDm, Data.DB, System.Rtti, System.Bindings.Outputs,
  FMX.Bind.Editors, Data.Bind.EngExt, FMX.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope,
  FMX.ListBox;

type
  TButtonInfo = record
    Num: Integer;
    Button: TButton;
  end;

  TReserveForm = class(TForm)
    MainLayout: TLayout;
    MainPanel: TPanel;
    Rectangle2: TRectangle;
    LibMenu2: TRectangle;
    btnFind2: TButton;
    Text4: TText;
    EditLibName: TEdit;
    PickDate: TDateEdit;
    DESK1: TRectangle;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    DESK2: TRectangle;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    DESK3: TRectangle;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    DESK4: TRectangle;
    Button19: TButton;
    Button20: TButton;
    Button21: TButton;
    Button22: TButton;
    Button23: TButton;
    Button24: TButton;
    RentBox: TRectangle;
    Button25: TButton;
    txtSNum: TText;
    EditSeatNum: TEdit;
    txtTime: TText;
    ToolBar6: TToolBar;
    Rectangle1: TRectangle;
    Text14: TText;
    masterbutton: TButton;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    BindSourceDB2: TBindSourceDB;
    EditLibseq: TEdit;
    LinkControlToField2: TLinkControlToField;
    EditUserSeq: TEdit;
    BindSourceDB3: TBindSourceDB;
    LinkControlToField3: TLinkControlToField;
    STimeCombo: TComboBox;
    ETimeCombo: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure btnConfirmClick(Sender: TObject);
    procedure SeatNumCheck(ADATE: TDate; ALIBSEQ: Integer);
    procedure SeatClick(Sender: TObject);
    procedure ReserveClick(Sender: TObject); // 좌석번호체크 프로시저
    function DuplicatedSeat: Boolean; // 좌석 체크
    function Reservation: Boolean; // 예약하기
    procedure closeclick(Sender: TObject); // qryRent 에 예약정보 보내는 function
  private
    { Private declarations }
  public
    { Public declarations }
    SNum: Integer;
    FButtonInfos: array [0 .. 17] of TButtonInfo;
    iNum: array of Integer;
  end;

var
  ReserveForm: TReserveForm;

implementation

{$R *.fmx}
{$R *.LgXhdpiPh.fmx ANDROID}

uses UMypage;

procedure TReserveForm.btnConfirmClick(Sender: TObject); // 조회버튼
var
  Nums: array of Integer;
  i: Integer;
  J: Integer;
  date: TDate;
  libseq: Integer;
  x: Integer;
  seatnum: Integer;
begin

  if PickDate.date < Now - 1 then
  begin
    ShowMessage('이전날짜는 예약이 안됩니다.');
  end;

  SeatNumCheck(PickDate.date, strtoint(EditLibseq.Text));
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

  // 나중에 아이디 하나당 한날짜만 예약하도록 할 것!!!!!!!!!!!!

end;

//
procedure TReserveForm.SeatNumCheck(ADATE: TDate; ALIBSEQ: Integer); // 좌석번호체크 프로시저
var
  i, iMaxNum: Integer;
begin
  dm.Cl_qrySeat.Close;
  dm.Cl_qrySeat.ParamByName('DATE').AsDate := ADATE;
  dm.Cl_qrySeat.ParamByName('LIBSEQ').AsInteger := ALIBSEQ;
  dm.Cl_qrySeat.Open;

  iMaxNum := 0;
  if (dm.Cl_qrySeat.RecordCount > 0) then
  begin
    iMaxNum := dm.Cl_qrySeat.RecordCount;
    SetLength(iNum, dm.Cl_qrySeat.RecordCount);
    i := 0;

    dm.Cl_qrySeat.First;
    while not dm.Cl_qrySeat.Eof do
    begin
      if i < iMaxNum then
      begin
        iNum[i] := dm.Cl_qrySeat.FieldByName('RENT_SEATNUM').AsInteger;
        inc(i);
        dm.Cl_qrySeat.Next;
      end
      else
        break;
    end
  end;
end;

procedure TReserveForm.SeatClick(Sender: TObject); // 클릭한 좌석번호 확인
begin
  SNum := strtoint((Sender as TButton).Text);

  ShowMessage(inttostr(SNum));
  EditSeatNum.Text := inttostr(SNum);
end;

procedure TReserveForm.ReserveClick(Sender: TObject); // 예약버튼
begin
  if PickDate.date < Now then
  begin
    ShowMessage('이전날짜는 예약이 안됩니다.');
  end
  else
  begin
    if (STimeCombo.ItemIndex) or (ETimeCombo.ItemIndex) = -1 then
    begin
      ShowMessage('시간을 입력하세요');
      Exit;
    end
    else
    begin
      DuplicatedSeat;
    end;
  end;

end;

procedure TReserveForm.closeclick(Sender: TObject);
begin
  Close;
end;

procedure TReserveForm.FormCreate(Sender: TObject);
var
  date: TDate;
  libseq: Integer;
  seatnum: Integer;

begin
  PickDate.date := Now;

  date := PickDate.date;
  libseq := strtoint(EditLibseq.Text);
  demo.CheckSeat(date, libseq);

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

function TReserveForm.DuplicatedSeat: Boolean; // 좌석 체크후  예약하기
var
  seatnum: Integer;
  Pdate: TDate;
  Plibseq: Integer;

begin
  seatnum := SNum;

  Pdate := PickDate.date;
  Plibseq := strtoint(EditLibseq.Text);

  if demo.DuplicatedNum(Pdate, Plibseq, seatnum) then
  begin
    ShowMessage('이미 예약된 자리입니다.');
    Exit;
  end
  else
  begin
    Reservation;
  end;
end;

function TReserveForm.Reservation: Boolean; // qryRent 에 예약정보 보내는 function
var
  UserSeq: Integer;
  libseq: Integer;
  RentDate: TDate;
  RentStime, RentETime: TTime;
  RentSeatNum: Integer;
begin
  dm.Cl_qryRent.Append;

  UserSeq := strtoint(EditUserSeq.Text);
  libseq := strtoint(EditLibseq.Text);
  RentDate := PickDate.date;
  RentStime := StrToTime(STimeCombo.Selected.Text); // EditSTIME.Time;
  RentETime := StrToTime(ETimeCombo.Selected.Text); // EditETIME.Time;
  RentSeatNum := SNum;

  dm.Cl_qryRent.FieldByName('USer_Seq').AsInteger := UserSeq;
  dm.Cl_qryRent.FieldByName('Lib_Seq').AsInteger := libseq;
  dm.Cl_qryRent.FieldByName('Rent_Date').AsDateTime := RentDate;
  dm.Cl_qryRent.FieldByName('Rent_STime').AsDateTime := RentStime;
  dm.Cl_qryRent.FieldByName('Rent_ETime').AsDateTime := RentETime;
  dm.Cl_qryRent.FieldByName('Rent_Seatnum').AsInteger := RentSeatNum;
  dm.Cl_qryRent.FieldByName('Rent_YN').AsString := 'Y';
  dm.Cl_qryRent.post;
  ShowMessage('예약완료');

  if dm.Cl_qryRent.ChangeCount > 0 then
  begin
    dm.Cl_qryRent.applyUpdates(0);

    begin
      if not Assigned(MyPageForm) then
        MyPageForm := TMyPageForm.Create(Self);
      MyPageForm.Show;
    end;
  end;
end;

end.
