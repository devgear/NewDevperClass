unit DAOTest;

interface

uses
  TestClasses, Generics.Collections;

type
  TDAOTest = class
    function GetList: TObjectList<TTest>;
    procedure Add(Title: string);
    procedure Delete(Index: Integer);
    procedure Edit(Index: Integer; Title: string);
  end;

implementation

uses
  JoanModule;

{ TDAOTest }

procedure TDAOTest.Add(Title: string);
begin
  Joan.JoanQuery.Close;
  Joan.JoanQuery.SQL.Text :=
    'INSERT INTO test (title) VALUES (:title)';
  Joan.JoanQuery.ParamByName('title').AsString := Title;
  Joan.JoanQuery.ExecSQL;
end;

procedure TDAOTest.Delete(Index: Integer);
begin
  Joan.JoanQuery.Close;
  Joan.JoanQuery.SQL.Text :=
    'DELETE FROM test WHERE Idx = :Idx';
  Joan.JoanQuery.ParamByName('Idx').Asinteger := Index;
  Joan.JoanQuery.ExecSQL;
end;

procedure TDAOTest.Edit(Index: Integer; Title: string);
begin
  Joan.JoanQuery.Close;
  Joan.JoanQuery.SQL.Text :=
    'UPDATE test SET Title = :Title WHERE Idx = :Idx';
  Joan.JoanQuery.ParamByName('Idx').Asinteger := Index;
  Joan.JoanQuery.ParamByName('Title').AsString := Title;
  Joan.JoanQuery.ExecSQL;
end;

function TDAOTest.GetList: TObjectList<TTest>;
var
  Test: TTest;
begin
  Result := TObjectList<TTest>.Create;

  Joan.JoanQuery.Close;
  Joan.JoanQuery.SQL.Text := 'SELECT * FROM test';
  Joan.JoanQuery.Open;

  Joan.JoanQuery.First;
  while not Joan.JoanQuery.Eof do
  begin
    Test := TTest.Create;
    Test.Idx := Joan.JoanQuery.FieldByName('idx').AsInteger;
    Test.Title := Joan.JoanQuery.FieldByName('title').AsString;

    // TObjectList<TTest> 여기에다가 값을 넣는다.
    Result.Add(Test);
    Joan.JoanQuery.Next;
  end;
end;

end.
