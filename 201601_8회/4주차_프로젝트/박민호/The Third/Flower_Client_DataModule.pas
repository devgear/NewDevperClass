unit Flower_Client_DataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.DS,
  FireDAC.Phys.DSDef, FireDAC.Phys.IBDef, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  Datasnap.Provider, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Phys.IB, Data.DbxDatasnap,
  IPPeerClient, Data.DBXCommon, Datasnap.DBClient, Datasnap.DSConnect,
  Data.SqlExpr;

type
  TDataModule1 = class(TDataModule)
    SQLConnection1: TSQLConnection;
    DSProviderConnection1: TDSProviderConnection;
    Member_ClientDataSet: TClientDataSet;
    Member_DataSource: TDataSource;
    Flower_List_ClientDataSet: TClientDataSet;
    Flower_List_DataSource: TDataSource;
    Reservation_ClientDataSet: TClientDataSet;
    Reservation_DataSource: TDataSource;
    Reservation_Join_ClientDataSet: TClientDataSet;
    Reservation_Join_DataSource: TDataSource;
    Order_ClientDataSet: TClientDataSet;
    Order_DataSource: TDataSource;
    Order_Join_ClientDataSet: TClientDataSet;
    Order_Join_DataSource: TDataSource;
    Member_ClientDataSetMEMBER_SEQ: TIntegerField;
    Member_ClientDataSetMEMBER_NAME: TWideStringField;
    Member_ClientDataSetMEMBER_ADDRESS: TWideStringField;
    Member_ClientDataSetMEMBER_PHONENUMBER: TWideStringField;
    Member_ClientDataSetMEMBER_BIRTHDAY: TSQLTimeStampField;
    Member_ClientDataSetMEMBER_POINT: TIntegerField;
    Member_ClientDataSetMEMBER_LASTVISIT: TSQLTimeStampField;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Flower_ServerMethods;

{$R *.dfm}

end.
