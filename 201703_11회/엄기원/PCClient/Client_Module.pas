unit Client_Module;

interface

uses
  System.SysUtils, System.Classes, ClientClassesUnit1, Data.DBXDataSnap,
  System.IniFiles,
  Data.DBXCommon, IPPeerClient, Data.DB, Datasnap.DBClient, Datasnap.DSConnect,
  Data.SqlExpr, Unit3, Vcl.Forms;

type
  TClientModule1 = class(TDataModule)
    SQLConnection1: TSQLConnection;
    DSProviderConnection1: TDSProviderConnection;
    DataSource_client: TDataSource;
    ClientData_client: TClientDataSet;
    ClientData_clientCLIENT_NO: TSmallintField;
    ClientData_clientUSER_NO: TIntegerField;
    ClientData_clientCLIENT_CON: TStringField;
    DataSource_User: TDataSource;
    ClientData_User: TClientDataSet;
    ClientData_UserUSER_NO: TIntegerField;
    ClientData_UserUSER_ID: TStringField;
    ClientData_UserUSER_PW: TStringField;
    ClientData_UserUSER_NAME: TStringField;
    ClientData_UserUSER_BIRTH: TStringField;
    ClientData_UserUSER_PHONE: TStringField;
    ClientData_UserUSER_CASH: TIntegerField;
    ClientData_UserUSER_TIME: TIntegerField;
    ClientData_UserUSER_CON: TStringField;
    ClientDataSet_login_history: TClientDataSet;
    ClientDataSet_login_historyLOGIN_NO: TIntegerField;
    ClientDataSet_login_historyUSER_NO: TIntegerField;
    ClientDataSet_login_historyLOGIN_DAY: TStringField;
    ClientDataSet_login_historyLOGIN_TIME: TStringField;
    ClientDataSet_login_historyEND_DAY: TStringField;
    ClientDataSet_login_historyEND_TIME: TStringField;
    ClientDataSet_login_historyLOGIN_CLIENT: TIntegerField;
    DataSource_login_history: TDataSource;
    procedure DataModuleCreate(Sender: TObject);

  private
    FInstanceOwner: Boolean;
    FServerMethods2Client: TServerMethods2Client;
    function GetServerMethods2Client: TServerMethods2Client;
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    property InstanceOwner: Boolean read FInstanceOwner write FInstanceOwner;
    property ServerMethods2Client: TServerMethods2Client
      read GetServerMethods2Client write FServerMethods2Client;

  end;

var
  PCNo: Integer;
  ClientModule1: TClientModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

constructor TClientModule1.Create(AOwner: TComponent);
begin
  inherited;
  FInstanceOwner := True;
end;

procedure TClientModule1.DataModuleCreate(Sender: TObject);
var
  serverMethods: TServerMethods2Client;
  Path: string;
  IniFile: TIniFile;
  //PCNo: Integer;
begin

  Path := ExtractFilePath(Application.ExeName) + 'Info.ini';

  IniFile := TIniFile.Create(Path);
  try
    PCNo := IniFile.ReadInteger('PC', 'No', 0);

    // Edit_Client_No.Text := IntToStr(PCNo)+'¹ø ÀÚ¸®';
  finally
    IniFile.Free;
  end;

  serverMethods := TServerMethods2Client.Create(SQLConnection1.DBXConnection);
  serverMethods.con_Client(PCNo);
  // ServerMethods2Client.con_Client(pcno: Integer).create;

end;

destructor TClientModule1.Destroy;
var
  serverMethods: TServerMethods2Client;
begin
  serverMethods := TServerMethods2Client.Create(SQLConnection1.DBXConnection);
  serverMethods.con_Client_off(PCNo);

  FServerMethods2Client.Free;
  inherited;
end;

function TClientModule1.GetServerMethods2Client: TServerMethods2Client;
begin
  if FServerMethods2Client = nil then
  begin
    SQLConnection1.Open;
    FServerMethods2Client := TServerMethods2Client.Create
      (SQLConnection1.DBXConnection, FInstanceOwner);
  end;
  Result := FServerMethods2Client;
end;

end.
