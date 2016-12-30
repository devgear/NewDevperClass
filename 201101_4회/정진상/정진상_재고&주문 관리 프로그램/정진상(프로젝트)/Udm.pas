unit Udm;

interface

uses
  SysUtils, Classes, DBXInterBase, DB, DBClient, SimpleDS, SqlExpr, FMTBcd;

type
  Tdm = class(TDataModule)
    SQLConnection1: TSQLConnection;
    order: TSimpleDataSet;
    ordersource: TDataSource;
    product: TSimpleDataSet;
    productsource: TDataSource;
    branch: TSimpleDataSet;
    branchsource: TDataSource;
    brchquery: TSimpleDataSet;
    brchquerysource: TDataSource;
    orderquery: TSimpleDataSet;
    orderquerysource: TDataSource;
    brchnamequerysource: TDataSource;
    brchnamequery: TSimpleDataSet;
    branchbrch_code: TStringField;
    branchname: TStringField;
    branchpnumber: TStringField;
    branchaddress: TStringField;
    productquery: TSimpleDataSet;
    productquerysource: TDataSource;
    pronamequery: TSimpleDataSet;
    pronamequerysource: TDataSource;
    salequery: TSimpleDataSet;
    salequerysource: TDataSource;
    ordernumber: TIntegerField;
    orderbrch_code: TStringField;
    orderbrch_name: TStringField;
    orderbook_code: TStringField;
    orderbook_kind: TStringField;
    orderbook_name: TStringField;
    ordervol: TIntegerField;
    ordertotalprice: TIntegerField;
    orderorderdate: TDateField;
    ordersaledate: TDateField;
    ordermemo: TStringField;
    ordercancelinfo: TStringField;
    ordero_complete: TStringField;
    productbook_code: TStringField;
    productbook_kind: TStringField;
    productbook_name: TStringField;
    productprice: TIntegerField;
    productvol: TIntegerField;
    productimage: TBlobField;
    pronamequerybook_name: TStringField;
    brchnamequeryname: TStringField;
    salequerynumber: TIntegerField;
    salequerybrch_code: TStringField;
    salequerybrch_name: TStringField;
    salequerybook_code: TStringField;
    salequeryvol: TIntegerField;
    salequerytotalprice: TIntegerField;
    salequeryorderdate: TDateField;
    salequerysaledate: TDateField;
    orderquerynumber: TIntegerField;
    orderquerybrch_code: TStringField;
    orderquerybrch_name: TStringField;
    orderquerybook_code: TStringField;
    orderqueryvol: TIntegerField;
    orderquerytotalprice: TIntegerField;
    orderqueryorderdate: TDateField;
    orderqueryo_complete: TStringField;
    productquerynumber: TIntegerField;
    productquerybrch_code: TStringField;
    productquerybrch_name: TStringField;
    productquerybook_code: TStringField;
    productquerybook_kind: TStringField;
    productquerybook_name: TStringField;
    productqueryvol: TIntegerField;
    productquerytotalprice: TIntegerField;
    productqueryorderdate: TDateField;
    productquerysaledate: TDateField;
    productquerymemo: TStringField;
    productquerycancelinfo: TStringField;
    productqueryo_complete: TStringField;
    brchquerynumber: TIntegerField;
    brchquerybrch_code: TStringField;
    brchquerybrch_name: TStringField;
    brchquerybook_code: TStringField;
    brchquerybook_kind: TStringField;
    brchquerybook_name: TStringField;
    brchqueryvol: TIntegerField;
    brchquerytotalprice: TIntegerField;
    brchqueryorderdate: TDateField;
    brchquerysaledate: TDateField;
    brchquerymemo: TStringField;
    brchquerycancelinfo: TStringField;
    brchqueryo_complete: TStringField;
    orderquerysaledate: TDateField;
    procedure brchnamequerysourceDataChange(Sender: TObject; Field: TField);
    procedure pronamequerysourceDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;
  td : TTransactionDesc;

implementation

{$R *.dfm}

procedure Tdm.brchnamequerysourceDataChange(Sender: TObject; Field: TField);
begin
  brchquery.Close;
  brchquery.dataset.Params[0].AsString := brchnamequery.FieldByName('name').AsString;
  brchquery.Open;
end;

procedure Tdm.pronamequerysourceDataChange(Sender: TObject; Field: TField);
begin
  productquery.Close;
  productquery.dataset.Params[0].AsString := pronamequery.FieldByName('book_name').AsString;
  productquery.Open;
end;

initialization
begin
  Td.TransactionID := 1;
  Td.IsolationLevel := xilreadcommitted;
end;

end.
