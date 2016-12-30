unit Global;

interface

uses
  LTClasses,
  Generics.Collections;

var
  gUser: TGuest;


implementation

initialization

gUser := TGuest.Create;

finalization

gUser.Free;

end.
