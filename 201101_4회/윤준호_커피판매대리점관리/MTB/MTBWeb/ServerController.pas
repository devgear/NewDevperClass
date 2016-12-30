unit ServerController;

interface

uses
  SysUtils, Classes, IWServerControllerBase, IWBaseForm, HTTPApp,
  // For OnNewSession Event
  UserSessionUnit, IWApplication, IWAppForm, DBXInterBase, FMTBcd, DB, DBClient,
  Provider, SqlExpr, DBXDataSnap, DBXCommon, DSConnect, SimpleDS;

type
  Tl = class(TIWServerControllerBase)
    DSProviderConnection1: TDSProviderConnection;
    SqlServerMethod1: TSqlServerMethod;
    SQLConnection1: TSQLConnection;
    Item: TClientDataSet;
    ItemSource: TDataSource;
    procedure IWServerControllerBaseNewSession(ASession: TIWApplication;
      var VMainForm: TIWBaseForm);

  private
    
  public
  end;


  function UserSession: TIWUserSession;
  function l: Tl;

implementation

{$R *.dfm}

uses
  IWInit, IWGlobal;

function l: Tl;
begin
  Result := Tl(GServerController);
end;



function UserSession: TIWUserSession;
begin
  Result := TIWUserSession(WebApplication.Data);
end;

procedure Tl.IWServerControllerBaseNewSession(
  ASession: TIWApplication; var VMainForm: TIWBaseForm);
begin
  ASession.Data := TIWUserSession.Create(nil);
end;


initialization
  Tl.SetServerControllerClass;

end.

