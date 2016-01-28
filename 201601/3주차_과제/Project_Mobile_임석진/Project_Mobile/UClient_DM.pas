unit UClient_DM;

interface

uses
  System.SysUtils, System.Classes, Data.DBXDataSnap, IPPeerClient,
  Data.DBXCommon, Data.DB, Datasnap.DBClient, Datasnap.DSConnect, Data.SqlExpr,FMX.Graphics,FMX.Types;

type
  TDataModule1 = class(TDataModule)
    SQLConnection1: TSQLConnection;
    DSProviderConnection1: TDSProviderConnection;
    Book_Log_CDS: TClientDataSet;
    Book_Log_CDSBOOK_SEQ: TIntegerField;
    Book_Log_CDSBOOK_TITLE: TWideStringField;
    Book_Log_CDSBOOK_AUTHOR: TWideStringField;
    Book_Log_CDSBOOK_PUBLISHER: TWideStringField;
    Book_Log_CDSBOOK_PHONE: TWideStringField;
    Book_Log_CDSBOOK_WEBSITE: TWideStringField;
    Book_Log_CDSBOOK_COMMENT: TWideStringField;
    Book_Log_CDSBOOK_THUMB: TBlobField;
    Book_Log_CDSBOOK_IMAGE: TBlobField;
  private
    { Private declarations }
  public
    { Public declarations }
    function Connect(AHost, APort:string):Boolean; // 데이터베이스 연결
    procedure AppendMode; // 입력 모드로 변경
    procedure EditMode; // 수정 모드로 변경
    procedure SetImage(ABitmap: TBitmap); // 이미지저장(본문, 목록의 썸네일 이미지)
    procedure SaveItem; // 항목 저장(입력/수정)
    procedure CancelItem; // 입력/수정 모드 취소
    procedure DeleteItem; // 선택항목 삭제
    procedure Refresh; //세로고침
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

{ TDataModule1 }

procedure TDataModule1.AppendMode;
begin
  Book_Log_CDS.Append;
end;

procedure TDataModule1.CancelItem; //입력 수정 모드 취소
begin
  if Book_Log_CDS.UpdateStatus= TUpdateStatus.usInserted then
    Book_Log_CDS.Cancel;
end;


function TDataModule1.Connect(AHost, APort: string): Boolean;//연결
begin
  Result := False;
  SQLConnection1.Connected :=False;
  Book_Log_CDS.Active := False;
  try
    SQLConnection1.Params.Values['HostName']:= AHost;
    SQLConnection1.Params.Values['Port']:=APort;
    SQLConnection1.Connected :=True;
    Book_Log_CDS.Active := True;
    Book_Log_CDS.Refresh;
    Result:= True;
  except on E : Exception do
    Log.d(E.Message);
  end;
end;

procedure TDataModule1.DeleteItem;//삭제
begin
  Book_Log_CDS.Delete;
  Book_Log_CDS.ApplyUpdates(0);
  Book_Log_CDS.Refresh;
end;

procedure TDataModule1.EditMode;//수정
begin
  Book_Log_CDS.Edit;
end;

procedure TDataModule1.Refresh;//세로고침
begin
  Book_Log_CDS.Refresh;
end;

procedure TDataModule1.SaveItem;//저장
begin
  if Book_Log_CDS.UpdateStatus = TUpdateStatus.usInserted then
    Book_Log_CDS.FieldByName('BOOK_SEQ').AsInteger :=0;
  Book_Log_CDS.Post;
  Book_Log_CDS.ApplyUpdates(0);
  Book_Log_CDS.Refresh;
end;

// 이미지 저장(본문이미지와 목록에 표시할 썸네일)
procedure TDataModule1.SetImage(ABitmap: TBitmap);
var
  Thumbnail: TBitmap;
  ImgStream, ThumbStream: TMemoryStream;
begin
  ImgStream := TMemoryStream.Create;
  ThumbStream := TMemoryStream.Create;
  try
    ABitmap.SaveToStream(ImgStream);
    Thumbnail := ABitmap.CreateThumbnail(100, 100);
    Thumbnail.SaveToStream(ThumbStream);

    (Book_Log_CDS.FieldByName('BOOK_IMAGE') as TBlobField).LoadFromStream(ImgStream);
    (Book_Log_CDS.FieldByName('BOOK_THUMB') as TBlobField).LoadFromStream(ThumbStream);
  finally
    ImgStream.Free;
    ThumbStream.Free;
  end;
end;

end.
