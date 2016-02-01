unit UManager_Dm;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.SqlExpr, Data.DBXDataSnap,
  IPPeerClient, Data.DBXCommon, Datasnap.DBClient, Datasnap.DSConnect;

type
  TDM = class(TDataModule)
    SQLConnection1: TSQLConnection;
    DSProviderConnection1: TDSProviderConnection;
    TimesCDS: TClientDataSet;
    PersonCDS: TClientDataSet;
    TimesDS: TDataSource;
    PersonDS: TDataSource;
    PersonCDSP_ID: TIntegerField;
    PersonCDSP_NAME: TStringField;
    PersonCDSP_ACHIEVEMENT: TStringField;
    PersonCDSP_PHOTO: TBlobField;
    PersonCDSP_H_ID: TIntegerField;
    PersonCDSP_Times: TStringField;
    TimesCDSH_ID: TIntegerField;
    TimesCDSH_TIMES: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
