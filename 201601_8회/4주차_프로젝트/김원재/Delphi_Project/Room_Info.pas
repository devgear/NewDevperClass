unit Room_Info;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask;

type
  TRoomInfo_Form = class(TForm)
    Panel1: TPanel;
    GridPanel1: TGridPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    DBGrid1: TDBGrid;
    Ãþ: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Label2: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    GroupBox1: TGroupBox;
    DBImage1: TDBImage;
    DBImage2: TDBImage;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Edit10: TEdit;
    Edit11: TEdit;
    procedure DBGrid1DblClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RoomInfo_Form: TRoomInfo_Form;

implementation

{$R *.dfm}

uses ServerMethodsUnit1, MoDule1;


procedure TRoomInfo_Form.DBGrid1DblClick(Sender: TObject);
var
  Stream, Stream2 : TMemoryStream;
  Bitmap, Bitmap2 : TBitmap;
begin
  RoomInfo_Form.Edit1.Text := DM.ROOM_DS.DataSet.FieldByName('RM_FLOOR').AsString;
  RoomInfo_Form.Edit2.Text := DM.ROOM_DS.DataSet.FieldByName('RM_CODE').AsString;
  RoomInfo_Form.Edit3.Text := DM.ROOM_DS.DataSet.FieldByName('RM_NAME').AsString;
  RoomInfo_Form.Edit4.Text := DM.ROOM_DS.DataSet.FieldByName('RENT_LIST').AsString;
  RoomInfo_Form.Edit5.Text := DM.ROOM_DS.DataSet.FieldByName('RM_CHAIR').AsString;
  RoomInfo_Form.Edit6.Text := DM.ROOM_DS.DataSet.FieldByName('RM_SIZE').AsString;
  RoomInfo_Form.Edit7.Text := DM.ROOM_DS.DataSet.FieldByName('RM_GAEK1').AsString;
  RoomInfo_Form.Edit8.Text := DM.ROOM_DS.DataSet.FieldByName('RM_JAJE1').AsString;
  RoomInfo_Form.Edit9.Text := DM.ROOM_DS.DataSet.FieldByName('RM_JAJE2').AsString;
  RoomInfo_Form.Edit10.Text := DM.ROOM_DS.DataSet.FieldByName('RM_JAJE3').AsString;
  RoomInfo_Form.Edit11.Text := DM.ROOM_DS.DataSet.FieldByName('RM_TOTAL').AsString;
  Bitmap := TBitmap.Create;
  Bitmap2 := TBitmap.Create;
  Stream := TMemoryStream.Create;
  Stream2 := TMemoryStream.Create;
  try
    (DM.ROOM_DS.DataSet.FieldByName('RM_IMG') as TBlobField).SaveToStream(Stream);
    Stream.Position := 0;
    Bitmap.LoadFromStream(Stream);
    DBImage1.Picture.Bitmap.Assign(Bitmap);
    (DM.ROOM_DS.DataSet.FieldByName('RM_FIMG') as TBlobField).SaveToStream(Stream2);
    Stream2.Position := 0;
    Bitmap2.LoadFromStream(Stream2);
    DBImage2.Picture.Bitmap.Assign(Bitmap2);
  finally
    Bitmap.Free;
    Stream.Free;
    Bitmap2.Free;
    Stream2.Free;
  end;
//  RoomInfo_Form.DBImage1.Picture.Assign();
//
//  Picture.Assign( := DM.ROOM_DS.DataSet.FieldByName('RM_IMG').;


end;
end.
