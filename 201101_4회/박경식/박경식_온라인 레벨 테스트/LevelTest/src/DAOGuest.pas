unit DAOGuest;

interface

uses
  DataAccessObjects, LTClasses;

type
  TDAOGuest = class(TDAOBase)
  public
    procedure Insert(Guest: TGuest);
  end;

implementation

{ TDAOGuest }

procedure TDAOGuest.Insert(Guest: TGuest);
begin
  try
    // todo : TDAOGuest.Insert(Guest: TGuest);
  except
    ELevelTest.Create('TDAOGuest.Insert');
  end;
end;

end.
