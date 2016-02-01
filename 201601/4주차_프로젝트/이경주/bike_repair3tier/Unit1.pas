unit Unit1;

interface

uses
  System.SysUtils, System.Classes, Data.DBXDataSnap, IPPeerClient,
  Data.DBXCommon, Data.DB, Datasnap.DBClient, Datasnap.DSConnect, Data.SqlExpr;

type
  TDataModule1 = class(TDataModule)
    SQLConnection1: TSQLConnection;
    bike: TClientDataSet;
    user: TClientDataSet;
    repairman: TClientDataSet;
    repaircenter: TClientDataSet;
    repairlist: TClientDataSet;
    DSProviderConnection1: TDSProviderConnection;
    bikeDS: TDataSource;
    userDS: TDataSource;
    repairmanDS: TDataSource;
    repaircenterDS: TDataSource;
    repairlistDS: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
