unit JoanModule;

interface

uses
  SysUtils, Classes, WideStrings, DBXMySql, FMTBcd, DB, SqlExpr;

type
  TJoanDataModule = class(TDataModule)
    JoanTest: TSQLConnection;
    JoanSQL: TSQLQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  JoanDataModule: TJoanDataModule;

implementation

{$R *.dfm}

end.
