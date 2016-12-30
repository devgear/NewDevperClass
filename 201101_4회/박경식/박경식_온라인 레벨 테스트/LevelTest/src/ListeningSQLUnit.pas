unit ListeningSQLUnit;

interface

uses
  JoanModule,
  TestClasses,
  SysUtils, Generics.Collections, Classes, Contnrs;

procedure InsertListeningData(ListeningData: TListening);
procedure ModifyListeningData(ListeningData: TListening);
procedure DeleteListeningData(ListeningData: TListening);
function GetListeningData(TestIndex: integer): TObjectList<TQuiz>;

implementation


function GetListeningData(TestIndex: integer): TObjectList<TQuiz>;
var
  Listening: TListening;
begin
  Result := TObjectList<TQuiz>.Create;

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
      Listening := TListening.Create;
      Listening.Idx := Joan.JoanQuery.FieldByName('test_idx').AsInteger;
      Listening.QuizIdx := Joan.JoanQuery.FieldByName('quiz_idx').AsInteger;
      Listening.QuizNumber := Joan.JoanQuery.FieldByName('number').AsInteger;
      Listening.Quiz := Joan.JoanQuery.FieldByName('question').Asstring;
      Listening.A := Joan.JoanQuery.FieldByName('A').Asstring;
      Listening.B := Joan.JoanQuery.FieldByName('B').Asstring;
      Listening.C := Joan.JoanQuery.FieldByName('C').Asstring;
      Listening.D := Joan.JoanQuery.FieldByName('D').Asstring;
      Listening.Answer := Joan.JoanQuery.FieldByName('answer').Asstring;
      Result.Add(Listening);
      Joan.JoanQuery.Next;
    end;
  end;
end;

procedure InsertListeningData(ListeningData: TListening);
var
  LastInsertID: Integer;
begin
  with Joan.JoanQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select f_insert_quiz(:number, :question, :a, :b, ' +
                ':c, :d, :answer) as last_insert_id';
    ParamByName('number').AsInteger := ListeningData.QuizNumber;
    ParamByName('question').Asstring := ListeningData.Quiz;
    ParamByName('A').Asstring := ListeningData.A;
    ParamByName('B').Asstring := ListeningData.B;
    ParamByName('C').Asstring := ListeningData.C;
    ParamByName('D').Asstring := ListeningData.D;
    ParamByName('answer').Asstring := ListeningData.Answer;
    Open;

    LastInsertID := FieldByName('LAST_INSERT_ID').AsInteger;

    Close;
    SQL.Clear;
    SQL.Text :=
      'INSERT INTO listening (test_idx, quiz_idx) values ' +
      ' (:test_idx, :quiz_idx)';
    ParamByName('test_idx').AsInteger := ListeningData.Idx;
    ParamByName('quiz_idx').AsInteger := LastInsertID;
    ExecSQL();
  end;
end;

procedure ModifyListeningData(ListeningData: TListening);
begin
  with Joan.JoanQuery do
  begin
      SQL.Clear;
      SQL.Text :=
        'SELECT t1.*, t2.* FROM ' +
        '(SELECT * FROM listening ' +
        ' WHERE test_idx = :idx) t1 ' +
        'INNER JOIN quiz t2 ' +
        'ON (t1.quiz_idx = t2.idx) and (t2.number = :quiznumber);';
      ParamByName('idx').AsInteger := ListeningData.Idx;
      ParamByName('quiznumber').AsInteger := ListeningData.QuizNumber;
      Open;
      ListeningData.idx := FieldByName('quiz_idx').AsInteger;

      Close;
      SQL.Clear;
      SQL.Text := 'UPDATE quiz  SET ' +
                  'number = :quiznumber, question = :quiz, A = :A, ' +
                  'B = :B, C = :C, D = :D, answer =:answer ' +
                  'WHERE idx = :quizidx ';
      ParamByName('quizidx').AsInteger := ListeningData.idx;
      ParamByName('quiznumber').AsInteger := ListeningData.Quiznumber;
      ParamByName('quiz').Asstring := ListeningData.Quiz;
      ParamByName('A').Asstring := ListeningData.A;
      ParamByName('B').Asstring := ListeningData.B;
      ParamByName('C').Asstring := ListeningData.C;
      ParamByName('D').Asstring := ListeningData.D;
      ParamByName('answer').Asstring := ListeningData.Answer;
      ExecSQL();
  end;
end;

procedure DeleteListeningData(ListeningData: TListening);
begin
  with Joan.JoanQuery do
  begin
    SQL.Clear;
    SQL.Text :=
      'SELECT t1.*, t2.* FROM ' +
      '(SELECT * FROM listening ' +
      ' WHERE test_idx = :idx) t1 ' +
      'INNER JOIN quiz t2 ' +
      'ON (t1.quiz_idx = t2.idx) and (t2.number = :quiznumber);';
    ParamByName('idx').AsInteger := ListeningData.Idx;
    ParamByName('quiznumber').AsInteger := ListeningData.QuizNumber;

    Open;
    ListeningData.QuizIdx := FieldByName('quiz_idx').AsInteger;
    Close;

    Sql.Clear;
    sql.Text := ' DELETE FROM quiz WHERE idx = :idx ';
    ParamByName('idx').AsInteger := ListeningData.QuizIdx;
    ExecSQL();

    Close;
    SQL.Clear;
    SQL.Text :=
      ' DELETE FROM listening WHERE (test_idx = :test_idx) and (quiz_idx = :quiz_idx) ';
    ParamByName('test_idx').AsInteger := ListeningData.Idx;
    ParamByName('quiz_idx').AsInteger := ListeningData.QuizIdx;
    ExecSQL();
  end;
end;

end.
