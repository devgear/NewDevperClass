unit UDM;

interface

uses
  System.SysUtils, System.Classes, Data.DBXDataSnap, IPPeerClient,
  Data.DBXCommon, Datasnap.DBClient, Datasnap.DSConnect, Data.DB, Data.SqlExpr,
  FMX.Graphics, System.IOUtils, UClass;

type
  TDM = class(TDataModule)
    SQLConnection1: TSQLConnection;
    DSProviderConnection1: TDSProviderConnection;
    Book_List: TClientDataSet;
    procedure SQLConnection1BeforeConnect(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AppendMode;
    procedure EditMode;
    procedure SetImage(ABitmap: TBitmap);
    procedure SaveItem;
    procedure CancelItem;
    procedure DeleteItem;
  end;

var
  DM: TDM;
  Demo:TServerMethods1Client;

implementation

{ %CLASSGROUP 'FMX.Controls.TControl' }


{$R *.dfm}

procedure TDM.AppendMode;
begin
  Book_List.append;
end;

procedure TDM.CancelItem;
begin
  if Book_List.UpdateStatus = TUpdateStatus.usInserted then
    Book_List.cancel;
end;

procedure TDM.DataModuleCreate(Sender: TObject);
begin
demo:= TServerMethods1Client.Create(SQLConnection1.DBXConnection);
end;

procedure TDM.DataModuleDestroy(Sender: TObject);
begin
demo.Free;
end;

procedure TDM.DeleteItem;
begin
  Book_List.delete;
  Book_List.applyupdates(-1);
  Book_List.refresh;
end;

procedure TDM.EditMode;
begin
  Book_List.edit;
end;

procedure TDM.SaveItem;
begin
  if Book_List.UpdateStatus = TUpdateStatus.usInserted then
    Book_List.fieldbyname('book_seq').AsInteger := 0;

  Book_List.post;
  Book_List.applyupdates(-1);
  Book_List.refresh;
end;

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

    (Book_List.fieldbyname('BOOK_IMAGE') as TBlobField)
      .LoadFromStream(ImgStream);
    (Book_List.fieldbyname('BOOK_THUMB') as TBlobField)
      .LoadFromStream(ThumbStream);
  finally
    ImgStream.Free;
    ThumbStream.Free;
  end;
end;

procedure TDM.SQLConnection1BeforeConnect(Sender: TObject);
begin
{$IFNDEF MSWINDOWS}
  SQLConnection1.Params.Values['Database'] :=
    TPath.Combine(TPath.GetDocumentsPath, 'BOOKLOG.GDB');
{$ENDIF}
end;

end.
