unit DM_Vcl;

interface

uses
  System.SysUtils, System.Classes, Data.DBXDataSnap, IPPeerClient,
  Data.DBXCommon, Data.DB, Datasnap.DBClient, Datasnap.DSConnect, Data.SqlExpr,
  UClientclass_Vcl;

type
  TDM = class(TDataModule)
    SQLConnection1: TSQLConnection;
    DSProviderConnection1: TDSProviderConnection;
    Sights_Source: TDataSource;
    Sights_Set: TClientDataSet;
    Rest_Source: TDataSource;
    Rest_Set: TClientDataSet;
    SBoard_Source: TDataSource;
    SBoard_Set: TClientDataSet;
    RBoard_Source: TDataSource;
    RBoard_Set: TClientDataSet;
    Sights_SetS_NO: TIntegerField;
    Sights_SetS_NAME: TWideStringField;
    Sights_SetS_ADDRESS: TWideStringField;
    Rest_SetR_NO: TIntegerField;
    Rest_SetR_NAME: TWideStringField;
    Rest_SetR_PHONE: TWideStringField;
    Rest_SetR_ADDRESS: TWideStringField;
    Rest_SetR_SNO: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;
  demo : TServerMethods1Client;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  demo := TServerMethods1Client.Create(SQLConnection1.DBXConnection);
end;

end.
