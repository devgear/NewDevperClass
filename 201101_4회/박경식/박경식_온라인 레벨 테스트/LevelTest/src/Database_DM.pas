unit Database_DM;

interface

uses
  SysUtils, Classes, WideStrings, DBXMySql, FMTBcd, DB, SqlExpr, Provider,
  DBClient;

type
  TdmDatabase = class(TDataModule)
    dbxConnection: TSQLConnection;
    dbxQuery: TSQLQuery;
    ClientDataSet1: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmDatabase: TdmDatabase;

implementation

{$R *.dfm}

end.
