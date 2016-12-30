unit Uwdm;

interface

uses
  SysUtils, Classes, HTTPApp, DBXInterBase, FMTBcd, DBXpressWeb, DSProd, DBWeb,
  SqlExpr, DB, HTTPProd;

type
  TWebModule1 = class(TWebModule)
    SQLConnection1: TSQLConnection;
    MainPageProducer: TPageProducer;
    Board: TSQLTable;
    Client: TSQLTable;
    BoardDataSetTableProducer: TDataSetTableProducer;
    ClientDataSetPageProducer: TDataSetPageProducer;
    ItemQueryTableProducer: TSQLQueryTableProducer;
    ItemQuery: TSQLQuery;
    IntroPageProducer: TPageProducer;
    Item: TSQLTable;
    ItemDataSetTableProducer: TDataSetTableProducer;
    procedure BoardDataSetTableProducerFormatCell(Sender: TObject; CellRow,
      CellColumn: Integer; var BgColor: THTMLBgColor; var Align: THTMLAlign;
      var VAlign: THTMLVAlign; var CustomAttrs, CellData: string);
    procedure WebModule1WebActionItem3Action(Sender: TObject;
      Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  WebModuleClass: TComponentClass = TWebModule1;
  ItemCode: String;

implementation

{$R *.dfm}

procedure TWebModule1.BoardDataSetTableProducerFormatCell(Sender: TObject;
  CellRow, CellColumn: Integer; var BgColor: THTMLBgColor;
  var Align: THTMLAlign; var VAlign: THTMLVAlign; var CustomAttrs,
  CellData: string);
begin
  if (cellcolumn = 4) and (cellrow <> 0) then
      celldata := '<a href = http://localhost:81/AppStoreWeb/Debug/Win32/PAppStoreWeb.exe/Item?icode='+Board.FieldByName('Item_Code').asstring + '>'+ celldata + '</a>';
end;

procedure TWebModule1.WebModule1WebActionItem3Action(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
begin
  ItemQuery.Close;
  ItemQuery.Params[0].AsString := request.QueryFields.Values['Item_Code'];
  ItemQuery.Open;
  Response.Content := ItemQueryTableProducer.Content;
end;

end.
