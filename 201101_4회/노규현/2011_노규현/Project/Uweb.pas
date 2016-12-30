unit Uweb;

interface

uses
  SysUtils, Classes, HTTPApp, HTTPProd;

type
  TWebModule7 = class(TWebModule)
    MainProducer: TPageProducer;
    procedure WebModule7DefaultHandlerAction(Sender: TObject;
      Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  WebModuleClass: TComponentClass = TWebModule7;

implementation

{$R *.dfm}

procedure TWebModule7.WebModule7DefaultHandlerAction(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
begin
  Response.Content := '<html><heading/><body>Web Server Application</body></html>';
end;

end.
