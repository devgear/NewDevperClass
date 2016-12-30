unit ReadingSQLUnit;

interface

uses
  JoanModule,
  TestClasses,Windows, Messages, Dialogs,
  SysUtils, Generics.Collections, Classes, Contnrs;

type
  TReadingSQL = class
    function ReadingTextSelect(TestIndex: Integer): TObjectList<TReading>;
    procedure ReadingTextInsert(Reading: TReading; TestIndex: Integer);
    procedure ReadingTextUpdate(Reading: TReading; TestIndex: Integer);
    procedure ReadingTextDelete(TestIndex, ExampleNumber: Integer);

    procedure ReadingQuestionInsert(Question: TLRQuiz; ExampleIndex: Integer);
    procedure ReadingQuestionUpdate(Question: TLRQuiz; QuizIndex: Integer);
    procedure ReadingQuestionDelete(QuestionIndex: Integer);
  end;

implementation


{ TReadingSQL }


procedure TReadingSQL.ReadingQuestionDelete(QuestionIndex: Integer);
begin
  with Joan.JoanQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Text :=
      'DELETE FROM reading_example_quiz ' +
      'WHERE quiz_idx = :questionindex;';
    ParamByName('questionindex').AsInteger := QuestionIndex;
    ExecSQL();

    Close;
    SQL.Clear;
    SQL.Text := 'DELETE FROM quiz WHERE idx = :questionindex;';
    ParamByName('questionindex').AsInteger := QuestionIndex;
    ExecSQL();
  end;
end;

procedure TReadingSQL.ReadingQuestionInsert(Question: TLRQuiz; ExampleIndex: Integer);
var
  LastInsertID: Integer;
begin
  with Joan.JoanQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Text :=
      'SELECT f_insert_quiz' +
      '(:number, :question, :a, :b, :c, :d, :answer) AS last_insert_id';
    ParamByName('number').AsInteger := Question.QuizNumber;
    ParamByName('question').Asstring := Question.Quiz;
    ParamByName('A').Asstring := Question.A;
    ParamByName('B').Asstring := Question.B;
    ParamByName('C').Asstring := Question.C;
    ParamByName('D').Asstring := Question.D;
    ParamByName('answer').Asstring := Question.Answer;
    Open;

    LastInsertID := FieldByName('last_insert_id').AsInteger;

    Close;
    SQL.Clear;
    SQL.Text :=
      'INSERT INTO reading_example_quiz ' +
      '(reading_idx, quiz_idx) ' +
      'VALUES ' +
      '(:exampleidx, :quiz_idx)';
    ParamByName('exampleidx').AsInteger := ExampleIndex;
    ParamByName('quiz_idx').AsInteger := LastInsertID;
    ExecSQL();
  end;
end;

procedure TReadingSQL.ReadingQuestionUpdate(Question: TLRQuiz; QuizIndex: Integer);
begin
  with Joan.JoanQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Text :=
      'UPDATE quiz SET ' +
      'number = :quiznumber, question = :quiz, ' +
      'A = :A, B = :B, C = :C, D = :D, answer = :answer ' +
      'WHERE idx = :quizindex;';
    ParamByName('quizindex').AsInteger := QuizIndex;
    ParamByName('quiznumber').AsInteger := Question.QuizNumber;
    ParamByName('quiz').Asstring := Question.Quiz;
    ParamByName('A').Asstring := Question.A;
    ParamByName('B').Asstring := Question.B;
    ParamByName('C').Asstring := Question.C;
    ParamByName('D').Asstring := Question.D;
    ParamByName('answer').Asstring := Question.Answer;
    ExecSQL();
  end;
end;

procedure TReadingSQL.ReadingTextDelete(TestIndex, ExampleNumber: Integer);
var
  ReadingIndex : Integer;
