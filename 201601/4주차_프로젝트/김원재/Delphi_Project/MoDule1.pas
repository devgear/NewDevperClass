unit MoDule1;

interface

uses
  System.SysUtils, System.Classes, Data.DbxDatasnap, IPPeerClient,
  Data.DBXCommon, Data.DB, Datasnap.DBClient, Datasnap.DSConnect, Data.SqlExpr,
  Main_Class;

type
  TDM = class(TDataModule)
    SQLConnection1: TSQLConnection;
    DSProviderConnection1: TDSProviderConnection;
    Client_CDS: TClientDataSet;
    SERCH_MEMBER_CDS: TClientDataSet;
    SERCH_MEMBER_CDSJISA_CODE: TWideStringField;
    SERCH_MEMBER_CDSM_CODE: TWideStringField;
    SERCH_MEMBER_CDSM_NAME: TWideStringField;
    SERCH_MEMBER_CDSM_DEPT: TWideStringField;
    SERCH_MEMBER_CDSM_PHONE: TWideStringField;
    SERCH_MEMBER_CDSM_ADDRESS: TWideStringField;
    SERCH_MEMBER_CDSM_MAIL: TWideStringField;
    MEMBER_DS: TDataSource;
    SERCH_GAMAENG_CDS: TClientDataSet;
    SERCH_GAMAENG_CDSG_CODE: TWideStringField;
    SERCH_GAMAENG_CDSG_NAME: TWideStringField;
    SERCH_GAMAENG_CDSG_CONTNAME: TWideStringField;
    SERCH_GAMAENG_CDSG_KIND: TWideStringField;
    SERCH_GAMAENG_CDSG_PHONE: TWideStringField;
    SERCH_GAMAENG_CDSG_TEL: TWideStringField;
    SERCH_GAMAENG_CDSG_FAX: TWideStringField;
    SERCH_GAMAENG_CDSG_ADDRESS: TWideStringField;
    SERCH_GAMAENG_CDSG_MAIL: TWideStringField;
    GAMAENG_DS: TDataSource;
    MEMBER_Q_DS: TDataSource;
    MEMBER_Q_CDS: TClientDataSet;
    GAMAENG_Q_CDS: TClientDataSet;
    GAMAENG_Q_DS: TDataSource;
    Info_ROOM_CDS: TClientDataSet;
    ROOM_DS: TDataSource;
    ROOM_Q_CDS: TClientDataSet;
    ROOM_Q_DS: TDataSource;
    SERCH_MEMBER_CDSM_DEPTCODE: TWideStringField;
    Info_ROOM_CDSJISA_CODE: TWideStringField;
    Info_ROOM_CDSRM_CODE: TWideStringField;
    Info_ROOM_CDSRM_NAME: TWideStringField;
    Info_ROOM_CDSRM_FLOOR: TWideStringField;
    Info_ROOM_CDSRM_SIZE: TWideStringField;
    Info_ROOM_CDSRM_CHAIR: TIntegerField;
    Info_ROOM_CDSRENT_LIST: TWideStringField;
    Info_ROOM_CDSRM_TOTAL: TWideStringField;
    Info_ROOM_CDSRM_IMG: TBlobField;
    Info_ROOM_CDSRM_GAEK1: TWideStringField;
    Info_ROOM_CDSRM_JAJE1: TIntegerField;
    Info_ROOM_CDSRM_JAJE2: TIntegerField;
    Info_ROOM_CDSRM_JAJE3: TIntegerField;
    Info_ROOM_CDSRM_FIMG: TBlobField;
    RESERVE_Q_CDS: TClientDataSet;
    RESERVE_Q_DS: TDataSource;
    ROOM_Q_CDSJISA_CODE: TWideStringField;
    ROOM_Q_CDSRM_CODE: TWideStringField;
    ROOM_Q_CDSRM_NAME: TWideStringField;
    ROOM_Q_CDSRM_FLOOR: TWideStringField;
    ROOM_Q_CDSRM_SIZE: TWideStringField;
    ROOM_Q_CDSRM_CHAIR: TIntegerField;
    ROOM_Q_CDSRENT_LIST: TWideStringField;
    ROOM_Q_CDSRM_GAEK1: TWideStringField;
    ROOM_Q_CDSRM_JAJE1: TIntegerField;
    ROOM_Q_CDSRM_JAJE2: TIntegerField;
    ROOM_Q_CDSRM_JAJE3: TIntegerField;
    ROOM_Q_CDSRM_TOTAL: TWideStringField;
    ROOM_Q_CDSRM_IMG: TBlobField;
    ROOM_Q_CDSRM_FIMG: TBlobField;
    RES_CDS: TClientDataSet;
    RES_DS: TDataSource;
    RESERVE_CDS: TClientDataSet;
    RESERVE_DS: TDataSource;
    RESERVE_CDSRECORD_NUM: TIntegerField;
    RESERVE_CDSJISA_CODE: TWideStringField;
    RESERVE_CDSSIN_NAME: TWideStringField;
    RESERVE_CDSSIN_CODE: TWideStringField;
    RESERVE_CDSSIN_SONAME: TWideStringField;
    RESERVE_CDSSIN_SOKIND: TWideStringField;
    RESERVE_CDSSIN_TEL: TWideStringField;
    RESERVE_CDSSIN_FAX: TWideStringField;
    RESERVE_CDSSIN_MOBILE: TWideStringField;
    RESERVE_CDSSIN_ADD: TWideStringField;
    RESERVE_CDSSIN_MAIL: TWideStringField;
    RESERVE_CDSSIN_GITA: TWideStringField;
    RESERVE_CDSSIN_ROOMNAME: TWideStringField;
    RESERVE_CDSSIN_FL: TWideStringField;
    RESERVE_CDSSIN_HOSIL: TWideStringField;
    RESERVE_CDSSIN_CHAIR: TWideStringField;
    RESERVE_CDSSIN_DATE: TDateField;
    RESERVE_CDSSIN_KIND: TWideStringField;
    RESERVE_CDSSIN_COUNT: TWideStringField;
    RESERVE_CDSSIN_USEJAJE: TWideStringField;
    RESERVE_CDSSIN_ROOMCOST: TWideStringField;
    RESERVE_CDSSIN_JAJECOST: TWideStringField;
    RESERVE_CDSSIN_TOTALCOST: TWideStringField;
    RESERVE_Q_CDSRECORD_NUM: TIntegerField;
    RESERVE_Q_CDSJISA_CODE: TWideStringField;
    RESERVE_Q_CDSSIN_NAME: TWideStringField;
    RESERVE_Q_CDSSIN_CODE: TWideStringField;
    RESERVE_Q_CDSSIN_SONAME: TWideStringField;
    RESERVE_Q_CDSSIN_SOKIND: TWideStringField;
    RESERVE_Q_CDSSIN_TEL: TWideStringField;
    RESERVE_Q_CDSSIN_FAX: TWideStringField;
    RESERVE_Q_CDSSIN_MOBILE: TWideStringField;
    RESERVE_Q_CDSSIN_ADD: TWideStringField;
    RESERVE_Q_CDSSIN_MAIL: TWideStringField;
    RESERVE_Q_CDSSIN_GITA: TWideStringField;
    RESERVE_Q_CDSSIN_ROOMNAME: TWideStringField;
    RESERVE_Q_CDSSIN_FL: TWideStringField;
    RESERVE_Q_CDSSIN_HOSIL: TWideStringField;
    RESERVE_Q_CDSSIN_CHAIR: TWideStringField;
    RESERVE_Q_CDSSIN_DATE: TDateField;
    RESERVE_Q_CDSSIN_KIND: TWideStringField;
    RESERVE_Q_CDSSIN_COUNT: TWideStringField;
    RESERVE_Q_CDSSIN_USEJAJE: TWideStringField;
    RESERVE_Q_CDSSIN_ROOMCOST: TWideStringField;
    RESERVE_Q_CDSSIN_JAJECOST: TWideStringField;
    RESERVE_Q_CDSSIN_TOTALCOST: TWideStringField;
    RES_CDSRES_CODE: TIntegerField;
    RES_CDSRES_DATE: TDateField;
    RES_CDSRES_RMCODE: TWideStringField;
    RES_CDSRES_RMNAME: TWideStringField;
    procedure SQLConnection1AfterConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;
  demo: TServerMethods1Client;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDM.SQLConnection1AfterConnect(Sender: TObject);
begin
  demo := TServerMethods1Client.Create(SQLConnection1.DBXConnection);
end;

end.
