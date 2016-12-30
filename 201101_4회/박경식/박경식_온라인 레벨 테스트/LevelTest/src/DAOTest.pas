unit DAOTest;

interface

uses
  DataAccessObjects,
  LTClasses,
  Generics.Collections;

type
  TDAOTest = class(TDAOBase)
  private
    function SelectListening(TestIndex: Integer): TObjectList<TListening>;
    function SelectSpeaking(TestIndex: integer) : TObjectList<TSpeaking>;
    function SelectReading(TestIndex: integer) : TObjectList<TReading>;
    function SelectWriting(TestIndex: integer) : TObjectList<TWriting>;
  public
    function SelectTestList: TObjectList<TTest>;
    function LoadTest(TestIndex: Integer): TTest;
  end;

implementation

{ TDAOTest }

function TDAOTest.SelectListening(TestIndex: Integer): TObjectList<TListening>;
var
  Listening: TListening;
begin
  Result := TObjectList<TListening>.Create;

  Query.Close;
  Query.CommandText :=
    'SELECT t1.*, t2.* FROM ' +
    '(SELECT * FROM listening ' +
    ' WHERE test_idx = :idx) t1 ' +
    'LEFT JOIN quiz t2 ' +
    'ON t1.quiz_idx = t2.idx;';

  Query.Params.ParamByName('idx').AsInteger := TestIndex;
  Query.Open;

  while not Query.Eof do
  begin
    begin
      Listening := TListening.Create;
      Listening.TestIdx := Query.FieldByName('test_idx').AsInteger;
      Listening.QuizIdx := Query.FieldByName('quiz_idx').AsInteger;
      Listening.QuizNumber := Query.FieldByName('number').AsInteger;
      Listening.Quiz := Query.FieldByName('question').Asstring;
      Listening.A := Query.FieldByName('A').Asstring;
      Listening.B := Query.FieldByName('B').Asstring;
      Listening.C := Query.FieldByName('C').Asstring;
      Listening.D := Query.FieldByName('D').Asstring;
      Listening.Answer := Query.FieldByName('answer').Asstring;
      Result.Add(Listening);
      Query.Next;
    end;
  end;
end;

function TDAOTest.LoadTest(TestIndex: Integer): TTest;
begin
  Result := TTest.Create;
  Result.TestIndex := TestIndex;
  Result.ListeningList := SelectListening(TestIndex);
  Result.SpeakingList := SelectSpeaking(TestIndex);
  Result.ReadingList := SelectReading(TestIndex);
  Result.WritingList := SelectWriting(TestIndex);
  Result.Initialize;
end;

function TDAOTest.SelectReading(TestIndex: integer): TObjectList<TReading>;
var
  Reading: TReading;
  I: Integer;
  Quiz: TLRQuiz;
begin
  Result := TObjectList<TReading>.Create;

  Query.Close;
  Query.CommandText :=
    'SELECT * FROM reading WHERE test_idx = :idx ORDER BY example_seq ';
  Query.Params.ParamByName('idx').AsInteger := TestIndex;
  Query.Open;

  while not Query.Eof do
  begin
    Reading := TReading.Create;
    Reading.ExampleIdx := Query.FieldByName('idx').AsInteger;
    Reading.ExampleNumber := Query.FieldByName('example_seq').AsInteger;
    Reading.ExampleText := Query.FieldByName('example_text').AsString;

    Result.Add(Reading);

    Query.Next;
  end;

  for I := 0 to Result.Count - 1 do
  begin
    Query.Close;
    Query.CommandText :=
      'SELECT t2.* FROM ' +
      '(SELECT * FROM reading_example_quiz ' +
      'WHERE reading_idx = :idx) t1 ' +
      'INNER JOIN quiz t2 ' +
      'ON t1.quiz_idx = t2.idx; ';
    Query.Params.ParamByName('idx').AsInteger := Result.Items[I].ExampleIdx;
    Query.Open;

    while not Query.Eof do
    begin
      Quiz := TReadingQuiz.Create;
      Quiz.QuizIdx := Query.FieldByName('idx').AsInteger;
      Quiz.QuizNumber := Query.FieldByName('number').AsInteger;
      Quiz.Quiz := Query.FieldByName('question').Asstring;
      Quiz.A := Query.FieldByName('A').Asstring;
      Quiz.B := Query.FieldByName('B').Asstring;
      Quiz.C := Query.FieldByName('C').Asstring;
      Quiz.D := Query.FieldByName('D').Asstring;
      Quiz.Answer := Query.FieldByName('answer').Asstring;

      Result.Items[I].QuizList.Add(Quiz);

      Query.Next;
    end;
  end;
end;

function TDAOTest.SelectTestList: TObjectList<TTest>;
var
  Test: TTest;
begin
  Result := TObjectList<TTest>.Create;

  Query.Close;
  Query.CommandText := 'SELECT * FROM test';
  Query.Open;

  // todo : 현재 로그인한 학생인 경우 학생이 시험을 봤던 정보도 같이 가져와서 보여줘야함.

  Query.First;
  while not Query.Eof do
  begin
    Test := TTest.Create;
    Test.Idx := Query.FieldByName('idx').AsInteger;
    Test.Title := Query.FieldByName('title').AsString;
    Result.Add(Test);
    Query.Next;
  end;
end;

function TDAOTest.SelectSpeaking(TestIndex: integer): TObjectList<TSpeaking>;
var
  Speaking: TSpeaking;
begin
  Result := TObjectList<TSpeaking>.Create;

  Query.Close;
  Query.CommandText := 'SELECT * FROM speaking WHERE test_idx = :index';
  Query.Params.ParamByName('index').AsInteger := TestIndex;
  Query.Open;

  while not Query.Eof do
  begin
    begin
      Speaking := TSpeaking.Create;
      Speaking.TestIdx    := Query.FieldByName('test_idx').AsInteger;
      Speaking.QuizNumber := Query.FieldByName('number').AsInteger;
      Speaking.Quiz       := Query.FieldByName('quiz').AsString;
      Result.Add(Speaking);
      Query.Next;
    end;
  end;
end;

function TDAOTest.SelectWriting(TestIndex: integer): TObjectList<TWriting>;
var
  Writing: TWriting;
begin
  Result := TObjectList<TWriting>.Create;

  Query.Close;
  Query.CommandText := 'SELECT * FROM writing WHERE test_idx = :index';
  Query.Params.ParamByName('index').AsInteger := TestIndex;
  Query.Open;

  while not Query.Eof do
  begin
    begin
      Writing := TWriting.Create;
      Writing.TestIdx     := Query.FieldByName('test_idx').AsInteger;
      Writing.QuizNumber  := Query.FieldByName('number').AsInteger;
      Writing.ExampleText := Query.FieldByName('example_text').AsString;
      Writing.Quiz        := Query.FieldByName('quiz').AsString;
      Result.Add(Writing);
      Query.Next;
    end;
  end;
end;

end.
