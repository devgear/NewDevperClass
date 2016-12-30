unit UWindowReservationForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.ListBox,
  FMX.Layouts, FMX.ScrollBox, FMX.Memo, FMX.StdCtrls, FMX.Controls.Presentation,
  FMX.Edit, System.Rtti, System.Bindings.Outputs, FMX.Bind.Editors,
  Data.Bind.EngExt, FMX.Bind.DBEngExt, Data.Bind.Components, UWindowDMForm,
  Data.Bind.DBScope, FMX.Effects;

type
  TWindowReservationForm = class(TForm)
    Panel1: TPanel;
    ToolBar1: TToolBar;
    LbReservation: TLabel;
    Memo1: TMemo;
    ListBox1: TListBox;
    ListBoxItem1: TListBoxItem;
    ListBoxItem2: TListBoxItem;
    ListBoxItem3: TListBoxItem;
    ListBoxItem4: TListBoxItem;
    ListBoxItem5: TListBoxItem;
    ListBoxItem6: TListBoxItem;
    ListBoxItem7: TListBoxItem;
    eR_Date: TEdit;
    eR_Time: TEdit;
    eR_Name: TEdit;
    eR_Phone: TEdit;
    eR_Memo: TEdit;
    ListBoxItem8: TListBoxItem;
    LbTotalCost: TLabel;
    CbR_Number: TComboBox;
    CbR_Resvp: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    BindingsList1: TBindingsList;
    CbReservation: TCornerButton;
    CbCancel: TCornerButton;
    BindSourceDB1: TBindSourceDB;
    BindSourceDB2: TBindSourceDB;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    LinkControlToField5: TLinkControlToField;
    LinkControlToField1: TLinkControlToField;
    Panel2: TPanel;
    Label1: TLabel;
    Memo2: TMemo;
    Panel3: TPanel;
    Label4: TLabel;
    Memo3: TMemo;
    BevelEffect1: TBevelEffect;
    StyleBook1: TStyleBook;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CbReservationClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CbR_ResvpChange(Sender: TObject);
    procedure CbR_NumberChange(Sender: TObject);
    procedure CbCancelClick(Sender: TObject);
  private
    { Private declarations }
    FTotalCost: Integer;
  public
    { Public declarations }
    procedure Calc_Price();
    procedure SetInitData(const AClassNum: Integer; const ADate: TDatetime; const ATime: string);
  end;

var
  WindowReservationForm: TWindowReservationForm;

implementation

{$R *.fmx}

uses UWindowMainForm;

procedure TWindowReservationForm.Calc_Price;
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
  {
    if CbR_Number.ItemIndex = 0 then
    begin
    LbTotalCost.Text := inttostr(55000 * (CbR_Resvp.ItemIndex + 1)) + '원';
    end;
    if CbR_Number.ItemIndex = 1 then
    begin
    LbTotalCost.Text := inttostr(110000 * (CbR_Resvp.ItemIndex + 1)) + '원';
    end;
    if CbR_Number.ItemIndex = 2 then
    begin
    LbTotalCost.Text := inttostr(130000 * (CbR_Resvp.ItemIndex + 1)) + '원';
    end;
    if CbR_Number.ItemIndex = 3 then
    begin
    LbTotalCost.Text := inttostr(200000 * (CbR_Resvp.ItemIndex + 1)) + '원';
    end;
  }
end;

procedure TWindowReservationForm.CbCancelClick(Sender: TObject);
begin
  DataModule1.CdsReservationInfo.Cancel;
  WindowReservationForm.Close;
end;

procedure TWindowReservationForm.CbReservationClick(Sender: TObject);
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
  DataModule1.CdsReservationInfo.Refresh;
  ShowMessage('             ♥예약 해 주셔서 감사합니다.(o^▽^o)♪♥'
    +#13+'1 회 강습 신청 후 3 회, 5 회로 연장하실 때는 차액만 지불하시면 됩니다.'
    +#13+'예약 후입금하셔야 예약완료 됩니다.'
    +#13+'3 회 이상 강습 받으시는 분은 원하는 날짜 원하는 시간에 강습 가능합니다.'
    +#13+'강습 시 모든 렌탈 비용은 강습비에 포함되어 있습니다.'
    +#13+'10인 이상 단체 강습은 예약 후 전화 문의 주세요. (Tel. 051-701-4851)'
    +#13+'     = 입금 계좌(IBK 기업은행) : 051-701-4851 / 예금주: SURF =');

  Close;
end;

procedure TWindowReservationForm.CbR_NumberChange(Sender: TObject);
begin
  Calc_Price;
end;

procedure TWindowReservationForm.CbR_ResvpChange(Sender: TObject);
begin
  Calc_Price;
end;

procedure TWindowReservationForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  // Action :=CaFree;
  DataModule1.CdsReservationInfo.Cancel;
end;

procedure TWindowReservationForm.FormCreate(Sender: TObject);
begin
  DataModule1.CdsReservationInfo.Insert;
  Calc_Price;
  // LbTotalCost.Text := '55,000 원';
  // Calc_Price;
  { if CbR_Number.ItemIndex = 0 then
    begin
    LbTotalCost.Text := inttostr(55000 * (CbR_Resvp.ItemIndex + 1)) + '원';
    end; }
end;

procedure TWindowReservationForm.SetInitData(const AClassNum: Integer; const ADate: TDatetime;
  const ATime: string);
begin
  DataModule1.CdsReservationInfo.FieldByName('C_Num').AsInteger := AClassNum;
  DataModule1.CdsReservationInfo.FieldByName('R_DATE').AsDateTime := ADate;
  DataModule1.CdsReservationInfo.FieldByName('R_TIME').AsString := ATime;
  // DataModule1.CdsReservationInfo.FieldByName('R_TotalClassCost').AsInteger := 55000;
end;

end.
