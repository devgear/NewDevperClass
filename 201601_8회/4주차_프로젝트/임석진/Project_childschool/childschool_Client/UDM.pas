unit UDM;

interface

uses
  System.SysUtils, System.Classes, Data.DBXDataSnap, IPPeerClient,
  Data.DBXCommon, Data.DB, Datasnap.DBClient, Datasnap.DSConnect,
  Data.SqlExpr,FMX.Graphics;

type

  TDM = class(TDataModule)
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
    procedure Teacher_SetImage(ABitmap :TBitmap);                                     //이미지저장

    { Private declarations }
  public
    { Public declarations }

  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

uses UMain_Form;

{$R *.dfm}

{ TTeacher }
// 이미지 저장(본문이미지와 목록에 표시할 썸네일)
procedure TDM.TEacher_SetImage(ABitmap: TBitmap);
var
  ImgStream: TMemoryStream;
begin
  ImgStream := TMemoryStream.Create;
  try
    ABitmap.SaveToStream(ImgStream);

    (CDS_Teacher.FieldByName('T_IMAGE') as TBlobField).LoadFromStream(ImgStream);
  finally
    ImgStream.Free;
  end;
end;

end.
