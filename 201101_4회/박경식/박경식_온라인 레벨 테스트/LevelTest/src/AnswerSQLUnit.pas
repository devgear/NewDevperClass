unit AnswerSQLUnit;

interface

uses
  JoanModule,
  TestClasses,
  SysUtils, Generics.Collections, Classes, Contnrs;

procedure InsertAnswerData(AnswerData: TAnswer);
procedure ModifyAnswerData(AnswerData: TAnswer);
procedure DeleteAnswerData(AnswerData: TAnswer);
function GetAnswerData(TestIndex: integer): TObjectList<TAnswer>;

implementation


function GetAnswerData(TestIndex: integer): TObjectList<TAnswer>;
var
  answer: TAnswer;
begin
  Result := TObjectList<TAnswer>.Create;

  Joan.JoanQuery.SQL.Clear;
  Joan.JoanQuery.SQL.Text :=
    'SELECT t1.*, t2.* FROM ' +
    '(SELECT * FROM listening ' +
    ' WHERE test_idx = :idx) t1 ' +
    'LEFT JOIN quiz t2 ' +
    'ON t1.quiz_idx = t2.idx;';

  Joan.JoanQuery.ParamByName('idx').AsInteger := TestIndex;
  Joan.JoanQuery.Open;

  while not Joan.JoanQuery.Eof do
  begin
    begin
      answer := TAnswer.Create;
      answer.test_Idx := Joan.JoanQuery.FieldByName('test_idx').AsInteger;
      answer.Quiz_Idx := Joan.JoanQuery.FieldByName('quiz_idx').AsInteger;
      answer.Quiz_answer := Joan.JoanQuery.FieldByName('answer').AsInteger;
      answer.Quiz_number := Joan.JoanQuery.FieldByName('number').AsInteger;
//      answer.member_id := Joan.JoanQuery.FieldByName('member_id').Asstring;
//      answer.score := Joan.JoanQuery.FieldByName('score').Asinteger;
//      answer.Answer := Joan.JoanQuery.FieldByName('answer').Asstring;
      Result.Add(answer);
      Joan.JoanQuery.Next;
    end;
  end;
end;

procedure InsertAnswerData(AnswerData: TAnswer);
begin
  with Joan.JoanQuery do
  begin

    Close;
    SQL.Clear;
    SQL.Text :=
      'INSERT INTO answer (test_idx, quiz_idx, quiz_answer, answer, score, member_id, quiz_number) values ' +
      ' (:test_idx, :quiz_idx, :quiz_answer, :answer, :score, :member_id, :quiz_number)';
    ParamByName('test_idx').AsInteger := AnswerData.test_idx;
    ParamByName('quiz_idx').AsInteger := answerdata.quiz_idx;
    ParamByName('quiz_answer').AsInteger := AnswerData.quiz_answer;
    ParamByName('answer').AsInteger := AnswerData.answer;
    ParamByName('score').AsInteger := AnswerData.score;
    ParamByName('member_id').Asstring := AnswerData.member_id;
    ParamByName('quiz_number').AsInteger := AnswerData.quiz_number;
    ExecSQL();
  end;
end;

procedure ModifyAnswerData(AnswerData: TAnswer);
begin
  with Joan.JoanQuery do
  begin

      Close;
      SQL.Clear;
      SQL.Text := 'UPDATE answer  SET ' +
                  'test_idx =:test_idx, quiz_idx =:quiz_idx, quiz_answer =:quiz_answer ' +
                  'answer =:answer, score =:score, member_id =:member_id, quiz_number =:quiz_number ' +
                  'WHERE idx = :quizidx ';
      ParamByName('test_idx').AsInteger := AnswerData.test_idx;
      ParamByName('quiz_idx').AsInteger := answerdata.quiz_idx;
      ParamByName('quiz_answer').AsInteger := AnswerData.quiz_answer;
      ParamByName('answer').AsInteger := AnswerData.answer;
      ParamByName('score').AsInteger := AnswerData.score;
      ParamByName('member_id').Asstring := AnswerData.member_id;
      ParamByName('quiz_number').AsInteger := AnswerData.quiz_number;
      ExecSQL();
  end;
end;

procedure DeleteAnswerData(AnswerData: TAnswer);
begin
  with Joan.JoanQuery do
  begin

    Close;
    SQL.Clear;
    SQL.Text :=
      ' DELETE FROM answer WHERE (test_idx = :test_idx) and (quiz_idx = :quiz_idx) ';
    ParamByName('test_idx').AsInteger := AnswerData.test_idx;
    ParamByName('quiz_idx').AsInteger := AnswerData.quiz_idx;
    ExecSQL();
  end;
end;

end.
