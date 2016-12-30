unit Uwm;

interface

uses
  SysUtils, Classes, HTTPApp, HTTPProd, DB, ADODB, DBXInterBase, FMTBcd, DBWeb,
  SqlExpr, DBBdeWeb, DBClient, SimpleDS, DSProd, dialogs;

type
  TWebModule1 = class(TWebModule)
    IndexProducer: TPageProducer;
    SQLConnection1: TSQLConnection;
    MenuProducer: TPageProducer;
    LocationProducer: TPageProducer;
    ReservationProducer: TPageProducer;
    CompleteProducer: TPageProducer;
    FailedProducer: TPageProducer;
    ReservationDataSet: TSimpleDataSet;
    ReservationTable: TSQLTable;
    foodTable: TSQLTable;
    procedure WebModule1DefaultHandlerAction(Sender: TObject;
      Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
    procedure WebModule1MenuActionAction(Sender: TObject; Request: TWebRequest;
      Response: TWebResponse; var Handled: Boolean);
    procedure MenuProducerHTMLTag(Sender: TObject; Tag: TTag;
      const TagString: string; TagParams: TStrings; var ReplaceText: string);
    procedure WebModule1AccepterActionAction(Sender: TObject;
      Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  WebModuleClass: TComponentClass = TWebModule1;

implementation

{$R *.dfm}

procedure TWebModule1.MenuProducerHTMLTag(Sender: TObject; Tag: TTag;
  const TagString: string; TagParams: TStrings; var ReplaceText: string);
var
  nameStr:String;
  i: byte;
begin
  if CompareText(TagString, 'foodlist') =0 then  //food_info의 이름,가격을 읽어와 뿌려준다.
  begin
    with foodTable do
    begin
    Open;
    for i := 0 to RecordCount-1 do
    begin
       nameStr := ''+nameStr+Fields[1].AsString +'<br>'+ Fields[2].AsString+'원'+'<br><br><br><br><br><br><br><br><br><br><br><br>';
       next;
    end;
  end;
  ReplaceText := nameStr;
end;
end;

procedure TWebModule1.WebModule1AccepterActionAction(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
begin
  if Request.QueryFields.Values['option'] = 'write' then
  begin                                   // submit()이 눌리면
    try                                   // 예약정보를 ReservationDataSet을 통해 insert한다.
      ReservationDataSet.Close;           // ReservationTable의 count를 통해num을 +1 시킨다.
      ReservationDataSet.Open;
      ReservationTable.Close;
      ReservationTable.Open;
      ReservationDataSet.Append;

      ReservationDataSet.FieldByName('r_num').AsInteger := ReservationTable.RecordCount+1;
      ReservationDataSet.FieldByName('r_date').AsString :=
Request.ContentFields.values['a_year'] +'-'+ Request.ContentFields.values['a_month'] +'-'+ Request.ContentFields.values['a_day'];
      ReservationDataSet.FieldByName('r_name').asstring := Request.ContentFields.values['name'];
      ReservationDataSet.FieldByName('r_phone').AsString :=
Request.ContentFields.values['tel1']+'-'+Request.ContentFields.values['tel2']+'-'+Request.ContentFields.values['tel3'];
      ReservationDataSet.FieldByName('r_time').AsString :=
Request.ContentFields.Values['a_hh']+':'+Request.ContentFields.Values['a_nn'];
      ReservationDataSet.FieldByName('r_memo').asstring := Request.ContentFields.values['Comment'];
      ReservationDataSet.FieldByName('r_remarks').AsBoolean := True;

      ReservationDataSet.post;
      ReservationDataSet.ApplyUpdates(-1);
      Response.Content := CompleteProducer.Content;
    except
      on E: Exception do
      begin
        Response.Content := FailedProducer.Content;
      end;
    end;
  end
  else
  begin
    Response.Content := ReservationProducer.Content;
  end;
end;

procedure TWebModule1.WebModule1DefaultHandlerAction(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
begin
  Response.Content := '<html><heading/><body>Web Server Application</body></html>';
end;

procedure TWebModule1.WebModule1MenuActionAction(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
begin
Response.Content := MenuProducer.Content;
end;

end.
