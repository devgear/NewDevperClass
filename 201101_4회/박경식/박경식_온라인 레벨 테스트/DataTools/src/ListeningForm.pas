unit ListeningForm;

interface

uses
  QuestionInputFrame,
  QuestionABCDInputFrame,
  SoundFrame,
  QuestionSelectFrame,
  ListeningSQLUnit,
  TestClasses,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, DSPack, Buttons, Generics.Collections,
  ButtonsFrame;

type
  TfrListening = class(TForm)
    PanelBottom: TPanel;
    frmSound1: TfrmSound;
    frmQuestionSelect: TfrmQuestionSelect;
    frmQuestionInput: TfrmQuestionABCDInput;
    FrmButtons: TFrmButtons;
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure NextQuestionSetting;
    procedure FrmButtonsbtModifyClick(Sender: TObject);
    procedure FrmButtonsbtQueAddClick(Sender: TObject);
    procedure FrmButtonsbtInsertClick(Sender: TObject);
  private
    FTest : TTest;
    ListeningData: TObjectList<TQuiz>;
    procedure PrintListening(Sender: TObject);

    procedure on_QuestionSelect(Sender: TObject);
    procedure On_QuestionAdd(Sender: TObject);
    procedure On_QuestionInsert(var IsNull: Boolean);
    procedure On_QuestionUpdate(var IsNull: Boolean);
    procedure On_QuestionDelete(var IsNull: Boolean);
  public
    procedure DefListening(Test: TTest);
  end;

var
  frListening: TfrListening;

implementation

{$R *.dfm}

procedure TfrListening.NextQuestionSetting;
begin
  frmQuestionInput.ClearInput;
  frmQuestionInput.edNumber.Text := IntToStr(frmQuestionSelect.Numbering + 1);
  FrmButtons.InsertOn;
  frmQuestionSelect.cbNumberSelect.ItemIndex := -1;
end;

procedure TfrListening.On_QuestionAdd(Sender: TObject);
begin
  if FTest.Idx = 0 then
  begin
    ShowMessage('좌측메뉴를 먼저 선택해 주세요');
    exit;
  end;

  NextQuestionSetting;
end;

procedure TfrListening.On_QuestionDelete(var IsNull: Boolean);
var
  DeleteListening : TListening;
begin
  IsNull := frmQuestionInput.IsNull;
  if IsNull then exit;
  if messagedlg('정말 삭제하시겠습니까?', mtWarning, mbYesNo,0)= mryes then
  begin
    //  DeleteListeningData(StrToInt(frmQuestionSelect.cbNumberSelect.Text));
      DeleteListening := frmQuestionInput.GetData;
    try
      DeleteListening.Idx := FTest.Idx; // ListeningData.IndexOf; // level 을 갖고 있어야 함
      // todo : 값이 올바르게 들어갔는지 체크 할 것.
      DeleteListeningData(DeleteListening);
    finally
      DeleteListening.Free;
    end;
  end;

  DefListening(FTest);
end;

procedure TfrListening.On_QuestionInsert(var IsNull: Boolean);
var
  InsertListening: TListening;
begin
  IsNull := frmQuestionInput.IsNull;
  if IsNull then exit;

  if (frmQuestionInput.edNumber.Text = '') then
  begin
    ShowMessage('입력 정보가 부족합니다');
    exit;
  end;

  InsertListening := frmQuestionInput.GetData;
  try
    InsertListening.Idx := FTest.Idx; // ListeningData.IndexOf; // level 을 갖고 있어야 함

    // todo : 값이 올바르게 들어갔는지 체크 할 것.

    InsertListeningData(InsertListening);
  finally
    InsertListening.Free;
  end;

  DefListening(FTest);
  NextQuestionSetting;
end;

procedure TfrListening.DefListening(Test: TTest);
var
  I: Integer;
begin
  FTest := Test;

  ListeningData.Free;
  ListeningData := GetListeningData(Test.Idx);

  frmSound1.Test := FTest;

  frmQuestionSelect.cbNumberSelect.Clear;
  frmQuestionInput.ClearInput;

  frmQuestionSelect.NumberListing(ListeningData);

  if ListeningData.Count > 0 then
  begin
    frmQuestionSelect.cbNumberSelect.ItemIndex := 0;
    frmQuestionInput.cbAnswer.ItemIndex := 0;
    PrintListening(ListeningData.Items[0]);
  end;
end;

procedure TfrListening.FormCreate(Sender: TObject);
begin
  frmQuestionSelect.OnQuestionSelect := On_QuestionSelect;
  frmButtons.OnUpdate := On_QuestionUpdate;
  frmButtons.OnInsert := On_QuestionInsert;
  frmButtons.OnDelete := On_QuestionDelete;
  frmButtons.OnNewQuestion := On_QuestionAdd;
  frmSound1.Part := qpListening;
end;

procedure TfrListening.FormDestroy(Sender: TObject);
begin
  ListeningData.Free;
end;
procedure TfrListening.FrmButtonsbtInsertClick(Sender: TObject);
begin
  frmButtons.btInsertClick(Sender);

end;

procedure TfrListening.FrmButtonsbtModifyClick(Sender: TObject);
begin
  FrmButtons.btModifyClick(Sender);
end;

procedure TfrListening.FrmButtonsbtQueAddClick(Sender: TObject);
begin
  FrmButtons.btQueAddClick(Sender);
end;

procedure TfrListening.on_QuestionSelect(Sender: TObject);
begin
  FrmButtons.QueAddOn;
  PrintListening(TListening(Sender));
  frmSound1.SelectedQuestion := TQuiz(Sender);
end;

procedure TfrListening.On_QuestionUpdate(var IsNull: Boolean);
var
  ModifyListening: TListening;
  Idx: Integer;
begin
  IsNull := frmQuestionInput.IsNull;
  if IsNull then exit;
  if messagedlg('정말 수정하시겠습니까?', mtWarning, mbYesNo,0)= mryes then
  begin
  //  Idx := frmQuestionInput.Number;
    ModifyListening := frmQuestionInput.GetData;
    try
      ModifyListening.Idx := FTest.Idx; //
      // todo : 값이 올바르게 들어갔는지 체크 할 것.
      ModifyListeningData(ModifyListening);
    finally
      ModifyListening.Free;
    end;
  end;
  DefListening(FTest);
end;

procedure TfrListening.PrintListening(Sender: TObject);
begin
  frmQuestionInput.Binding(Sender as TListening);
end;

end.
