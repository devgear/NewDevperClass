unit uBarDM;

interface

uses
  SysUtils, Classes, DBXInterBase, DB, SqlExpr, DBClient, SimpleDS, FMTBcd,
  Provider;

type
  TDM = class(TDataModule)
    SQLConnection: TSQLConnection;
    BarQuery: TSQLQuery;
    ResvSource: TDataSource;
    ResvQuery: TSimpleDataSet;
    ResvQueryR_NUM: TIntegerField;
    ResvQueryR_DATE: TDateField;
    ResvQueryR_TIME: TStringField;
    ResvQueryR_NAME: TStringField;
    ResvQueryR_PHONE: TStringField;
    ResvQueryR_MEMO: TStringField;
    ResvQueryR_REMARKS: TBooleanField;
    SalesQuery: TSimpleDataSet;
    SalesSource: TDataSource;
    FoodTable: TSimpleDataSet;
    FoodSource: TDataSource;
    OrderQuery: TSimpleDataSet;
    SalesDateDataSource: TDataSource;
    SalesDateQuery: TSimpleDataSet;
    SalesDateQueryS_NUM: TIntegerField;
    SalesDateQueryOPEN_DATE: TDateField;
    SalesDateQuerySLIP_NUM: TSmallintField;
    SalesDateQueryTABLE_NUM: TSmallintField;
    SalesDateQueryS_SUM: TIntegerField;
    SalesDateQueryS_TIME: TStringField;
    SalesDateQueryOS_NUM: TIntegerField;
    insertQuery: TSQLQuery;
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
