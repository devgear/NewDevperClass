unit Udm;

interface

uses
  SysUtils, Classes, DBXInterBase, FMTBcd, DB, DBClient, SimpleDS, SqlExpr,
  RpCon, RpConDS, RpRave, RpDefine, RpBase, RpSystem, OleServer, ExcelXP;

type
  Tdm = class(TDataModule)
    SQLConnection1: TSQLConnection;
    VendorsQuery: TSimpleDataSet;
    NextNoQuery: TSimpleDataSet;
    PurchaseQuery: TSimpleDataSet;
    MoneyQuery: TSimpleDataSet;
    CommodityQuery: TSimpleDataSet;
    NextNoSource: TDataSource;
    PurchaseSource: TDataSource;
    CommoditySource: TDataSource;
    MoneySource: TDataSource;
    SalseQuerySource: TDataSource;
    SalseChartQuerySource: TDataSource;
    SalseChartQuery: TSimpleDataSet;
    SalseChartQueryC_CODE: TIntegerField;
    SalseChartQuerySUM: TLargeintField;
    SalseChartQueryC_NAME: TStringField;
    SalseQuery: TSimpleDataSet;
    SimpleDataSet1: TSimpleDataSet;
    DataSource1: TDataSource;
    SimpleDataSet1V_BIZNAME: TStringField;
    SimpleDataSet1SUM: TLargeintField;
    Align: TSimpleDataSet;
    AlignSource: TDataSource;
    reportQuery: TSQLQuery;
    CommodityChart: TSimpleDataSet;
    AlignV_CODE: TIntegerField;
    AlignC_CODE: TIntegerField;
    AlignSUM: TLargeintField;
    VENDORSTable: TSQLTable;
    AlignV_NAME: TStringField;
    COMMODITYTable: TSQLTable;
    AlignC_NAME: TStringField;
    PurchaseQueryP_CODE: TIntegerField;
    PurchaseQueryC_CODE: TIntegerField;
    PurchaseQueryP_MONEY: TIntegerField;
    PurchaseQueryP_KG: TIntegerField;
    PurchaseQueryP_DATE: TDateField;
    PurchaseQueryV_CODE: TIntegerField;
    PurchaseQueryC_NAME: TStringField;
    PurchaseQueryV_BIZNAME: TStringField;
    VendorsQueryV_CODE: TIntegerField;
    VendorsQueryV_BIZNAME: TStringField;
    VendorsQueryV_TELNUMBER: TStringField;
    VendorsQueryV_NAME: TStringField;
    SalseQueryS_CODE: TIntegerField;
    SalseQueryS_MONEY: TIntegerField;
    SalseQueryS_DATA: TDateField;
    SalseQueryC_CODE: TIntegerField;
    SalseQueryC_NAME: TStringField;
    SQLQuery2: TSQLQuery;
    SQLQuery1: TSQLQuery;
    VendorsSource: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{$R *.dfm}

end.
