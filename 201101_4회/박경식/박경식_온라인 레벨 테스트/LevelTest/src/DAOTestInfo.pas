unit DAOTestInfo;

interface

uses
  DataAccessObjects,
  LTClasses,
  Generics.Collections;

type
  TDAOTest = class(TDAOBase)
  private

  public
    function SelectTestList: TObjectList<TTest>;
  end;

implementation

{ TDAOTest }

function TDAOTest.SelectTestList: TObjectList<TTest>;
var
  Test: TTest;
begin
  Result := TObjectList<TTest>.Create;

  Query.Close;
  Query.CommandText := 'SELECT idx, title FROM test;';
  Query.Open;

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

end.
