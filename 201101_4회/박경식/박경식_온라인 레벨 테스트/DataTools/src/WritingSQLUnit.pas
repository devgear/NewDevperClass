unit WritingSQLUnit;

interface

uses
  JoanModule,
  TestClasses,
  SysUtils, Generics.Collections, Classes, Contnrs;

type
  TWritingData = class
  private

  public
    procedure Insert(Writing: TWriting);
    procedure Update(Writing: TWriting);
    procedure Delete(QuestionNumber: integer; TestIndex: Integer);
    function Select(TestIndex: integer) : TObjectList<TQuiz>;
  end;

implementation

{ TWritingData }

procedure TWritingData.Delete(QuestionNumber: integer; TestIndex: Integer);
begin
  with Joan.JoanQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Text :=
      'DELETE FROM writing ' +
      'WHERE (test_idx = :idx) and (number = :quiznumber);';
    ParamByName('idx').AsInteger        := TestIndex;
    ParamByName('quiznumber').AsInteger := QuestionNumber;
    ExecSQL();
  end;
end;

procedure TWritingData.Insert(Writing: TWriting);
begin
  with Joan.JoanQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Text :=
      'INSERT INTO writing ' +
      '(test_idx, number, example_text, quiz) ' +
      'VALUES ' +
      '(:idx,:quiznumber,:exampletext,:quiz);';
    ParamByName('idx').AsInteger        := Writing.Idx;
    ParamByName('quiznumber').AsInteger := Writing.QuizNumber;
    ParamByName('exampletext').AsString := Writing.ExampleText;
    ParamByName('quiz').AsString        := Writing.Quiz;
    ExecSQL();
  end;
end;

procedure TWritingData.Update(Writing: TWriting);
begin
  with Joan.JoanQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Text :=
      'UPDATE writing SET ' +
      'test_idx = :idx, number = :quiznumber, '+
      'example_text = :exampletext, quiz = :quiz ' +
      'WHERE (test_idx = :idx) and (number = :quiznumber);';
    ParamByName('idx').AsInteger        := Writing.Idx;
    ParamByName('quiznumber').AsInteger := Writing.QuizNumber;
    ParamByName('exampletext').AsString := Writing.ExampleText;
    ParamByName('quiz').AsString        := Writing.Quiz;
    ExecSQL();
  end;
end;

function TWritingData.Select(
  TestIndex: integer): TObjectList<TQuiz>;
var
  Writing: TWriting;
begin
  Result := TObjectList<TQuiz>.Create;

  Joan.JoanQuery.SQL.Clear;
  Joan.JoanQuery.SQL.Text := 'SELECT * FROM writing WHERE test_idx = :index';
  Joan.JoanQuery.ParamByName('index').AsInteger := TestIndex;
  Joan.JoanQuery.Open;

  while not Joan.JoanQuery.Eof do
  begin
    begin
      Writing := TWriting.Create;
      Writing.Idx         := Joan.JoanQuery.FieldByName('test_idx').AsInteger;
      Writing.QuizNumber  := Joan.JoanQuery.FieldByName('number').AsInteger;
      Writing.ExampleText := Joan.JoanQuery.FieldByName('example_text').AsString;
      Writing.Quiz        := Joan.JoanQuery.FieldByName('quiz').AsString;
      Result.Add(Writing);
      Joan.JoanQuery.Next;
    end;
  end;
end;

end.
