unit DAOMember;

interface

uses
  Generics.Collections,
  DataAccessObjects, LTClasses;

type
  TDAOMember = class(TDAOBase)
  public
    function Authentication(ID: string; Password: string): TAcademy;
    function Validate(ID: string; Password: string): Boolean;
    function Login(ID: string; Password: string): Boolean;
    function Load(ID: string): TUser;
    function SearchMember(ID : String) : TObjectlist<TUser>;
    function GetAllMember: TObjectlist<TUser>;
    function CheckingTest(ID: string;
      TestIndex: integer): TObjectList<TLevelTestCheck>;
    procedure DeleteMember(ID : string);
    procedure ModifyMember(User : TUser);
    procedure InsertMember(user : TUser);
    procedure InsertGuest(Guest: TGuest);
  end;

implementation

{ TDAOMember }

function TDAOMember.Authentication(ID, Password: string): TAcademy;
begin
  Result := TAcademy.Create;

  Query.CommandText := 'SELECT relation FROM g4_member ' +
    'WHERE (mb_id = :mb_id) and (mb_password = :mb_password) and (mb_level > 3);';
  Query.Params.ParamByName('mb_id').AsString := ID;
  Query.Params.ParamByName('mb_password').AsString := Password;
  Query.Open;

  Result.Code := Query.FieldByName('relation').AsInteger;
  Result.Name := 'Khan';

  // todo : 추후 relation 정보를 갖고 Name를 검색 하여 추가
  // todo : Authentication, Validate 중복되는 함수 합치기
end;

function TDAOMember.CheckingTest(ID: string;
  TestIndex: integer): TObjectList<TLevelTestCheck>;
var
  TestCheck: TLevelTestCheck;
begin
  Result := TObjectList<TLevelTestCheck>.Create;
  Query.CommandText :=
    'SELECT idx, title, ' +
    '(SELECT COUNT(*) FROM leveltest_permission ' +
    'WHERE mb_id = :userid AND test_idx = :testindex) AS permission, ' +
    '(SELECT idx FROM leveltest_result ' +
    'WHERE mb_id = :userid AND test_idx = test.idx) AS result_idx FROM test;';
  Query.Params.ParamByName('userid').AsString := ID;
  Query.Params.ParamByName('testindex').AsInteger := TestIndex;
  Query.Open;

  Query.First;
  while not Query.Eof do
  begin
    TestCheck := TLevelTestCheck.Create;
    TestCheck.Index := Query.FieldByName('idx').AsInteger;
    TestCheck.Title := Query.FieldByName('title').AsString;
    TestCheck.Permission := Query.FieldByName('permssion').AsInteger;
    TestCheck.ResultIndex := Query.FieldByName('result_idx').AsInteger;
    Result.Add(TestCheck);
    Query.Next;
  end;

  // todo : 이곳을 할 차례... 쿼리로 뽑은 내용을
  //        호출 한 곳으로 넘겨주고 비교하여 리스트뷰에 뿌려줘야 함

end;

procedure TDAOMember.DeleteMember(ID : string);
begin
  Query.Close;
  Query.CommandText := 'DELETE FROM g4_member WHERE mb_id = :ID ';
  Query.Params.ParamByName('ID').AsString := Id;
  Query.Execute;

end;

function TDAOMember.GetAllMember: TObjectlist<TUser>;
var
  User : TUser;
begin
  Result := TObjectlist<TUser>.Create;
  query.Close;
  Query.CommandText :=' SELECT * FROM g4_member ; ';
  Query.Open;

  query.First;
  while not query.eof do
  begin
    User := TUser.Create;
    user.UserId := Query.FieldByName('mb_id').AsString;
    user.UserPassword := Query.FieldByName('mb_password').AsString;
    user.Level := Query.FieldByName('mb_level').AsInteger;
    user.Name := Query.FieldByName('mb_name').AsString;
//    user.Academy.Code := Query.FieldByName('relation').Asinteger;
    result.add(user);
    query.Next;
  end;
end;

procedure TDAOMember.InsertGuest(Guest: TGuest);
begin
  Query.Close;
  Query.CommandText := 'INSERT INTO guest_member ' +
    '(g_id, g_name, g_phone, g_school, g_grade, relation) ' +
    'VALUES (:id, :name, :phone, :school, :grade, :relation);';
  Query.Params.ParamByName('id').AsString := Guest.UserId;
  Query.Params.ParamByName('name').AsString := Guest.Name;
  Query.Params.ParamByName('phone').AsString := Guest.Phone;
  Query.Params.ParamByName('school').AsString := Guest.School;
  Query.Params.ParamByName('grade').AsString := Guest.Grade;
  Query.Params.ParamByName('relation').AsInteger := Guest.Academy.Code;
  Query.Execute;
