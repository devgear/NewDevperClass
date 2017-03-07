unit Udata;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.IB,
  FireDAC.Phys.IBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.ImageList, Vcl.ImgList, Vcl.Controls;

type
  TDataModule5 = class(TDataModule)
    FDConnection1: TFDConnection;
    HosQuery: TFDQuery;
    UserQuery: TFDQuery;
    TradeQuery: TFDQuery;
    ItemQuery: TFDQuery;
    ItemQueryITEM_NAME: TWideStringField;
    ItemQueryITEM_PRICE: TIntegerField;
    ItemQueryITEM_SIZE: TWideStringField;
    ItemQueryITEM_EA: TWideStringField;
    ItemQueryITEM_BLANK: TWideStringField;
    hos_report_query: TFDQuery;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    IntegerField1: TIntegerField;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    StringField1: TStringField;
    BlobField1: TBlobField;
    WideStringField5: TWideStringField;
    user_report_query: TFDQuery;
    WideStringField6: TWideStringField;
    WideStringField7: TWideStringField;
    IntegerField2: TIntegerField;
    WideStringField8: TWideStringField;
    StringField2: TStringField;
    dsHOS_TR: TDataSource;
    HosQueryHOS_NAME: TWideStringField;
    HosQueryHOS_ADDRESS: TWideStringField;
    HosQueryHOS_ID: TIntegerField;
    HosQueryHOS_REP: TWideStringField;
    HosQueryHOS_PER: TWideStringField;
    HosQueryHOS_PHONE: TStringField;
    HosQueryHOA_IMG: TBlobField;
    HosQueryHOS_PART: TWideStringField;
    HosQueryHOS_SEQ: TIntegerField;
    UserQueryUSER_NAME: TWideStringField;
    UserQueryUSER_ADDRESS: TWideStringField;
    UserQueryUSER_ID: TIntegerField;
    UserQueryUSER_REP: TWideStringField;
    UserQueryUSER_PHONE: TStringField;
    FDQuery1: TFDQuery;
    ItemQueryITEM_SEQ: TIntegerField;
    FDUpdateSQL1: TFDUpdateSQL;
    TradeQueryTR_HOS_NAME: TWideStringField;
    TradeQueryTR_ITEM: TWideStringField;
    TradeQueryTR_DATA: TDateField;
    TradeQueryTR_RESULT: TIntegerField;
    TradeQueryTR_ITEM_NUM: TIntegerField;
    TradeQueryHOS_SEQ: TFDAutoIncField;
    TradeQueryITEM_SEQ: TFDAutoIncField;
    TradeQueryTR_SEQ: TFDAutoIncField;
    TradeQueryTR_PRICE: TIntegerField;
    TradeQueryTR_TAX: TSingleField;
    TradeQueryTR_BLANK: TWideStringField;
    TradeQueryTR_FIGURE: TSingleField;
    TradeQueryITEM_NAME: TWideStringField;
    TradeQueryITEM_PRICE: TIntegerField;
    FDQuery1TR_HOS_NAME: TWideStringField;
    FDQuery1TR_ITEM: TWideStringField;
    FDQuery1TR_DATA: TDateField;
    FDQuery1TR_RESULT: TIntegerField;
    FDQuery1TR_ITEM_NUM: TIntegerField;
    FDQuery1HOS_SEQ: TFDAutoIncField;
    FDQuery1ITEM_SEQ: TIntegerField;
    FDQuery1TR_SEQ: TFDAutoIncField;
    FDQuery1TR_PRICE: TIntegerField;
    FDQuery1TR_TAX: TSingleField;
    FDQuery1TR_BLANK: TWideStringField;
    FDQuery1TR_FIGURE: TSingleField;
    FDQuery1ITEM_PRICE: TIntegerField;
    FDQuery1ITEM_NAME: TWideStringField;
    FDQuery1HOS_NAME: TWideStringField;
    hos_report_queryHOS_SEQ: TIntegerField;
    ImageList1: TImageList;


  private

    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule5: TDataModule5;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UMain;

{$R *.dfm}


{ TDataModule5 }



end.
