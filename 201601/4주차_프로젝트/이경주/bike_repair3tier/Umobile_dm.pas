unit Umobile_dm;

interface

uses
  System.SysUtils, System.Classes, Data.DBXDataSnap, IPPeerClient,
  Data.DBXCommon, Data.DB, Datasnap.DBClient, Unit7, Datasnap.DSConnect,
  Data.SqlExpr,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Data.Bind.Components, Data.Bind.DBScope;

type
  Tdm = class(TDataModule)
    SQLConnection1: TSQLConnection;
    bike: TClientDataSet;
    user2: TClientDataSet;
    repairman: TClientDataSet;
    repaircenter: TClientDataSet;
    DSProviderConnection1: TDSProviderConnection;
    duringview: TClientDataSet;
    comview: TClientDataSet;
    repairlist: TClientDataSet;
    repairlistUNAME: TWideStringField;
    repairlistUPHONE: TWideStringField;
    repairlistRESERVEDATE: TSQLTimeStampField;
    repairlistCOMPO: TWideStringField;
    repairlistCNAME: TWideStringField;
    repairlistSCORE: TIntegerField;
    repairlistRKEY: TWideStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public

    { Public declarations }
  end;

var
  dm: Tdm;
   demo: TServerMethods1Client;
implementation

{ %CLASSGROUP 'FMX.Controls.TControl' }


{$R *.dfm}

procedure Tdm.DataModuleCreate(Sender: TObject);
begin
  //Ubike_mobile.Form3.btn_login.OnClick
  demo := TServerMethods1Client.Create(SQLConnection1.dbxconnection);
end;

procedure Tdm.DataModuleDestroy(Sender: TObject);
begin
  demo.Free;
end;

end.
