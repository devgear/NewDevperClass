unit USDM;

interface

uses
  SysUtils, Classes, DBXInterBase, DB, DBClient, SimpleDS, SqlExpr, sqltimst;

type
  TSDM = class(TDataModule)
    SQLConnection2: TSQLConnection;
    Shop: TSimpleDataSet;
    ShopSource: TDataSource;
    Item: TSimpleDataSet;
    ItemSource: TDataSource;
    ShopS_ID: TStringField;
    ShopC_NAME: TStringField;
    ShopC_MASTER: TStringField;
    ShopC_PW: TStringField;
    ShopC_ADDR: TStringField;
    ShopC_TEL: TStringField;
    ShopC_JOIN: TSQLTimeStampField;
    ShopC_IMAGE: TBlobField;
    ItemI_ID: TStringField;
    ItemS_ID: TStringField;
    ItemI_NAME: TStringField;
    ItemI_COST: TIntegerField;
    ItemI_DATE: TSQLTimeStampField;
    ItemI_IMAGE: TBlobField;
    procedure ShopNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SDM: TSDM;

implementation

{$R *.dfm}

procedure TSDM.ShopNewRecord(DataSet: TDataSet);
begin
  ShopC_JOIN.Value := DateTimeToSQLTimeStamp(date);
end;

end.
