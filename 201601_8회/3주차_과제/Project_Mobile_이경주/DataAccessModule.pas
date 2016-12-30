unit DataAccessModule;

interface

uses
  System.SysUtils, System.Classes, Fmx.Bind.GenData, Data.Bind.GenData,
  Data.Bind.Components, Data.Bind.ObjectScope, Fmx.Graphics, System.IOUtils,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.IB, FireDAC.Phys.IBDef, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.FMXUI.Wait, FireDAC.Phys.IBBase, FireDAC.Comp.UI,
  Data.DBXDataSnap, IPPeerClient, Data.DBXCommon, Datasnap.DBClient,
  Datasnap.DSConnect, Data.SqlExpr, Unit1;

type
  TdmDataAccess = class(TDataModule)
    SQLConnection1: TSQLConnection;
    DSProviderConnection1: TDSProviderConnection;
    book: TClientDataSet;
    booksource: TDataSource;
    count: TClientDataSet;
    procedure FDConnection1BeforeConnect(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    //procedure Connect; // 데이터베이스 연결
    procedure AppendMode; // 입력 모드로 변경
    procedure EditMode; // 수정 모드로 변경
    procedure SetImage(ABitmap: TBitmap); // 이미지저장(본문, 목록의 썸네일 이미지)
    procedure SaveItem; // 항목 저장(입력/수정)
    procedure CancelItem; // 입력/수정 모드 취소
    procedure DeleteItem; // 선택항목 삭제
  end;

var
  dmDataAccess: TdmDataAccess;
  Demo: TServerMethods1Client;

implementation

{ %CLASSGROUP 'FMX.Controls.TControl' }

{$R *.dfm}

// 입력/수정 모드 취소
procedure TdmDataAccess.CancelItem;
begin
  // if FDQuery1.UpdateStatus = TUpdateStatus.usInserted then
  // FDQuery1.Cancel;
  if book.UpdateStatus = TUpdateStatus.usInserted then
    book.Cancel;
end;

// 데이터베이스 연결
//procedure TdmDataAccess.Connect;
//begin
//
//  // FDConnection1.Connected := True;
//  // FDQuery1.Active := True;
//end;

procedure TdmDataAccess.DataModuleCreate(Sender: TObject);
begin
  Demo := TServerMethods1Client.Create(SQLConnection1.DBXConnection);
 // FDConnection1BeforeConnect(true);
end;

procedure TdmDataAccess.DataModuleDestroy(Sender: TObject);
begin
  Demo.Free;
end;

// 현재항목 삭제
procedure TdmDataAccess.DeleteItem;
begin
  // dmDataAccess.DeleteItem;
  // FDQuery1.Delete;
  // FDQuery1.ApplyUpdates(0);
  // FDQuery1.CommitUpdates;
  // FDQuery1.Refresh;
  book.Delete;
  book.ApplyUpdates(-1);
  book.Refresh;
end;

// 수정모드
procedure TdmDataAccess.EditMode;
begin
  // FDQuery1.Edit;
  //SQLConnection1.DriverName.
  //Insert('localhost');
book.Edit;

end;

procedure TdmDataAccess.FDConnection1BeforeConnect(Sender: TObject);
begin
{$IFNDEF MSWINDOWS}
  FDConnection1.Params.Values['Database'] :=
    TPath.Combine(TPath.GetDocumentsPath, 'BOOKLOG.GDB');
{$ENDIF}
end;

// 입력모드
procedure TdmDataAccess.AppendMode;
begin
  // FDQuery1.Append;
  book.Append;
  book.ApplyUpdates(-1);
end;

// 항목 저장
procedure TdmDataAccess.SaveItem;
begin
  // 입력 시  BOOK_SEQ 자동생성되지만 미 입력 시 오류
  if book.UpdateStatus = TUpdateStatus.usInserted then
    book.fieldbyname('book_seq').AsInteger := 0;

  book.post;
  book.applyupdates(-1);
  book.refresh;
end;

// 이미지 저장(본문이미지와 목록에 표시할 썸네일)
procedure TdmDataAccess.SetImage(ABitmap: TBitmap);
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


    (book.FieldByName('BOOK_IMAGE') as TBlobField).LoadFromStream(ImgStream);
     (book.FieldByName('BOOK_THUMB') as TBlobField).LoadFromStream(ThumbStream);
  finally
    ImgStream.Free;
    ThumbStream.Free;
  end;
end;

end.
