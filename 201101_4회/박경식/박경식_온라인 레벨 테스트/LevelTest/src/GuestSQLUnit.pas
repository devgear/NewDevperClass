
unit GuestSQLUnit;

interface

uses
  DataAccessObjects, LTClasses;

type
  TDAOGuest = class(TDAOBase)
  public
    procedure InsertGuest(Guest : TGuest);
end;

implementation

{ TDAOMember }

procedure TDAOGuest.InsertGuest(Guest: TGuest);
begin
//  Query.Close;
//  Query.CommandText :=
//    'INSERT INTO guest_member ' +
//    '(g_id, g_name, g_phone, g_school, g_grade, relation) ' +
//    'VALUES (:id, :name, :phone, :school, :grade, :relation);';
//  Query.ParamByName('id').AsInteger := Guest.UserId;
//  Query.ParamByName('name').Asstring := Guest.Name;
//  Query.ParamByName('phone').Asstring := Guest.Phone;
//  Query.ParamByName('school').Asstring := Guest.School;
//  Query.ParamByName('grade').Asstring := Guest.Grade;
//  Query.ParamByName('relation').Asstring := Guest.Academy.Code;
//  Query.Open;
end;

end.
