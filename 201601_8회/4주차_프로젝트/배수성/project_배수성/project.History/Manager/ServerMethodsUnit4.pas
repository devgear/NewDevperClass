unit ServerMethodsUnit4;

interface

uses System.SysUtils, System.Classes, System.Json,
    Datasnap.DSServer, Datasnap.DSAuth, DataSnap.DSProviderDataModuleAdapter,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.IB, FireDAC.Phys.IBDef, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Datasnap.Provider, FireDAC.Comp.UI,
  FireDAC.Phys.IBBase;

type
  TServerMethods4 = class(TDSServerModule)
    FDConnection1: TFDConnection;
    TimesFDT: TFDTable;
    PersonFDT: TFDTable;
    TimesProvider: TDataSetProvider;
    PersonProvider: TDataSetProvider;
    FDPhysIBDriverLink1: TFDPhysIBDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    TimesFDTH_ID: TIntegerField;
    TimesFDTH_TIMES: TStringField;
    PersonFDTP_ID: TIntegerField;
    PersonFDTP_NAME: TStringField;
    PersonFDTP_ACHIEVEMENT: TStringField;
    PersonFDTP_PHOTO: TBlobField;
    PersonFDTP_H_ID: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
  end;

implementation


{$R *.dfm}


uses System.StrUtils, UHistory_ServerMain;

function TServerMethods4.EchoString(Value: string): string;
begin
  Result := Value;
end;

function TServerMethods4.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;

end.

