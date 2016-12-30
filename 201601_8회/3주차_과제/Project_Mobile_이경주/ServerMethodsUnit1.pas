unit ServerMethodsUnit1;

interface

uses System.SysUtils, System.Classes, System.Json,
    Datasnap.DSServer, Datasnap.DSAuth, DataSnap.DSProviderDataModuleAdapter,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.IB, FireDAC.Phys.IBDef, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.FMXUI.Wait,
  FireDAC.Phys.IBBase, FireDAC.Comp.UI, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Datasnap.Provider;

type
  TServerMethods1 = class(TDSServerModule)
    FDConnection1: TFDConnection;
    count: TFDQuery;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysIBDriverLink1: TFDPhysIBDriverLink;
    book: TFDQuery;
    bookProvider: TDataSetProvider;
    bookBOOK_SEQ: TIntegerField;
    bookBOOK_TITLE: TWideStringField;
    bookBOOK_AUTHOR: TWideStringField;
    bookBOOK_PUBLISHER: TWideStringField;
    bookBOOK_PHONE: TWideStringField;
    bookBOOK_WEBSITE: TWideStringField;
    bookBOOK_COMMENT: TWideStringField;
    bookBOOK_THUMB: TBlobField;
    bookBOOK_IMAGE: TBlobField;
  private
    { Private declarations }
  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    function get_count():string;
  end;

implementation


{$R *.dfm}


uses System.StrUtils;

function TServerMethods1.EchoString(Value: string): string;
begin
  Result := Value;
end;

function TServerMethods1.get_count(): string;
begin
count.Close;
count.Open;
result := count.FieldByName('count').AsString;
end;

function TServerMethods1.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;

end.

