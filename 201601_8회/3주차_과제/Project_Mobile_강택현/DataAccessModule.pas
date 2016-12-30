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
  Datasnap.DSConnect, Data.SqlExpr, Main_Class;

type
  TdmDataAccess = class(TDataModule)
    SQLConnection1: TSQLConnection;
    DSProviderConnection1: TDSProviderConnection;
    get_Count: TClientDataSet;
    book_Qry: TClientDataSet;
    book_Qry_Source1: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    // procedure Connect; // 데이터베이스 연결
    procedure AppendMode; // 입력 모드로 변경
    procedure EditMode; // 수정 모드로 변경
    procedure SetImage(ABitmap: TBitmap); // 이미지저장(본문, 목록의 썸네일 이미지)
    procedure SaveItem; // 항목 저장(입력/수정)
    procedure CancelItem; // 입력/수정 모드 취소
    procedure DeleteItem; // 선택항목 삭제
    function connect(): integer;  //서버 연결
  end;

var
  dmDataAccess: TdmDataAccess;
  dm: TServerMethods1Client;

implementation

{ %CLASSGROUP 'FMX.Controls.TControl' }

uses MainForm;

{$R *.dfm}

// 입력/수정 모드 취소
procedure TdmDataAccess.CancelItem;
begin
  if book_Qry.UpdateStatus = TUpdateStatus.usInserted then
    book_Qry.Cancel;
end;

//서버 연결
function TdmDataAccess.connect(): integer;
begin
  // 서버 정보 입력
  SQLConnection1.params.values['HostName'] := form1.Edit1.Text;
  SQLConnection1.params.values['Port'] := form1.Edit2.Text;
  try
    SQLConnection1.connected := true;
    dm := TServerMethods1Client.Create
      (dmDataAccess.SQLConnection1.DBXConnection);
    book_Qry.Active := true;
    result := 1;
  except
    abort();
  end;
end;

// 모듈이 올라갈 때 서버 연결
procedure TdmDataAccess.DataModuleCreate(Sender: TObject);
begin
  // dm := TServerMethods1Client.Create(SQLConnection1.DBXConnection);
end;

// 모듈이 종료될 때 서버 해제
procedure TdmDataAccess.DataModuleDestroy(Sender: TObject);
begin
  dm.Free;
end;

// 현재항목 삭제
procedure TdmDataAccess.DeleteItem;
begin
  book_Qry.delete;
  book_Qry.applyupdates(-1);
  book_Qry.refresh;
end;

// 수정모드
procedure TdmDataAccess.EditMode;
begin
  book_Qry.edit;
end;

// 입력모드
procedure TdmDataAccess.AppendMode;
begin
  book_Qry.append;
end;

// 항목 저장
procedure TdmDataAccess.SaveItem;
begin
  // 입력 시  BOOK_SEQ 자동생성되지만 미 입력 시 오류
  if book_Qry.UpdateStatus = TUpdateStatus.usInserted then
    book_Qry.fieldbyname('book_seq').AsInteger := 0;

  book_Qry.post;
  book_Qry.applyupdates(-1);
  book_Qry.refresh;
end;

// 이미지 저장(본문이미지와 목록에 표시할 썸네일)
procedure TdmDataAccess.SetImage(ABitmap: TBitmap);
var
  Thumbnail: TBitmap;
  ImgStream, ThumbStream: TMemoryStream;
begin
  ImgStream := TMemoryStream.Create; // 메모리 버퍼 할당
  ThumbStream := TMemoryStream.Create;
  try
    ABitmap.SaveToStream(ImgStream); // 버퍼에 저장된 이미지 저장
    Thumbnail := ABitmap.CreateThumbnail(100, 100); // 이미지 사이즈 변경
    Thumbnail.SaveToStream(ThumbStream); // 저장

    (book_Qry.fieldbyname('BOOK_IMAGE') as TBlobField)
      .LoadFromStream(ImgStream);
    (book_Qry.fieldbyname('BOOK_THUMB') as TBlobField)
      .LoadFromStream(ThumbStream);
  finally
    ImgStream.Free; // 메모리 버퍼 해제
    ThumbStream.Free;
  end;
end;

end.
