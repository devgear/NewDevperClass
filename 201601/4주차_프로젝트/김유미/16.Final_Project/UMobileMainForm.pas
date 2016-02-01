unit UMobileMainForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, System.Actions,
  FMX.ActnList, FMX.TabControl, FMX.ListBox, FMX.Layouts, FMX.MultiView,
  FMX.StdCtrls, FMX.Controls.Presentation, FMX.Effects, FMX.Objects,
  System.Rtti, FMX.DateTimeCtrls, FMX.Grid, UMobileDMForm, Data.Bind.EngExt,
  FMX.Bind.DBEngExt, FMX.Bind.Grid, System.Bindings.Outputs, FMX.Bind.Editors,
  Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope, FMX.Edit,
  FMX.ScrollBox, FMX.Memo, FMX.StdActns, FMX.PhoneDialer.Actions;

type
  TMobileMainForm = class(TForm)
    MultiView1: TMultiView;
    ListBox1: TListBox;
    LbiHome: TListBoxItem;
    LbiClassReservation: TListBoxItem;
    LbiReservCheck: TListBoxItem;
    LbghSurfMenew: TListBoxGroupHeader;
    ToolBar1: TToolBar;
    SpeedButton1: TSpeedButton;
    Image1: TImage;
    TabControl1: TTabControl;
    TbiHome: TTabItem;
    TbiClassReservation: TTabItem;
    TbiReservCheck: TTabItem;
    Label1: TLabel;
    Image7: TImage;
    BevelEffect1: TBevelEffect;
    Panel1: TPanel;
    DateEdit1: TDateEdit;
    Layout1: TLayout;
    Layout2: TLayout;
    Grid1: TGrid;
    cbReservation: TCornerButton;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    TbiMobileReservation: TTabItem;
    Panel2: TPanel;
    ListBox2: TListBox;
    ListBoxItem1: TListBoxItem;
    eR_Date: TEdit;
    ListBoxItem2: TListBoxItem;
    CbR_Number: TComboBox;
    ListBoxItem3: TListBoxItem;
    eR_Time: TEdit;
    ListBoxItem4: TListBoxItem;
    CbR_Resvp: TComboBox;
    ListBoxItem5: TListBoxItem;
    eR_Name: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    ListBoxItem6: TListBoxItem;
    eR_Phone: TEdit;
    ListBoxItem7: TListBoxItem;
    eR_Memo: TEdit;
    ListBoxItem8: TListBoxItem;
    LbTotalCost: TLabel;
    ActionList1: TActionList;
    ChangeTabAction1: TChangeTabAction;
    BindSourceDB2: TBindSourceDB;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    LinkControlToField5: TLinkControlToField;
    Reservation: TCornerButton;
    CbCancel: TCornerButton;
    Layout3: TLayout;
    Panel3: TPanel;
    GridReservCheck: TGrid;
    BindSourceDB3: TBindSourceDB;
    Panel4: TPanel;
    CbChange: TCornerButton;
    Cbreservdelet: TCornerButton;
    CbSave: TCornerButton;
    CbRefresh: TCornerButton;
    LinkGridToDataSourceBindSourceDB3: TLinkGridToDataSource;
    Panel5: TPanel;
    Image2: TImage;
    StyleBook1: TStyleBook;
    InnerGlowEffect1: TInnerGlowEffect;
    Memo1: TMemo;
    PhoneCallAction1: TPhoneCallAction;
    LbCall: TLabel;
    Memo2: TMemo;
    CbHomeClassReserv: TCornerButton;
    Image3: TImage;
    InnerGlowEffect2: TInnerGlowEffect;
    Layout4: TLayout;
    procedure FormCreate(Sender: TObject);
    procedure LbiHomeClick(Sender: TObject);
    procedure LbiReservCheckClick(Sender: TObject);
    procedure LbiClassReservationClick(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure cbReservationClick(Sender: TObject);
    procedure CbCancelClick(Sender: TObject);
    procedure ReservationClick(Sender: TObject);
    procedure CbR_ResvpChange(Sender: TObject);
    procedure CbR_NumberChange(Sender: TObject);
    procedure DateEdit1Change(Sender: TObject);
    procedure CbreservdeletClick(Sender: TObject);
    procedure CbChangeClick(Sender: TObject);
    procedure CbSaveClick(Sender: TObject);
    procedure CbRefreshClick(Sender: TObject);
    procedure CbHomeClassReservClick(Sender: TObject);
  private
    { Private declarations }
    FTotalCost: Integer;
  public
    { Public declarations }
    procedure Calc_Price();
    procedure SetInitData(const AClassNum: Integer; const ADate: TDatetime; const ATime: string);
  end;

var
  MobileMainForm: TMobileMainForm;

implementation

{$R *.fmx}

procedure TMobileMainForm.Calc_Price;
var
  Cost: Integer;
begin
  case CbR_Number.ItemIndex of
    0:
      Cost := 55000;
    1:
      Cost := 110000;
    2:
      Cost := 130000;
    3:
      Cost := 200000;
  end;

  FTotalCost := Cost * (CbR_Resvp.ItemIndex + 1);
  LbTotalCost.Text := Format('%d 원', [FTotalCost]);
end;

procedure TMobileMainForm.CbCancelClick(Sender: TObject);
begin
  DataModule1.CdsReservationInfo.Cancel;
  ChangeTabAction1.Tab := TbiClassReservation;
  ChangeTabAction1.ExecuteTarget(Nil);
end;

procedure TMobileMainForm.CbChangeClick(Sender: TObject);
begin
  DataModule1.CdsQueryResevClassInfo.Edit;
end;

procedure TMobileMainForm.CbHomeClassReservClick(Sender: TObject);
begin
  ChangeTabAction1.Tab := TbiClassReservation;
  ChangeTabAction1.ExecuteTarget(Nil);
  Label1.Text := '강습 예약';
  DataModule1.CdsReservationInfo.Cancel;
end;

procedure TMobileMainForm.CbRefreshClick(Sender: TObject);
begin
  DataModule1.CdsQueryResevClassInfo.Close;
  DataModule1.CdsQueryResevClassInfo.Open;
end;

procedure TMobileMainForm.cbReservationClick(Sender: TObject);
var
  ClassNum: Integer;
 Time : String;
begin
  ChangeTabAction1.Tab := TbiMobileReservation;
  ChangeTabAction1.ExecuteTarget(Nil);
  DataModule1.CdsReservationInfo.Insert;

  ClassNum := DataModule1.CdsQueryClassInfo.FieldByName('C_Num').AsInteger;
  Time := DataModule1.CdsQueryClassInfo.FieldByName('C_Time').AsString;
  SetInitData(ClassNum, DateEdit1.Date, Time);

  Calc_Price;
end;

procedure TMobileMainForm.CbreservdeletClick(Sender: TObject);
begin
  DataModule1.CdsQueryResevClassInfo.Delete;
  DataModule1.CdsQueryResevClassInfo.ApplyUpdates(-1);
  DataModule1.CdsQueryResevClassInfo.Refresh;
end;

procedure TMobileMainForm.CbR_NumberChange(Sender: TObject);
begin
  Calc_Price;
end;

procedure TMobileMainForm.CbR_ResvpChange(Sender: TObject);
begin
  Calc_Price;
end;

procedure TMobileMainForm.CbSaveClick(Sender: TObject);
begin
  DataModule1.CdsQueryResevClassInfo.Post;
  DataModule1.CdsQueryResevClassInfo.ApplyUpdates(-1);
end;

procedure TMobileMainForm.DateEdit1Change(Sender: TObject);
begin
  DataModule1.CdsQueryClassInfo.ParamByName('Date').AsDate := DateEdit1.Date;
  DataModule1.CdsQueryClassInfo.Open;
  DataModule1.CdsQueryClassInfo.Refresh;
end;

procedure TMobileMainForm.ReservationClick(Sender: TObject);
begin
  if CbR_Number.ItemIndex = -1 then
  begin
    ShowMessage('강습 횟수를 선택 해 주세요.');
    CbR_Number.SetFocus;
    Exit;
  end;

  if CbR_Resvp.ItemIndex = -1 then
  begin
    ShowMessage('강습 인원을 선택 해 주세요.');
    CbR_Resvp.SetFocus;
    Exit;
  end;

  if eR_Name.Text = '' then
  begin
    ShowMessage('예약자명을 기입 해 주세요.');
    eR_Name.SetFocus;
    Exit;
  end;

  if eR_Phone.Text = '' then
  begin
    ShowMessage('연락처를 기입 해 주세요.');
    eR_Phone.SetFocus;
    Exit;
  end;

  DataModule1.CdsReservationInfo.FieldByName('R_TotalClassCost').AsInteger :=
    FTotalCost;

  case CbR_Number.ItemIndex of
    0:
      DataModule1.CdsReservationInfo.FieldByName('R_ClassNumber')
        .AsInteger := 1;
    1:
      DataModule1.CdsReservationInfo.FieldByName('R_ClassNumber')
        .AsInteger := 2;
    2:
      DataModule1.CdsReservationInfo.FieldByName('R_ClassNumber')
        .AsInteger := 3;
    3:
      DataModule1.CdsReservationInfo.FieldByName('R_ClassNumber')
        .AsInteger := 5;
  end;

  DataModule1.CdsReservationInfo.FieldByName('R_ResvP').AsInteger :=
    CbR_Resvp.ItemIndex + 1;

  DataModule1.CdsReservationInfo.Post;
  DataModule1.CdsReservationInfo.ApplyUpdates(-1); // 서버에 반영
  // DataModule1.CdsReservationInfo.Refresh; // 서버와 동기화

  ShowMessage('             ♥예약 해 주셔서 감사합니다.(o^▽^o)♪♥' + #13 +
    '1 회 강습 신청 후 3 회, 5 회로 연장하실 때는 차액만 지불하시면 됩니다.' + #13 + '예약 후입금하셔야 예약완료 됩니다.'
    + #13 + '3 회 이상 강습 받으시는 분은 원하는 날짜 원하는 시간에 강습 가능합니다.' + #13 +
    '강습 시 모든 렌탈 비용은 강습비에 포함되어 있습니다.' + #13 +
    '10인 이상 단체 강습은 예약 후 전화 문의 주세요. (Tel. 051-701-4851)' + #13 +
    '     = 입금 계좌(IBK 기업은행) : 051-701-4851 / 예금주: SURF =');

  DataModule1.CdsReservationInfo.Refresh;
  ChangeTabAction1.Tab := TbiReservCheck;
  ChangeTabAction1.ExecuteTarget(Nil);
end;

procedure TMobileMainForm.FormCreate(Sender: TObject);
begin
  TabControl1.TabIndex := 0;
  DateEdit1.Date := Now;
end;

procedure TMobileMainForm.Image7Click(Sender: TObject);
begin
  ChangeTabAction1.Tab := TbiHome;
  ChangeTabAction1.ExecuteTarget(Nil);
  Label1.Text := 'WITH SURF';
  DataModule1.CdsReservationInfo.Cancel;
end;

procedure TMobileMainForm.LbiClassReservationClick(Sender: TObject);
begin
  ChangeTabAction1.Tab := TbiClassReservation;
  ChangeTabAction1.ExecuteTarget(Nil);
  Label1.Text := '강습 예약';
  DataModule1.CdsReservationInfo.Cancel;
end;

procedure TMobileMainForm.LbiHomeClick(Sender: TObject);
begin
  ChangeTabAction1.Tab := TbiHome;
  ChangeTabAction1.ExecuteTarget(Nil);
  Label1.Text := 'WITH SURF';
  DataModule1.CdsReservationInfo.Cancel;
end;

procedure TMobileMainForm.LbiReservCheckClick(Sender: TObject);
begin
  ChangeTabAction1.Tab := TbiReservCheck;
  ChangeTabAction1.ExecuteTarget(Nil);
  Label1.Text := '예약 조회';
  DataModule1.CdsReservationInfo.Cancel;
end;

procedure TMobileMainForm.SetInitData(const AClassNum: Integer; const ADate: TDatetime;
  const ATime: string);
begin
  DataModule1.CdsReservationInfo.FieldByName('C_Num').AsInteger := AClassNum;
  DataModule1.CdsReservationInfo.FieldByName('R_DATE').AsDateTime := ADate;
  DataModule1.CdsReservationInfo.FieldByName('R_TIME').AsString := ATime;
end;

end.
