unit MainSQLUnit;

interface

uses
  JoanModule,
  TestClasses,
  SysUtils, Generics.Collections, Classes, Contnrs;

  function GetListView : TObjectList<TTest>;

implementation

function GetListView : TObjectList<TTest>;
var
  Test: TTest;
begin
  Result := TObjectList<TTest>.Create;

  Joan.JoanQuery.SQL.Clear;
  Joan.JoanQuery.SQL.Text := 'SELECT * FROM test';
  Joan.JoanQuery.Open;

//  ShowMessage(Joan.JoanQuery.Eof);
  while not Joan.JoanQuery.Eof do
  begin
    Test := TTest.Create;
    Test.Idx   := Joan.JoanQuery.FieldByName('idx').AsInteger;
    Test.Title := Joan.JoanQuery.FieldByName('title').AsString;
    Result.Add(Test);
    Joan.JoanQuery.Next;
  end;
end;

end.
