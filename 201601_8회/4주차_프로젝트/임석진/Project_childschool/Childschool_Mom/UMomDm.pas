unit UMomDm;

interface

uses
  System.SysUtils, System.Classes, Data.DBXDataSnap, IPPeerClient,
  Data.DBXCommon, Datasnap.DBClient, Datasnap.DSConnect, Data.DB, Data.SqlExpr;

type
  TDataModule1 = class(TDataModule)
    SQLConnection1: TSQLConnection;
    DSProviderConnection1: TDSProviderConnection;
    CDS_Teacher: TClientDataSet;
    CDS_TeacherT_NAME: TWideStringField;
    CDS_TeacherT_AGE: TIntegerField;
    CDS_TeacherT_ADDRESS: TWideStringField;
    CDS_TeacherT_PHONE: TWideStringField;
    CDS_TeacherT_DEPT: TWideStringField;
    CDS_TeacherT_MANAGEMENT: TIntegerField;
    CDS_TeacherT_COMMENT: TWideStringField;
    CDS_TeacherT_SCORE: TIntegerField;
    CDS_TeacherT_IMAGE: TBlobField;
    CDS_Student_Info: TClientDataSet;
    CDS_Student_InfoS_NAME: TWideStringField;
    CDS_Student_InfoS_AGE: TIntegerField;
    CDS_Student_InfoS_ADDRESS: TWideStringField;
    CDS_Student_InfoS_CLASS: TWideStringField;
    CDS_Student_InfoP_NAME: TWideStringField;
    CDS_Student_InfoP_AGE: TIntegerField;
    CDS_Student_InfoP_PHONE: TWideStringField;
    CDS_Student_InfoP_COMMENT: TWideStringField;
    CDS_Student_InfoT_IMAGE: TBlobField;
    CDS_MEMO: TClientDataSet;
    CDS_MEMOM_DATE: TWideStringField;
    CDS_MEMOM_MEMO: TWideStringField;
    CDS_MEMOM_EDITER: TWideStringField;
    CDS_QA: TClientDataSet;
    CDS_QAQ_DATE: TWideStringField;
    CDS_QAQ_MEMO: TWideStringField;
    CDS_QAQ_NAME: TWideStringField;
    CDS_QAA_DATE: TWideStringField;
    CDS_QAA_MEMO: TWideStringField;
    CDS_QAA_NAME: TWideStringField;
    CDS_QARESULT: TIntegerField;
    function Connect(AHost, APort:string):Boolean; // 데이터베이스 연결
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

{ TDataModule1 }

function TDataModule1.Connect(AHost, APort: string): Boolean;
begin
  Result := False;
  SQLConnection1.Connected :=False;
  CDS_Teacher.Active:=False;
  CDS_Student_Info.Active := False;
  CDS_MEMO.Active := False;
  CDS_QA.Active:=False;
  SQLConnection1.Params.Values['HostName']:= AHost;
  SQLConnection1.Params.Values['Port']:=APort;
  SQLConnection1.Connected :=True;
  CDS_Teacher.Active:= True;
  CDS_Student_Info.Active:= True;
  CDS_MEMO.Active := True;
  CDS_QA.Active:=True;

  Result:= True;
end;

end.
