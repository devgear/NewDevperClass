unit JoanModule;

interface

uses
  SysUtils, Classes, WideStrings, DBXMySql, FMTBcd, DB, SqlExpr;

type
  TdmJoan = class(TDataModule)
    JoanConnection: TSQLConnection;
    JoanQuery: TSQLQuery;
    SQLQuery1: TSQLQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Joan: TdmJoan;

implementation

{$R *.dfm}

end.
