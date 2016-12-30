unit WritingForm;

interface

uses
  TestClasses,
  WritingSQLUnit,
  QuestionSelectFrame,
  SoundFrame,
  ExampleFrame,
  QuestionInputFrame,
  ButtonsFrame,
  Generics.Collections,
  Forms, StdCtrls, Classes, Controls, ExtCtrls, Windows, Messages, SysUtils,
  Variants, Graphics, Dialogs, ComCtrls, DSPack, Buttons;

type
  TfrWriting = class(TForm)
    PanelQuestionInput: TPanel;
    frmQuestionSelect: TfrmQuestionSelect;
    frmSound: TfrmSound;
    frmQuestionInput: TfrmQuestionInput;
    frmButtons: TFrmButtons;
    Panel1: TPanel;
    MemoExample: TMemo;
    lbExample: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure frmButtonsbtQueAddClick(Sender: TObject);
    procedure frmButtonsbtModifyClick(Sender: TObject);
  private
    { Private declarations }
    FTest : TTest;
    FWritingData: TObjectList<TQuiz>;
    FWritingSQL: TWritingData;
    procedure On_QuestionSelect(Sender: TObject);
    procedure On_QuestionAdd(Sender: TObject);
    procedure On_QuestionInsert(var IsNull: Boolean);
    procedure On_QuestionUpdate(var IsNull: Boolean);
    procedure On_QuestionDelete(var IsNull: Boolean);
    procedure NextQuestionSetting;
    procedure Initialize;
  public
    procedure SetWritingIndex(Test: TTest);
    { Public declarations }
  end;

var
  frWriting: TfrWriting;

implementation

{$R *.dfm}

// Writing Form Defult 값 지정
procedure TfrWriting.SetWritingIndex(Test: TTest);
begin
  FTest := Test;
  FTest.idx := FTest.Idx;
  Initialize;
end;

// Writing Form 생성
procedure TfrWriting.FormCreate(Sender: TObject);
begin
  frmQuestionSelect.OnQuestionSelect := On_QuestionSelect;
  frmButtons.OnUpdate := On_QuestionUpdate;
  frmButtons.OnInsert := On_QuestionInsert;
  frmButtons.OnDelete := On_QuestionDelete;
  frmButtons.OnNewQuestion := On_QuestionAdd;
  FWritingSQL := TWritingData.Create;

  frmSound.Part := qpWriting;
end;


// Writing Form 소멸
procedure TfrWriting.FormDestroy(Sender: TObject);
begin
  FWritingData.Free;
  FWritingSQL.Free;
end;

procedure TfrWriting.frmButtonsbtModifyClick(Sender: TObject);
begin
  frmButtons.btModifyClick(Sender);

end;

procedure TfrWriting.frmButtonsbtQueAddClick(Sender: TObject);
begin
  frmButtons.btQueAddClick(Sender);

end;

procedure TfrWriting.Initialize;
begin
  FreeAndNil(FWritingData);
  FWritingData := FWritingSQL.Select(FTest.idx);
  frmQuestionInput.ClearInput;
  MemoExample.Clear;
  frmQuestionSelect.NumberListing(FWritingData);
  frmSound.Test := FTest;
end;

// 다음 문제 셋팅
procedure TfrWriting.NextQuestionSetting;
begin
  frmQuestionInput.QuestionSet(frmQuestionSelect.Numbering + 1);
  MemoExample.Clear;
  FrmButtons.InsertOn;
  frmQuestionSelect.SetIndex;
end;

// SpeakingSelect Frame에 값 입력
procedure TfrWriting.On_QuestionSelect(Sender: TObject);
begin
  frmButtons.QueAddOn;
  MemoExample.Text := TWriting(Sender).ExampleText;
  frmQuestionInput.Binding(TQuiz(Sender));
  frmSound.SelectedQuestion := TQuiz(Sender);
end;

// 문제추가 클릭
procedure TfrWriting.On_QuestionAdd(Sender: TObject);
begin
  if FTest.idx = 0 then
  begin
    ShowMessage('좌측메뉴를 먼저 선택해 주세요');
    exit;
  end;

  NextQuestionSetting;
end;

// 입력 클릭
procedure TfrWriting.On_QuestionInsert(var IsNull: Boolean);
var
  InsertWriting: TWriting;
begin
  IsNull := frmQuestionInput.IsNull;
  if IsNull then Exit;

  InsertWriting := TWriting.Create;
  try
    InsertWriting.Idx := FTest.idx;
    InsertWriting.QuizNumber := frmQuestionInput.Number;
    InsertWriting.Quiz := frmQuestionInput.Question;
    InsertWriting.ExampleText := MemoExample.Text;
    FWritingSQL.Insert(InsertWriting);
  finally
    InsertWriting.Free;
  end;

  Initialize;
  NextQuestionSetting;
end;

// 수정 클릭
procedure TfrWriting.On_QuestionUpdate(var IsNull: Boolean);
var
  ModifyWriting: TWriting;
begin
  IsNull := frmQuestionInput.IsNull;
  if IsNull then Exit;

  if messagedlg('정말 수정하시겠습니까?', mtWarning, mbYesNo,0)= mryes then
  begin
    ModifyWriting := TWriting.Create;
    try
      ModifyWriting.Idx := FTest.idx;
      ModifyWriting.QuizNumber := frmQuestionInput.Number;
      ModifyWriting.Quiz := frmQuestionInput.Question;
      ModifyWriting.ExampleText := MemoExample.Text;
      FWritingSQL.Update(ModifyWriting);
    finally
      ModifyWriting.Free;
    end;

    Initialize;
  end;
end;

// 삭제 클릭
procedure TfrWriting.On_QuestionDelete(var IsNull: Boolean);
begin
  IsNull := frmQuestionInput.IsNull;
  if IsNull then Exit;

  if MessageDlg('정말 삭제하시겠습니까?', mtWarning, mbYesNo,0)= mrYes then
  begin
    FWritingSQL.Delete(StrToInt(frmQuestionSelect.cbNumberSelect.Text), FTest.idx);
    Initialize;
  end;
end;

end.