end;

procedure TDAOMember.InsertMember(user : TUser);
begin
  Query.Close;
  Query.CommandText := 'INSERT INTO g4_member ' +
                  'mb_id = :mb_id, mb_name = :mb_name, relation = :relation, ' +
                  'mb_password = :mb_password, mb_level = :mb_level ';
  Query.Open;
  Query.Params.ParamByName('mb_id').AsString := user.UserId;
  Query.Params.ParamByName('mb_password').AsString := user.UserPassword;
  Query.Params.ParamByName('mb_level').AsInteger := user.Level;
  Query.Params.ParamByName('mb_name').AsString := user.Name;
  Query.Params.ParamByName('relation').AsInteger := user.relation;
//  Query.Params.ParamByName('auth').AsString := 'Y';
end;

function TDAOMember.Load(ID: string): TUser;
begin
  Result := TUser.Create;
  Query.CommandText :=
    'SELECT mb_id, mb_password, mb_level, mb_name FROM g4_member ' +
    'WHERE mb_id = :mb_id;';
  Query.Params.ParamByName('mb_id').AsString := ID;
  Query.Open;
  Result.UserId := Query.FieldByName('mb_id').AsString;
  Result.UserPassword := Query.FieldByName('mb_password').AsString;
  Result.Level := Query.FieldByName('mb_level').AsInteger;
  Result.Name := Query.FieldByName('mb_name').AsString;
  Result.Academy.Code := Query.FieldByName('relation').AsInteger;

  // todo : relation 을 이용하여 학원정보와 선생님 정보 추출
end;

function TDAOMember.Login(ID, Password: string): Boolean;
begin
  Query.Close;
  Query.CommandText := 'SELECT * FROM g4_member ' +
    'WHERE (mb_id = :mb_id) and (mb_password = :mb_password);';
  Query.Params.ParamByName('mb_id').AsString := ID;
  Query.Params.ParamByName('mb_password').AsString := Password;
  Query.Open;
  if Query.IsEmpty then
    Result := False
  else
    Result := True;
end;

procedure TDAOMember.ModifyMember(User: TUser);
begin
  query.Close;
  Query.CommandText :=' UPDATE g4_member  SET ' +
                  'mb_id = :mb_id, mb_name = :password, relation = :relation, ' +
                  'mb_password = :mb_password, auth = :auth, mb_level = :mb_level ';
  Query.Open;

  Query.Params.ParamByName('mb_id').AsString;
  Query.Params.ParamByName('mb_password').AsString;
  Query.Params.ParamByName('mb_level').AsInteger;
  Query.Params.ParamByName('mb_name').AsString;
  Query.Params.ParamByName('relation').AsString;
  Query.Params.ParamByName('auth').AsString;
//    user.Academy.Code := Query.FieldByName('relation').Asinteger;
  query.Execute;
end;

function TDAOMember.SearchMember(ID : String): TObjectlist<TUser>;
var
  User : TUser;
begin
  Result := TObjectlist<TUser>.Create;
  query.Close;
  Query.CommandText :=' SELECT * FROM g4_member WHERE mb_id like :ID; ';
  query.Params.ParamByName('ID').AsString := ID;
  Query.Open;

  query.First;
  while not query.eof do
  begin
    User := TUser.Create;
    user.UserId := Query.FieldByName('mb_id').AsString;
    user.UserPassword := Query.FieldByName('mb_password').AsString;
    user.Level := Query.FieldByName('mb_level').AsInteger;
    user.Name := Query.FieldByName('mb_name').AsString;
//    user.Academy.Code := Query.FieldByName('relation').Asinteger;
    result.add(user);
    query.Next;
  end;
end;

function TDAOMember.Validate(ID, Password: string): Boolean;
begin
  Query.Close;
  Query.CommandText := 'SELECT * FROM g4_member ' +
    'WHERE (mb_id = :mb_id) and (mb_password = :mb_password) and (mb_level > 3);';
  Query.Params.ParamByName('mb_id').AsString := ID;
  Query.Params.ParamByName('mb_password').AsString := Password;
  Query.Open;
  if Query.IsEmpty then
    Result := False
  else
    Result := True;
end;

end.
