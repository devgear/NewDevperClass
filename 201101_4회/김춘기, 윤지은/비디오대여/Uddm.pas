unit Uddm;

interface

uses
  SysUtils, Classes, DBXInterBase, DB, SqlExpr, DBTables, FMTBcd, DBClient,
  SimpleDS;

type
  Tudm = class(TDataModule)
    shopConnection: TSQLConnection;
    customer: TSimpleDataSet;
    customerSource: TDataSource;
    moviesSource: TDataSource;
    movies: TSimpleDataSet;
    lendSource: TDataSource;
    lend: TSimpleDataSet;
    customertable: TSQLTable;
    customertableSource: TDataSource;
    SimpleDataSet1: TSimpleDataSet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  udm: Tudm;

implementation

{$R *.dfm}

end.
