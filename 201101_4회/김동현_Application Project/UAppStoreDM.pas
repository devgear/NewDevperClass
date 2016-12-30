unit UAppStoreDM;

interface

uses
  SysUtils, Classes, DBXInterBase, DB, DBClient, SimpleDS, SqlExpr;

type
  TAppStoreDM = class(TDataModule)
    SQLConnection1: TSQLConnection;
    Item: TSimpleDataSet;
    ItemSource: TDataSource;
    ItemItem_Code: TStringField;
    ItemItem_Name: TStringField;
    ItemItem_Group: TStringField;
    ItemItem_Picture: TBlobField;
    ItemItem_Price: TIntegerField;
    ItemItem_Size: TIntegerField;
    ItemItem_Date: TDateField;
    ItemItem_Maker: TStringField;
    ItemItem_MakeDate: TDateField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AppStoreDM: TAppStoreDM;

implementation

{$R *.dfm}

end.
