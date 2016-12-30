unit uBarDM;

interface

uses
  SysUtils, Classes, DBXInterBase, DB, SqlExpr, FMTBcd;

type
  TDM = class(TDataModule)
    SQLConnection: TSQLConnection;
    OrderListQuery: TSQLQuery;
    orderokQuery: TSQLQuery;
    StockQuery: TSQLQuery;
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
