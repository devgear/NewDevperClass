unit SpeakingSQLUnit;

interface

uses
  JoanModule,
  TestClasses,
  SysUtils, Generics.Collections, Classes, Contnrs;

type
  TSpeakingData = class
  private

  public
    procedure Insert(Speaking: TSpeaking);
    procedure Update(Speaking: TSpeaking);
    procedure Delete(QuestionNumber: integer; TestIndex: Integer);
    function Select(TestIndex: integer) : TObjectList<TQuiz>;
  end;

implementation

{ TSpeakingData }

procedure TSpeakingData.Delete(QuestionNumber: integer; TestIndex: Integer);
begin
  with Joan.JoanQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Text :=
      'DELETE FROM speaking ' +
      'WHERE (test_idx = :idx) and (number = :quiznumber);';
    ParamByName('idx').AsInteger        := TestIndex;
    ParamByName('quiznumber').AsInteger := QuestionNumber;
    ExecSQL();
  end;
end;

procedure TSpeakingData.Insert(Speaking: TSpeaking);
begin
  with Joan.JoanQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Text :=
      'INSERT INTO speaking ' +
      '(test_idx, number, quiz, response_time) ' +
      'VALUES ' +
      '(:idx,:quiznumber,:quiz,:responsetime);';
    ParamByName('idx').AsInteger          := Speaking.Idx;
    ParamByName('quiznumber').AsInteger   := Speaking.QuizNumber;
    ParamByName('quiz').AsString          := Speaking.Quiz;
    ParamByName('responsetime').AsInteger := Speaking.ResponseTime;
    ExecSQL();
  end;
end;

procedure TSpeakingData.Update(Speaking: TSpeaking);
begin
  with Joan.JoanQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Text :=
      'UPDATE speaking SET ' +
      'test_idx = :idx, number = :quiznumber, quiz = :quiz, ' +
      'response_time = :responsetime ' +
      'WHERE (test_idx = :idx) and (number = :quiznumber);';
    ParamByName('idx').AsInteger          := Speaking.Idx;
    ParamByName('quiznumber').AsInteger   := Speaking.QuizNumber;
    ParamByName('quiz').AsString          := Speaking.Quiz;
    ParamByName('responsetime').AsInteger := Speaking.ResponseTime;
    ExecSQL();
  end;
end;

function TSpeakingData.Select(
  TestIndex: integer): TObjectList<TQuiz>;
var
  Speaking: TSpeaking;
begin
  Result := TObjectList<TQuiz>.Create;

  Joan.JoanQuery.SQL.Clear;
  Joan.JoanQuery.SQL.Text := 'SELECT * FROM speaking WHERE test_idx = :index';
  Joan.JoanQuery.ParamByName('index').AsInteger := TestIndex;
  Joan.JoanQuery.Open;

  while not Joan.JoanQuery.Eof do
  begin
    begin
      Speaking := TSpeaking.Create;
      Speaking.Idx        := Joan.JoanQuery.FieldByName('test_idx').AsInteger;
      Speaking.QuizNumber := Joan.JoanQuery.FieldByName('number').AsInteger;
      Speaking.Quiz       := Joan.JoanQuery.FieldByName('quiz').AsString;
      Result.Add(Speaking);
      Joan.JoanQuery.Next;
    end;
  end;
end;

end.
