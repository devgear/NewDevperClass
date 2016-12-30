unit ServerMethodsUnit1;

interface

uses System.SysUtils, System.Classes, System.Json,
    Datasnap.DSServer, Datasnap.DSAuth, DataSnap.DSProviderDataModuleAdapter,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.IBDef, FireDAC.VCLUI.Wait, FireDAC.Comp.UI,
  FireDAC.Phys.IBBase, FireDAC.Phys.IB, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  Datasnap.Provider, FireDAC.Comp.DataSet;

type
  TServerMethods1 = class(TDSServerModule)
    FDConnection1: TFDConnection;
    FDPhysIBDriverLink1: TFDPhysIBDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    BookList_Query: TFDQuery;
    BookList_QueryBOOK_TITLE: TWideStringField;
    BookList_QueryBOOK_AUTHOR: TWideStringField;
    BookList_QueryBOOK_PUBLISHER: TWideStringField;
    BookList_QueryBOOK_PHONE: TWideStringField;
    BookList_QueryBOOK_WEBSITE: TWideStringField;
    BookList_QueryBOOK_COMMENT: TWideStringField;
    BookList_QueryBOOK_THUMB: TBlobField;
    BookList_QueryBOOK_IMAGE: TBlobField;
    Book_List: TDataSetProvider;
    BookList_QueryBOOK_SEQ: TIntegerField;
    Count_Query: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    function Get_count:integer;
  end;

implementation


{$R *.dfm}


uses System.StrUtils;


function TServerMethods1.EchoString(Value: string): string;
begin
  Result := Value;
end;

function TServerMethods1.Get_count: integer;
begin
  count_query.Close;
  Count_Query.SQL.Clear;
  count_query.SQL.Text := 'select count(book_seq) as total from book_log';
  count_query.Open;
  result := count_query.FieldByName('total').AsInteger;
end;

function TServerMethods1.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;

end.

