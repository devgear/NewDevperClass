unit PC_Dm;

interface

uses
  System.SysUtils, System.Classes, Data.DBXDataSnap, Data.DBXCommon,
  IPPeerClient, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Datasnap.DBClient, Datasnap.DSConnect, Data.SqlExpr;

type
  TDm_PC = class(TDataModule)
    SQLConnection1: TSQLConnection;
    DSProviderConnection1: TDSProviderConnection;
    cdsTmpOrderlist: TClientDataSet;
    cdsTmpOrderlistTABLENUM: TIntegerField;
    cdsTmpOrderlistMENU: TWideStringField;
    cdsTmpOrderlistPEOPLE: TIntegerField;
    cdsTmpOrderlistTOTALPRICE: TIntegerField;
    cdsOrderDb: TClientDataSet;
    cdsOrderDetail: TClientDataSet;
    cdsOrderDetailKEYNUM: TIntegerField;
    cdsOrderDetailTABLENUM: TIntegerField;
    cdsOrderDetailMENU: TWideStringField;
    cdsOrderDetailPEOPLE: TIntegerField;
    cdsOrderDetailTOTALPRICE: TIntegerField;
    cdsOrderDbKEYNUM: TIntegerField;
    cdsOrderDbORDERDATE: TDateField;
    cdsOrderDbTABLENUM: TIntegerField;
    cdsOrderDbTOTALPRICE: TIntegerField;
    cdsTotal: TClientDataSet;
    cdsTotalTABLENUM2: TIntegerField;
    cdsTotalTOTALPRICE2: TLargeintField;
    cdsTmpOrderlistKEYNUM: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Dm_PC: TDm_PC;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}



{$R *.dfm}

end.
