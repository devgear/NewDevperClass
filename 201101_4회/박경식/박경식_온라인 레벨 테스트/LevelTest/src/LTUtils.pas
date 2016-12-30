unit LTUtils;

interface

uses
  SysUtils;

function CreateGuestID: string;

implementation

function CreateGuestID: string;
var
  Guid: TGUID;
begin
  CreateGuid(Guid);
  Result := GuidToString(Guid);
end;

end.
