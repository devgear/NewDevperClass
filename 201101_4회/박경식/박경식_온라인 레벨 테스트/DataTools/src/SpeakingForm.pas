unit SpeakingForm;

interface

uses
  TestClasses,
  SpeakingSQLUnit,
  QuestionSelectFrame,
  SoundFrame,
  QuestionInputFrame,
  ButtonsFrame,
  Generics.Collections,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, DSPack, Buttons;

type
  TfrSpeaking = class(TForm)
    PanelBottom: TPanel;
    frmQuestionSelect: TfrmQuestionSelect;
    frmQuestionInput: TfrmQuestionInput;
    frmSound: TfrmSound;
    FrmButtons: TFrmButtons;
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FTest : TTest;
    FSpeakingData: TObjectList<TQuiz>;
    FSpeakingSQL : TSpeakingData;
    procedure On_QuestionSelect(Sender: TObject);
    procedure On_QuestionAdd(Sender: TObject);
    procedure On_QuestionInsert(var IsNull: Boolean);
    procedure On_QuestionUpdate(var IsNull: Boolean);
    procedure On_QuestionDelete(var IsNull: Boolean);
    procedure NextQuestionSetting;
    procedure Initialize;
  public
    procedure SetSpeakingIndex(Test: TTest);
  end;

var
  frSpeaking: TfrSpeaking;

implementation

{$R *.dfm}

// Speaking Form 생성
procedure TfrSpeaking.FormCreate(Sender: TObject);
begin
  frmQuestionSelect.OnQuestionSelect := On_QuestionSelect;
  frmButtons.OnUpdate := On_QuestionUpdate;
  frmButtons.OnInsert := On_QuestionInsert;
  frmButtons.OnDelete := On_QuestionDelete;
  frmButtons.OnNewQuestion := On_QuestionAdd;
  FSpeakingSQL := TSpeakingData.Create;

  frmSound.Part := qpSpeaking;
end;

// Speaking Form 소멸
procedure TfrSpeaking.FormDestroy(Sender: TObject);
begin
  FSpeakingData.Free;
  FSpeakingSQL.Free;
end;

// FTestIndex 값 지정
procedure TfrSpeaking.SetSpeakingIndex(Test: TTest);
begin
  FTest := Test;
  Initialize;
end;

// Speaking Form Defult 값 지정
procedure TfrSpeaking.Initialize;
begin
  FreeAndNil(FSpeakingData);
  FSpeakingData := FSpeakingSQL.Select(FTest.Idx);
  frmQuestionInput.ClearInput;
  frmQuestionSelect.NumberListing(FSpeakingData);
  frmSound.Test := FTest;
end;

// 다음 문제 셋팅
procedure TfrSpeaking.NextQuestionSetting;
begin
  frmQuestionInput.QuestionSet(frmQuestionSelect.Numbering + 1);
  FrmButtons.InsertOn;
  frmQuestionSelect.SetIndex;
end;

// SpeakingSelect Frame에 값 입력
procedure TfrSpeaking.On_QuestionSelect(Sender: TObject);
begin
  FrmButtons.QueAddOn;
  frmQuestionInput.Binding(TQuiz(Sender));
  frmSound.SelectedQuestion := TQuiz(Sender);
end;

// 문제추가 클릭
procedure TfrSpeaking.On_QuestionAdd(Sender: TObject);
begin
  if FTest.Idx = 0 then
  begin
    ShowMessage('좌측메뉴를 먼저 선택해 주세요');
    exit;
  end;

  NextQuestionSetting;
end;

// 입력 클릭
procedure TfrSpeaking.On_QuestionInsert(var IsNull: Boolean);
var
  InsertSpeaking: TSpeaking;
begin
  IsNull := frmQuestionInput.IsNull;
  if IsNull then Exit;

  InsertSpeaking := TSpeaking.Create;
  try
    InsertSpeaking.Idx := FTest.Idx;
    InsertSpeaking.QuizNumber := frmQuestionInput.Number;
    InsertSpeaking.Quiz := frmQuestionInput.Question;
    InsertSpeaking.ResponseTime := 300;
    FSpeakingSQL.Insert(InsertSpeaking);
  finally
    InsertSpeaking.Free;
  end;
  Initialize;
  NextQuestionSetting;
end;

// 수정 클릭
procedure TfrSpeaking.On_QuestionUpdate(var IsNull: Boolean);
var
  UpdateSpeaking: TSpeaking;
begin
  IsNull := frmQuestionInput.IsNull;
  if IsNull then Exit;

  if messagedlg('정말 수정하시겠습니까?', mtWarning, mbYesNo,0)= mryes then
  begin
    UpdateSpeaking := TSpeaking.Create;
    try
      UpdateSpeaking.Idx := FTest.Idx;
      UpdateSpeaking.QuizNumber := frmQuestionInput.Number;
      UpdateSpeaking.Quiz := frmQuestionInput.Question;
      UpdateSpeaking.ResponseTime := 300;
      FSpeakingSQL.Update(UpdateSpeaking);
    finally
      UpdateSpeaking.Free;
    end;
    Initialize;
  end;
end;

// 삭제 클릭
procedure TfrSpeaking.On_QuestionDelete(var IsNull: Boolean);
begin
  IsNull := frmQuestionInput.IsNull;
  if IsNull then Exit;

  if MessageDlg('정말 삭제하시겠습니까?', mtWarning, mbYesNo,0)= mrYes then
  begin
    FSpeakingSQL.Delete(StrToInt(frmQuestionSelect.cbNumberSelect.Text), FTest.Idx);
    Initialize;
  end;
end;

end.
