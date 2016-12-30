unit uReaderDM;

interface

uses
  SysUtils, Classes, DBXInterBase, DB, SqlExpr, DBClient, SimpleDS, FMTBcd;

type
  TDM = class(TDataModule)
    SQLConnection: TSQLConnection;
    ReaderQuery: TSQLQuery;
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
