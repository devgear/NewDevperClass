unit uDM;

interface

uses
  SysUtils, Classes, DBXInterBase, FMTBcd, DB, SqlExpr, DBClient, SimpleDS;

type
  TDM = class(TDataModule)
    SQLConnection: TSQLConnection;
    DataSource: TDataSource;
    SalesQuery: TSimpleDataSet;
    SalesQueryS_NUM: TIntegerField;
    SalesQueryOPEN_DATE: TDateField;
    SalesQuerySLIP_NUM: TSmallintField;
    SalesQueryTABLE_NUM: TSmallintField;
    SalesQueryS_SUM: TIntegerField;
    SalesQueryS_TIME: TStringField;
    SalesQueryOS_NUM: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

end.
