unit Flower_DataModule_Mobile;

interface

uses
  System.SysUtils, System.Classes, Data.DBXDataSnap, IPPeerClient,
  Data.DBXCommon, Data.DB, Datasnap.DBClient, Datasnap.DSConnect, Data.SqlExpr;

type
  TDataModule2 = class(TDataModule)
    SQLConnection1: TSQLConnection;
    DSProviderConnection1: TDSProviderConnection;
    Flower_List_ClientDataSet: TClientDataSet;
    Reservation_ClientDataSet: TClientDataSet;
    Flower_Main_ClientDataSet: TClientDataSet;
    Flower_List_ClientDataSetLIST_SEQ: TIntegerField;
    Flower_List_ClientDataSetLIST_NAME: TWideStringField;
    Flower_List_ClientDataSetLIST_QTY: TWideStringField;
    Flower_List_ClientDataSetLIST_PRICE: TIntegerField;
    Flower_List_ClientDataSetLIST_POINT: TIntegerField;
    Flower_List_ClientDataSetLIST_IMAGE: TBlobField;
    Flower_List_ClientDataSetLIST_SCIENTIFICNAME: TWideStringField;
    Flower_List_ClientDataSetLIST_AREA: TWideStringField;
    Flower_List_ClientDataSetLIST_PERIOD: TWideStringField;
    Flower_List_ClientDataSetLIST_LANGUAGE: TWideStringField;
    Reservation_ClientDataSetRESERVATION_SEQ: TIntegerField;
    Reservation_ClientDataSetRESERVATION_DATE: TSQLTimeStampField;
    Reservation_ClientDataSetRESERVATION_TIME: TSQLTimeStampField;
    Reservation_ClientDataSetLIST_SEQ: TIntegerField;
    Reservation_ClientDataSetRESERVATION_QTY: TIntegerField;
    Reservation_ClientDataSetRESERVATION_NAME: TWideStringField;
    Reservation_ClientDataSetRESERVATION_PHONENUMBER: TWideStringField;
    Reservation_ClientDataSetRECIPIENT_NAME: TWideStringField;
    Reservation_ClientDataSetRECIPIENT_PHONENUMBER: TWideStringField;
    Reservation_ClientDataSetRECIPIENT_ADDRESS: TWideStringField;
    Reservation_ClientDataSetRESERVATION_PRICE_TOTAL: TIntegerField;
    Reservation_ClientDataSetRESERVATION_ETC: TWideStringField;
    Reservation_ClientDataSetRECIPIENT_ETC: TWideStringField;
    Reservation_ClientDataSetRECEIVE_TYPE: TWideStringField;
    Reservation_ClientDataSetPAYMENT_TYPE: TWideStringField;
    Reserve_Query_ClientDataSet: TClientDataSet;
    Reserve_Query_ClientDataSetRESERVATION_SEQ: TIntegerField;
    Reserve_Query_ClientDataSetRESERVATION_DATE: TSQLTimeStampField;
    Reserve_Query_ClientDataSetRESERVATION_TIME: TSQLTimeStampField;
    Reserve_Query_ClientDataSetLIST_SEQ: TIntegerField;
    Reserve_Query_ClientDataSetRESERVATION_QTY: TIntegerField;
    Reserve_Query_ClientDataSetRESERVATION_NAME: TWideStringField;
    Reserve_Query_ClientDataSetRESERVATION_PHONENUMBER: TWideStringField;
    Reserve_Query_ClientDataSetRECIPIENT_NAME: TWideStringField;
    Reserve_Query_ClientDataSetRECIPIENT_PHONENUMBER: TWideStringField;
    Reserve_Query_ClientDataSetRECIPIENT_ADDRESS: TWideStringField;
    Reserve_Query_ClientDataSetRESERVATION_PRICE_TOTAL: TIntegerField;
    Reserve_Query_ClientDataSetRESERVATION_ETC: TWideStringField;
    Reserve_Query_ClientDataSetRECIPIENT_ETC: TWideStringField;
    Reserve_Query_ClientDataSetRECEIVE_TYPE: TWideStringField;
    Reserve_Query_ClientDataSetPAYMENT_TYPE: TWideStringField;
    procedure Reservation_ClientDataSetNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

procedure TDataModule2.Reservation_ClientDataSetNewRecord(DataSet: TDataSet);
begin
//     Reservation_ClientDataSetList_SEQ.Value := 99;
end;

end.
