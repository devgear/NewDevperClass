unit DAOResult;

interface

uses
  TypInfo,
  DataAccessObjects, LTClasses;

type
  TDAOResult = class(TDAOBase)
  private
    FLevelTestResultIdx: integer;
    procedure SetLevelTestResultIdx(UserID: string; TestIndex: integer);
  public
    procedure InsertUserTestResult(TestResult: TTestResult);
    procedure InsertUserTestResultDetail(TestResultDetail: TTestResultDetail);
    // mb_id, test_idx, start_time, end_time, mark
    procedure UpdateUserTestResult(TestResult: TTestResult);
    // right, wrong, score
    // procedure UpdateUserScoreResult;
  end;

implementation

{ TDAOResult }

procedure TDAOResult.SetLevelTestResultIdx(UserID: string; TestIndex: integer);
begin
  Query.CommandText :=
    'SELECT idx, mb_id, test_idx FROM leveltest_result ' +
    'WHERE mb_id = :mb_id and test_idx = :test_idx;';
  Query.Params.ParamByName('mb_id').AsString := UserID;
  Query.Params.ParamByName('test_idx').AsInteger := TestIndex;
  Query.Open;

  FLevelTestResultIdx := Query.FieldByName('idx').AsInteger;
end;

procedure TDAOResult.UpdateUserTestResult(TestResult: TTestResult);
begin

end;

procedure TDAOResult.InsertUserTestResult(TestResult: TTestResult);
begin
  Query.Close;
  Query.CommandText :=
   'INSERT INTO leveltest_result ' +
   '(mb_id, test_idx, mark) ' + 'VALUES (:mb_id, :test_idx, :mark);';
  //   todo : start_time, end_time
  Query.Params.ParamByName('mb_id').AsString := TestResult.UserID;
  Query.Params.ParamByName('test_idx').AsInteger := TestResult.TestIndex;
  Query.Params.ParamByName('mark').AsInteger := 0;
  Query.Execute;

//  SetLevelTestResultIdx(TestResult.UserID, TestResult.TestIndex);
  //   todo : 이미 시험을 본 적이 있는 테스트를 다시 시험 볼 경우 중복 체크
end;

procedure TDAOResult.InsertUserTestResultDetail
  (TestResultDetail: TTestResultDetail);
var
  Section: String;
begin
  Query.Close;
  Query.CommandText :=
    'INSERT INTO leveltest_result_detail ' +
    '(leveltest_result_idx, section, quiz_number, answer, point, correct) ' +
    'VALUES (:index, :section, :quiz_number, :answer, :point, :correct);';

  Section := GetEnumName(TypeInfo(TQuizKind), Ord(TestResultDetail.Section));
  Section := Copy(Section, 3, Length(Section) - 2);


  Query.Params.ParamByName('index').AsInteger:= FLevelTestResultIdx;
  Query.Params.ParamByName('section').AsString := Section;
  Query.Params.ParamByName('quiz_number').AsInteger :=
    TestResultDetail.QuizNumber;
  Query.Params.ParamByName('answer').AsString := TestResultDetail.Answer;
  Query.Params.ParamByName('point').AsInteger := TestResultDetail.Point;
  Query.Params.ParamByName('correct').AsInteger := TestResultDetail.Correct;
  Query.Execute;
end;

end.
