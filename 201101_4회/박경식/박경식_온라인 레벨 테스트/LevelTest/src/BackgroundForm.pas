unit BackgroundForm;

interface

uses
  ListeningFrame,
//  SpeakingFrame,
  ReadingFrame,
//  WritingFrame,
  LTClasses,
  ResultGuideForm,
  DAOResult,
  Global,
  Generics.Collections,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TfrBackground = class(TLTForm)
    QuestionBoard: TPanel;
    btNext: TButton;
    fmReading: TfmReading;
    fmListening: TfmListening;
    procedure btNextClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    FTestContainer: TTest;
    FTestResult: TTestResult;
    FTestResultDetailList: TObjectList<TTestResultDetail>;
    FKind: TQuizKind;
    procedure SetQuestion;
    procedure ShowListening;
    procedure ShowSpeaking;
    procedure ShowReading;
    procedure ShowWriting;
    procedure CreateResultGuide;
    procedure SetTestResult;
    procedure SetTestResultDetail(Point: integer; Correct: string); overload;
    procedure SetTestResultDetail(TestResultDetail: TTestResultDetail);
      overload;
    procedure SetTestResultDetail(TestResultDetails: TList<TTestResultDetail>);
      overload;
  public
    { Public declarations }
    procedure SetTest(CopyTestContainer: TTest);
  end;

var
  frBackground: TfrBackground;

implementation

{$R *.dfm}

procedure TfrBackground.btNextClick(Sender: TObject);
begin
  case FKind of
    // todo : Speaking Answer üũ
    // qkSpeaking: fmSpeaking.Checkable(FTestContainer.GetCurrentQuiz);
    qkReading:
      SetTestResultDetail(fmReading.GetTestResultDetails);
    qkListening:
      SetTestResultDetail(fmListening.GetTestResultDetail);
//    qkWriting:
//      SetTestResultDetail(fmWriting.GetTestResultDetail);
  end;
  if FTestContainer.HasNextQuiz then
  begin
    FTestContainer.Next;
    SetQuestion;
  end
  else
  begin
    ShowMessage('Complete');
    SetTestResult;
    CreateResultGuide;
  end;
end;

procedure TfrBackground.ShowListening;
begin
  fmListening.BringToFront;
end;

procedure TfrBackground.ShowReading;
begin
  fmReading.BringToFront;
end;

procedure TfrBackground.CreateResultGuide;
begin
  frResultGuide := TfrResultGuide.Create(Self);
  frResultGuide.Parent := Application.MainForm;
  frResultGuide.Show;
end;

procedure TfrBackground.FormCreate(Sender: TObject);
begin
  FTestResultDetailList := TObjectList<TTestResultDetail>.Create;
end;

procedure TfrBackground.FormDestroy(Sender: TObject);
begin
  FTestResultDetailList.Free;
end;

procedure TfrBackground.SetTestResult;
var
  TestResultQuery: TDAOResult;
  I: integer;
begin
  FTestResult := TTestResult.Create;
  TestResultQuery := TDAOResult.Create;
  try
    FTestResult.UserID := gUser.UserID;
    FTestResult.TestIndex := FTestContainer.TestIndex;
    FTestResult.Mark := 1;

//    TestResultQuery.InsertUserTestResult(FTestResult);
//
//    for I := 0 to FTestResultDetailList.Count - 1 do
//    begin
//      TestResultQuery.InsertUserTestResultDetail
//        (FTestResultDetailList.Items[I]);
//    end;
//     SetTestScore(FTestResult);
    // todo : Score, Right, Wrong 파악은 어디서 ?

//      TestResultQuery.UpdateUserTestResult(FTestResult);
    // todo : Update 하여 Right, Wrong, Score 입력 해야 함.
  finally
    FTestResult.Free;
    TestResultQuery.Free;
  end;
end;

procedure TfrBackground.SetTestResultDetail
  (TestResultDetails: TList<TTestResultDetail>);
var
  I: integer;
begin
  for I := 0 to TestResultDetails.Count - 1 do
    FTestResultDetailList.Add(TestResultDetails.Items[I]);

  TestResultDetails.Free;
end;

procedure TfrBackground.SetTestResultDetail
  (TestResultDetail: TTestResultDetail);
begin
  FTestResultDetailList.Add(TestResultDetail);
end;

procedure TfrBackground.SetTestResultDetail(Point: integer; Correct: string);
var
  TestResultDetail: TTestResultDetail;
begin
  TestResultDetail := TTestResultDetail.Create;
  TestResultDetail.QuizNumber := FTestContainer.GetCurrentQuiz.QuizNumber;
  TestResultDetail.Answer := Correct;
  TestResultDetail.Point := Point;
  TestResultDetail.Section := FTestContainer.GetCurrentQuiz.Kind;
  FTestResultDetailList.Add(TestResultDetail);
end;

procedure TfrBackground.ShowSpeaking;
begin
//  fmSpeaking.BringToFront;
end;

procedure TfrBackground.ShowWriting;
begin
//  fmWriting.BringToFront;
end;

procedure TfrBackground.SetTest(CopyTestContainer: TTest);
begin
  FTestContainer := CopyTestContainer;
  SetQuestion;
end;

procedure TfrBackground.SetQuestion;
begin
  FKind := FTestContainer.GetCurrentQuiz.Kind;

  case FKind of
    qkListening:
      begin
        ShowListening;
        fmListening.Binding(FTestContainer.GetCurrentQuiz as TLRQuiz);
      end;
//    qkSpeaking:
//      begin
//        ShowSpeaking;
//        fmSpeaking.Binding(FTestContainer.GetCurrentQuiz);
//      end;
    qkReading:
      begin
        ShowReading;
        fmReading.Binding(FTestContainer.GetCurrentQuiz);
      end;
//    qkWriting:
//      begin
//        ShowWriting;
//        fmWriting.Binding(FTestContainer.GetCurrentQuiz as TWriting);
//      end;
  end;
end;

end.
