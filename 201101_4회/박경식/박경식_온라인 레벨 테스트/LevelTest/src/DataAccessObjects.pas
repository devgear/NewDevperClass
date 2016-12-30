unit DataAccessObjects;

interface

uses
  DBClient;

type
  TDAOBase = class
  private
    function GetQuery: TClientDataset;
  protected
    property Query: TClientDataset read GetQuery;
  end;

implementation

uses
  Database_DM;

{ TDAOBase }

function TDAOBase.GetQuery: TClientDataset;
begin
  Result := dmDatabase.ClientDataSet1;
end;

end.
