unit BookDm;

interface

uses
  System.SysUtils, System.Classes, Data.DBXDataSnap, IPPeerClient,
  Data.DBXCommon, Data.DB, Datasnap.DBClient, Datasnap.DSConnect, Data.SqlExpr,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.IB, FireDAC.Phys.IBDef, FireDAC.Comp.Client,Data.SqlTimSt, UClient;

type
  TDataModule1 = class(TDataModule)
    DSProviderConnection1: TDSProviderConnection;
    BookingSource: TDataSource;
    MemberSource: TDataSource;
    RentalSource: TDataSource;
    RentalBookDataSource: TDataSource;
    BookSource: TDataSource;
    BookingDataSet: TClientDataSet;
    MemberDataSet: TClientDataSet;
    RentalDataSet: TClientDataSet;
    RentalBookDataSet: TClientDataSet;
    SQLConnection1: TSQLConnection;
    MemberjoinDataSet: TClientDataSet;
    memberjoinDataSource: TDataSource;
    BookDataSet: TClientDataSet;
    BookingDataSetBOOKINGNUM: TIntegerField;
    BookingDataSetBOOKINGNAME: TWideStringField;
    BookingDataSetBOOKINGDATE: TDateField;
    BookingDataSetBOOKNUM: TIntegerField;
    BookingDataSetID: TWideStringField;
    MemberDataSetID: TWideStringField;
    MemberDataSetJUMIN: TWideStringField;
    MemberDataSetNAME: TWideStringField;
    MemberDataSetAGE: TWideStringField;
    MemberDataSetPHONE: TWideStringField;
    MemberDataSetADDRESS: TWideStringField;
    RentalDataSetRENTALNUM: TIntegerField;
    RentalDataSetRENTALDAY: TDateField;
    RentalDataSetID: TWideStringField;
    RentalBookDataSetRENTALBOOKNUM: TIntegerField;
    RentalBookDataSetPERIOD: TWideStringField;
    RentalBookDataSetRENTALNUM: TIntegerField;
    RentalBookDataSetBOOKNUM: TIntegerField;
    RentalBookDataSetRETURNOK: TBooleanField;
    BookDataSetBOOKNUM: TIntegerField;
    BookDataSetREGDAY: TDateField;
    BookDataSetBOOKNAME: TWideStringField;
    BookDataSetAUTHOR: TWideStringField;
    BookDataSetCATEGORY: TWideStringField;
    BookDataSetPUBLISH: TWideStringField;
    BookDataSetPUBLISHYEAR: TWideStringField;
    BookDataSetBOOKIMAGE: TBlobField;
    BookDataSetTOTAL: TIntegerField;
    BookDataSetRENTAL: TIntegerField;
    MemberjoinDataSetRENTALNUM: TIntegerField;
    MemberjoinDataSetID: TWideStringField;
    MemberjoinDataSetBOOKNAME: TWideStringField;
    MemberjoinDataSetBOOKNUM: TIntegerField;
    MemberjoinDataSetRENTALBOOKNUM: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1 : TDataModule1;
  server : TServerMethods1Client;
implementation
{%CLASSGROUP 'Vcl.Controls.TControl'}

uses BookDel, Booking, BookMain, Join, MainRental, MemberDel, NewBook, Rental,
  RentalBook, Return;


{$R *.dfm}


{ TDataModule1 }

procedure TDataModule1.DataModuleCreate(Sender: TObject);
begin
  server :=  TServerMethods1Client.create(Sqlconnection1.DBXConnection);
end;

procedure TDataModule1.DataModuleDestroy(Sender: TObject);
begin
 server.Free;
end;

end.
