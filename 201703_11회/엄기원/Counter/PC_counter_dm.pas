unit PC_counter_dm;

interface

uses
  System.SysUtils, System.Classes, ClientClassesUnit2, Data.DBXDataSnap,
  Data.DBXCommon, IPPeerClient, Datasnap.DBClient, Datasnap.DSConnect, Data.DB,
  Data.SqlExpr, ServerMethodsUnit2, Vcl.ExtCtrls;

type
  Tclientmodule = class(TDataModule)
    SQLConnection1: TSQLConnection;
    DSProviderConnection1: TDSProviderConnection;
    ClientData_client: TClientDataSet;
    DataSource_client: TDataSource;
    ClientData_clientCLIENT_NO: TSmallintField;
    ClientData_clientUSER_NO: TIntegerField;
    ClientData_clientCLIENT_CON: TStringField;
    ClientData_USER: TClientDataSet;
    DataSource_user: TDataSource;
    ClientData_USERUSER_NO: TIntegerField;
    ClientData_USERUSER_ID: TStringField;
    ClientData_USERUSER_PW: TStringField;
    ClientData_USERUSER_NAME: TStringField;
    ClientData_USERUSER_BIRTH: TStringField;
    ClientData_USERUSER_PHONE: TStringField;
    ClientData_USERUSER_CASH: TIntegerField;
    ClientData_USERUSER_TIME: TIntegerField;
    ClientData_USERUSER_CON: TStringField;
    Timer1: TTimer;
    ClientData_update: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    StringField6: TStringField;
    DataSource_update: TDataSource;
    ClientData_TIME: TClientDataSet;
    DataSource_TIME: TDataSource;
    ClientData_TIMETIME_NO: TIntegerField;
    ClientData_TIMETIME_NAME: TStringField;
    ClientData_TIMETIM_PRISE: TIntegerField;
    ClientData_TIMETIME_TIME: TIntegerField;
    ClientDataSet_login_history: TClientDataSet;
    DataSource_login_history: TDataSource;
    ClientDataSet_login_historyLOGIN_DAY: TStringField;
    ClientDataSet_login_historyLOGIN_TIME: TStringField;
    ClientDataSet_login_historyEND_DAY: TStringField;
    ClientDataSet_login_historyEND_TIME: TStringField;
    ClientDataSet_login_historyLOGIN_CLIENT: TIntegerField;
    ClientDataSet_login_historyUSER_ID: TStringField;
    ClientDataSet_addtime: TClientDataSet;
    DataSource_addtime: TDataSource;
    ClientDataSet_addtimeADD_DAY: TStringField;
    ClientDataSet_addtimeADD_TIME: TStringField;
    ClientDataSet_addtimeTIME_NAME: TStringField;
    ClientDataSet_addtimeNOW_TIME: TStringField;
    ClientDataSet_addtimeUSER_ID: TStringField;
    ClientDataSet_day_day: TClientDataSet;
    DataSource_dayday: TDataSource;
    ClientDataSet_day_dayADD_DAY: TStringField;
    ClientDataSet_day_dayHC: TIntegerField;
    ClientDataSet_day_dayHS: TLargeintField;
    ClientDataSet_day_dayCC: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);


  private
    FInstanceOwner: Boolean;
    FServerMethods2Client: TServerMethods2Client;
    function GetServerMethods2Client: TServerMethods2Client;
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    property InstanceOwner: Boolean read FInstanceOwner write FInstanceOwner;
    property ServerMethods2Client: TServerMethods2Client read GetServerMethods2Client write FServerMethods2Client;

end;

var
  clientmodule: Tclientmodule;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

constructor Tclientmodule.Create(AOwner: TComponent);
begin
  inherited;
  FInstanceOwner := True;
end;

procedure Tclientmodule.DataModuleCreate(Sender: TObject);
begin
Timer1.Enabled := TRue;
end;

destructor Tclientmodule.Destroy;
begin
  FServerMethods2Client.Free;
  inherited;
end;

function Tclientmodule.GetServerMethods2Client: TServerMethods2Client;
begin
  if FServerMethods2Client = nil then
  begin
    SQLConnection1.Open;
    FServerMethods2Client:= TServerMethods2Client.Create(SQLConnection1.DBXConnection, FInstanceOwner);
  end;
  Result := FServerMethods2Client;
end;

procedure Tclientmodule.Timer1Timer(Sender: TObject);
begin
  ClientData_client.Refresh;
  ClientData_user.Refresh;
end;

end.
