unit Uweb;

interface

uses
  SysUtils, Classes, HTTPApp, DBXInterBase, DB, SqlExpr, HTTPProd, FMTBcd,
  DBWeb, DBBdeWeb, DBXpressWeb, DBClient, SimpleDS;

type
  TWebModule6 = class(TWebModule)
    MainProducer: TPageProducer;
    SQLConnection1: TSQLConnection;
    Query_search: TSQLQuery;
    RevProducer: TPageProducer;
    Query_searchname: TStringField;
    Query_searchprice: TStringField;
    Query_searchtype: TStringField;
    Query_searchname_1: TStringField;
    Query_searchcar_id: TStringField;
    Query_searchbranch_id: TStringField;
    search_producer: TSQLQueryTableProducer;
    FailedProducer: TPageProducer;
    CompleteProducer: TPageProducer;
    revtemp: TSimpleDataSet;
    revtemprev_num: TStringField;
    revtempc_id: TStringField;
    revtempCAR_ID: TStringField;
    revtemprev_date: TDateField;
    revtempuse_date: TIntegerField;
    revtempback_date: TDateField;
    revtempprice: TIntegerField;
    revtempbranch_id: TStringField;
    procedure WebModule6DefaultHandlerAction(Sender: TObject;
      Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
    procedure WebModule6WebActionItem3Action(Sender: TObject;
      Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  WebModuleClass: TComponentClass = TWebModule6;

implementation

{$R *.dfm}

procedure TWebModule6.WebModule6DefaultHandlerAction(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
begin
  Response.Content := '<html><heading/><body>Web Server Application</body></html>';
end;

procedure TWebModule6.WebModule6WebActionItem3Action(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
begin
  if request.QueryFields.Values['option'] ='write' then
  begin
    try
      revtemp.Close;
      revtemp.Open;
      revtemp.Append;

      revtemp.FieldByName('rev_num').AsString := Request.ContentFields.Values['tel'];
      revtemp.FieldByName('c_id').AsString := Request.ContentFields.Values['name'];
      revtemp.FieldByName('use_date').AsString := Request.ContentFields.Values['reatal_date'];

      revtemp.Post;
      revtemp.ApplyUpdates(-1);
      response.Content := CompleteProducer.Content;
      except
        on E: Exception do
        begin
          Response.Content := FailedProducer.Content;

        end;
        end;
  end;
end;

end.
