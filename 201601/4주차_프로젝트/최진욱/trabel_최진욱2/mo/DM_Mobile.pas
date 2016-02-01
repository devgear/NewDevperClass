unit DM_Mobile;

interface

uses
  System.SysUtils, System.Classes, Data.DBXDataSnap, IPPeerClient,
  Data.DBXCommon, Data.DB, Data.SqlExpr, Datasnap.DBClient, Datasnap.DSConnect,UClientclass;

type
  TDM = class(TDataModule)
    SQLConnection1: TSQLConnection;
    DSProviderConnection1: TDSProviderConnection;
    SearchSQueryClient: TClientDataSet;
    SearchRQueryClient: TClientDataSet;
    SearchRBQueryClient: TClientDataSet;
    SearchSBQueryClient: TClientDataSet;
    SearchSQueryClientS_NO: TIntegerField;
    SearchSQueryClientS_NAME: TWideStringField;
    SearchSQueryClientS_ADDRESS: TWideStringField;
    SearchSBQueryClientSB_NO: TIntegerField;
    SearchSBQueryClientSB_TITLE: TWideStringField;
    SearchSBQueryClientSB_GRADE: TWideStringField;
    SearchSBQueryClientM_ID: TWideStringField;
    SearchSBQueryClientSB_SNO: TIntegerField;
    SearchSBQueryClientSB_MEMO: TWideStringField;
    SearchRQueryClientR_NO: TIntegerField;
    SearchRQueryClientR_NAME: TWideStringField;
    SearchRQueryClientR_PHONE: TWideStringField;
    SearchRQueryClientR_ADDRESS: TWideStringField;
    SearchRBQueryClientRB_NO: TIntegerField;
    SearchRBQueryClientRB_TITLE: TWideStringField;
    SearchRBQueryClientRB_GRADE: TWideStringField;
    SearchRBQueryClientM_ID: TWideStringField;
    SearchRBQueryClientRB_RNO: TIntegerField;
    SearchRBQueryClientRB_MEMO: TWideStringField;
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

{%CLASSGROUP 'FMX.Controls.TControl'}



{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  demo := TServerMethods1Client.Create(SQLConnection1.DBXConnection);
end;

end.
