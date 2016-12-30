unit udm;

interface

uses
  SysUtils, Classes, DBXInterBase, DB, SqlExpr, FMTBcd, DBClient, SimpleDS;

type
  Tdm = class(TDataModule)
    SQLConnection1: TSQLConnection;
    gosiDataSource: TDataSource;
    crt: TSimpleDataSet;
    crtNAME: TStringField;
    crtTEL: TStringField;
    crtSUIB: TIntegerField;
    crtBO: TIntegerField;
    crtINDATE: TDateField;
    crtOUTDATE: TDateField;
    crtROOM: TIntegerField;
    crtlist: TSimpleDataSet;
    crtlistDataSource: TDataSource;
    crtlistROOM: TIntegerField;
    crtlistNAME: TStringField;
    crtlistTEL: TStringField;
    crtlistSUIB: TIntegerField;
    crtlistSUIBDATE: TDateField;
    crtlistBO: TIntegerField;
    crtlistINDATE: TDateField;
    crtlistOUTDATE: TDateField;
    items: TSimpleDataSet;
    itemsDataSource: TDataSource;
    roomchk: TSimpleDataSet;
    roomchkDataSource: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{$R *.dfm}

procedure Tdm.DataModuleCreate(Sender: TObject);
begin
 dm.crt.Open;
end;

end.
