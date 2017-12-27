unit UDm;

interface

uses
  System.SysUtils, System.Classes, Data.DBXDataSnap, Data.DBXCommon, IPPeerClient, Data.DB, Data.SqlExpr,
  Datasnap.Provider, Datasnap.DBClient, Datasnap.DSConnect, UClientClass;

type
  TDM = class(TDataModule)
    LibConnection: TSQLConnection;
    DSProviderConnection1: TDSProviderConnection;
    Cl_qryUser: TClientDataSet;
    CL_qryCheckLogin: TClientDataSet;
    UserSource: TDataSource;
    CheckLoginSource: TDataSource;
    Cl_DuplicateID: TClientDataSet;
    DuplicatedIDSource: TDataSource;
    Cl_qryLibAddress: TClientDataSet;
    LibAddressSource: TDataSource;
    Cl_qryLibName: TClientDataSet;
    LibNameSource: TDataSource;
    RentSource: TDataSource;
    Cl_qryRent: TClientDataSet;
    Cl_qrySeat: TClientDataSet;
    qrySeat_Source: TDataSource;
    Cl_DupSeat: TClientDataSet;
    qryDupSeat_source: TDataSource;
    Cl_qrySeatRENT_SEATNUM: TIntegerField;
    Cl_qryTalking: TClientDataSet;
    qryTalking_Source: TDataSource;
    Cl_qryUserUSER_SEQ: TAutoIncField;
    Cl_qryUserUSER_NAME: TWideStringField;
    Cl_qryUserUSER_ID: TWideStringField;
    Cl_qryUserUSER_PW: TStringField;
    Cl_qryUserUSER_PHONE: TStringField;
    Cl_qryUserUSER_MAIL: TWideStringField;
    Cl_qryUserUSER_OUT_YN: TStringField;
    Cl_qryLibNameLIB_SEQ: TAutoIncField;
    Cl_qryLibNameLIBNAME: TWideStringField;
    Cl_qryLibNameLIBADDRESS: TWideStringField;
    Cl_qryLibNameLIBOPEN: TTimeField;
    Cl_qryLibNameLIBCLOSE: TTimeField;
    Cl_qryLibNameLIBHOLIDAY: TDateField;
    Cl_qryLibAddressLIBADDRESS: TWideStringField;
    Cl_DuplicateIDUSER_ID: TWideStringField;
    CL_qryCheckLoginUSER_SEQ: TIntegerField;
    CL_qryCheckLoginUSER_NAME: TWideStringField;
    CL_qryCheckLoginUSER_ID: TWideStringField;
    CL_qryCheckLoginUSER_PW: TStringField;
    CL_qryCheckLoginUSER_PHONE: TStringField;
    CL_qryCheckLoginUSER_MAIL: TWideStringField;
    CL_qryCheckLoginUSER_OUT_YN: TStringField;

    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    function CheckCheck(AID: string; APW: string): boolean;

  private
    { Private declarations }
  public
    { Public declarations }
    myseq: integer;
    myuser: string;
  end;

var
  DM: TDM;
  demo: TServerMethods1Client;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}
{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  demo := TServerMethods1Client.CREATE(LibConnection.DBXConnection);
end;

procedure TDM.DataModuleDestroy(Sender: TObject);
begin
  demo.Free;
end;

function TDM.CheckCheck(AID: string; APW: string): boolean; // 아이디 비번 로그인체크
begin
  Result := False;
  CL_qryCheckLogin.Close;

  CL_qryCheckLogin.ParamByName('ID').AsString := AID;
  CL_qryCheckLogin.ParamByName('PW').AsString := APW;
  CL_qryCheckLogin.Open;

  if (CL_qryCheckLogin.RecordCount > 0) then
  begin
    myseq := CL_qryCheckLogin.FieldByName('User_Seq').AsInteger;
    myuser := CL_qryCheckLogin.FieldByName('User_ID').AsString;
    Result := True;
  end;

end;

end.
