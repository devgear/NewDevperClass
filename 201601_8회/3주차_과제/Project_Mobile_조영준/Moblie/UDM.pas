unit UDM;

interface

uses
  System.SysUtils, System.Classes, Fmx.Bind.GenData, Data.Bind.GenData,
  Data.Bind.Components, Data.Bind.ObjectScope, FMX.Graphics, System.IOUtils,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.IB, FireDAC.Phys.IBDef, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.FMXUI.Wait, FireDAC.Phys.IBBase, FireDAC.Comp.UI,
  Data.SqlExpr, Data.DBXDataSnap, IPPeerClient, Data.DBXCommon,
  Datasnap.DBClient, Datasnap.DSConnect, serverMethods;

type
  TDM = class(TDataModule)
    ClientDataSet1: TClientDataSet;
    SQLConnection1: TSQLConnection;
    DSProviderConnection1: TDSProviderConnection;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
//    procedure FDConnection1BeforeConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
//    procedure Connect; // 데이터베이스 연결
    procedure AppendMode; // 입력 모드로 변경
    procedure EditMode; // 수정 모드로 변경
    procedure SetImage(ABitmap: TBitmap); // 이미지저장(본문, 목록의 썸네일 이미지)
    procedure SaveItem; // 항목 저장(입력/수정)
    procedure CancelItem; // 입력/수정 모드 취소
    procedure DeleteItem; // 선택항목 삭제
  end;

var
  DM: TDM;
  demo : TServerMethods1Client;
implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}


// 입력/수정 모드 취소
procedure TDM.CancelItem;
begin
  if ClientDataSet1.UpdateStatus = TUpdateStatus.usInserted then
    ClientDataSet1.Cancel;
end;

// 데이터베이스 연결
//procedure TdmDataAccess.Connect;
//begin
//
//
//
//  ClientDataSet1.Connected := True;
//  ClientDataSet1.Active := True;
//end;

// 현재항목 삭제
procedure TDM.DataModuleCreate(Sender: TObject);
begin
demo := TServerMethods1Client.Create(SQLConnection1.dbxconnection);
end;

procedure TDM.DataModuleDestroy(Sender: TObject);
begin
demo.free ;
end;

procedure TDM.DeleteItem;
begin
  ClientDataSet1.Delete;
  ClientDataSet1.ApplyUpdates(-1);
 // FDQuery1.CommitUpdates;
  ClientDataSet1.Refresh;
end;

// 수정모드
procedure TDM.EditMode;
begin
  ClientDataSet1.Edit;
end;

//procedure TdmDataAccess.FDConnection1BeforeConnect(Sender: TObject);
//begin
//{$IFNDEF MSWINDOWS}
//  FDConnection1.Params.Values['Database'] := TPath.Combine(TPath.GetDocumentsPath, 'BOOKLOG.GDB');
//{$ENDIF}
//end;

// 입력모드
procedure TDM.AppendMode;
begin
  ClientDataSet1.Append;
end;

// 항목 저장
procedure TDM.SaveItem;
begin
  // 입력 시  BOOK_SEQ 자동생성되지만 미 입력 시 오류
  if ClientDataSet1.UpdateStatus = TUpdateStatus.usInserted then
    ClientDataSet1.FieldByName('BOOK_SEQ').AsInteger := 0;

  ClientDataSet1.Post;
  ClientDataSet1.ApplyUpdates(-1);
 // FDQuery1.CommitUpdates;
  ClientDataSet1.Refresh;
end;

// 이미지 저장(본문이미지와 목록에 표시할 썸네일)
procedure TDM.SetImage(ABitmap: TBitmap);
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

    (ClientDataSet1.FieldByName('BOOK_IMAGE') as TBlobField).LoadFromStream(ImgStream);
    (ClientDataSet1.FieldByName('BOOK_THUMB') as TBlobField).LoadFromStream(ThumbStream);
  finally
    ImgStream.Free;
    ThumbStream.Free;
  end;
end;


end.