begin
  Joan.JoanQuery.Close;
  Joan.JoanQuery.SQL.Clear;
  Joan.JoanQuery.SQL.Text :=
    'SELECT idx FROM reading ' +
    'WHERE (test_idx = :testindex) AND (example_seq = :examplenumber);';
  Joan.JoanQuery.ParamByName('testindex').AsInteger := TestIndex;
  Joan.JoanQuery.ParamByName('examplenumber').AsInteger := ExampleNumber;
  Joan.JoanQuery.Open;
  ReadingIndex := Joan.JoanQuery.FieldByName('idx').AsInteger;

  Joan.JoanQuery.Close;
  Joan.JoanQuery.SQL.Clear;
  Joan.JoanQuery.SQL.Text :=
    'DELETE FROM quiz ' +
    'WHERE idx in ' +
    '(SELECT quiz_idx FROM reading_example_quiz ' +
    ' WHERE reading_idx = :readingindex);';
  Joan.JoanQuery.ParamByName('readingindex').AsInteger := ReadingIndex;
  Joan.JoanQuery.ExecSQL();

  Joan.JoanQuery.Close;
  Joan.JoanQuery.SQL.Clear;
  Joan.JoanQuery.SQL.Text :=
    'DELETE FROM reading ' +
    'WHERE (test_idx = :testindex) AND (example_seq = :examplenumber);';
  Joan.JoanQuery.ParamByName('testindex').AsInteger := TestIndex;
  Joan.JoanQuery.ParamByName('examplenumber').AsInteger := ExampleNumber;
  Joan.JoanQuery.ExecSQL();
end;

procedure TReadingSQL.ReadingTextInsert(Reading: TReading; TestIndex: Integer);
begin
  with Joan.JoanQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Text :=
      'INSERT INTO reading ' +
      '(test_idx, example_seq, example_text) ' +
      'VALUES ' +
      '(:testindex, :examplenumber, :exampletext);';
    ParamByName('testindex').Asinteger     := TestIndex;
    ParamByName('examplenumber').AsInteger := Reading.ExampleNumber;
    ParamByName('exampletext').AsString    := Reading.ExampleText;
    ExecSQL();
  end;
end;

function TReadingSQL.ReadingTextSelect(TestIndex: Integer): TObjectList<TReading>;
var
  Reading: TReading;
  I: Integer;
  Quiz: TLRQuiz;
begin
  Result := TObjectList<TReading>.Create;

  Joan.JoanQuery.SQL.Clear;
  Joan.JoanQuery.SQL.Text :=
    'SELECT * FROM reading WHERE test_idx = :idx ORDER BY example_seq ';
  Joan.JoanQuery.ParamByName('idx').AsInteger := TestIndex;
  Joan.JoanQuery.Open;

  while not Joan.JoanQuery.Eof do
  begin
    Reading := TReading.Create;
    Reading.ExampleIdx := Joan.JoanQuery.FieldByName('idx').AsInteger;
    Reading.ExampleNumber := Joan.JoanQuery.FieldByName('example_seq').AsInteger;
    Reading.ExampleText := Joan.JoanQuery.FieldByName('example_text').AsString;

    Result.Add(Reading);

    Joan.JoanQuery.Next;
  end;

  for I := 0 to Result.Count - 1 do
  begin
    Joan.JoanQuery.SQL.Clear;
    Joan.JoanQuery.SQL.Text :=
      'SELECT t2.* FROM ' +
      '(SELECT * FROM reading_example_quiz ' +
      'WHERE reading_idx = :idx) t1 ' +
      'INNER JOIN quiz t2 ' +
      'ON t1.quiz_idx = t2.idx; ';
    Joan.JoanQuery.ParamByName('idx').AsInteger := Result.Items[I].ExampleIdx;
    Joan.JoanQuery.Open;

    while not Joan.JoanQuery.Eof do
    begin
      Quiz := TLRQuiz.Create;
      Quiz.QuizIdx := Joan.JoanQuery.FieldByName('idx').AsInteger;
      Quiz.QuizNumber := Joan.JoanQuery.FieldByName('number').AsInteger;
      Quiz.Quiz := Joan.JoanQuery.FieldByName('question').Asstring;
      Quiz.A := Joan.JoanQuery.FieldByName('A').Asstring;
      Quiz.B := Joan.JoanQuery.FieldByName('B').Asstring;
      Quiz.C := Joan.JoanQuery.FieldByName('C').Asstring;
      Quiz.D := Joan.JoanQuery.FieldByName('D').Asstring;
      Quiz.Answer := Joan.JoanQuery.FieldByName('answer').Asstring;

      Result.Items[I].QuizList.Add(Quiz);

      Joan.JoanQuery.Next;
    end;
  end;
end;

procedure TReadingSQL.ReadingTextUpdate(Reading: TReading; TestIndex: Integer);
begin
  with Joan.JoanQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Text :=
      'UPDATE reading SET ' +
      'example_text = :exampletext ' +
      'WHERE (test_idx = :testindex) and (example_seq = :examplenumber);';
    ParamByName('testindex').Asinteger     := TestIndex;
    ParamByName('examplenumber').AsInteger := Reading.ExampleNumber;
    ParamByName('exampletext').AsString    := Reading.ExampleText;
    ExecSQL();
  end;
end;

end.
