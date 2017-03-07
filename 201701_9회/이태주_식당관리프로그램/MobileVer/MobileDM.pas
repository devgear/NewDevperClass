unit MobileDM;

interface

uses
  System.SysUtils, System.Classes, Datasnap.DBClient, Datasnap.DSConnect,
  Data.DB, Data.SqlExpr, Data.DBXDataSnap, Data.DBXCommon,IPPeerClient;

type
  TDataModule1 = class(TDataModule)
    cdsTmpOrderlist: TClientDataSet;
    cdsKitchen: TClientDataSet;
    SQLConnection1: TSQLConnection;
    DSProviderConnection1: TDSProviderConnection;
    cdsTmpOrderlistTABLENUM: TIntegerField;
    cdsTmpOrderlistMENU: TWideStringField;
    cdsTmpOrderlistPEOPLE: TIntegerField;
    cdsKitchenKIND: TWideStringField;
    cdsKitchenMENU: TWideStringField;
    cdsKitchenPEOPLE: TIntegerField;
    cdsTmpOrderlistTOTALPRICE: TIntegerField;
    cdsTmpOrderlistKEYNUM: TIntegerField;
    cdsKind: TClientDataSet;
    cdsKindKIND: TWideStringField;
    cdsKindMENU: TWideStringField;
    cdsKindPRICE: TIntegerField;
    cdsKeyChange: TClientDataSet;
    cdsKeyChangeKEYNUM: TIntegerField;
    cdsKitchenKITCHEN_SEQ: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

uses
fmx.types;

end.
