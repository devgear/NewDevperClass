unit NewBook;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ExtDlgs;

type
  TNewBookForm = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Button1: TButton;
    Button2: TButton;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBImage1: TDBImage;
    GroupBox1: TGroupBox;
    OpenPictureDialog1: TOpenPictureDialog;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBImage1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NewBookForm: TNewBookForm;
  date : TDateTime;

implementation

{$R *.dfm}

uses BookDm;

procedure TNewBookForm.Button1Click(Sender: TObject);
begin
  DataModule1.BookDataset.Post;
  DataModule1.BookDataset.ApplyUpdates(-1);
  DataModule1.BookDataSet.Refresh;
  DataModule1.BookDataSet.Last;
  ShowMessage('등록되었습니다.');
end;

procedure TNewBookForm.Button2Click(Sender: TObject);
begin
   DataModule1.BookDataSet.Cancel;
   DataModule1.BookDataSet.CancelUpdates; // 찌거기 다 없애줘
   Close;
end;

procedure TNewBookForm.DBImage1Click(Sender: TObject);
begin
if OpenPictureDialog1.Execute then
    dbimage1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
end;

procedure TNewBookForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TNewBookForm.FormCreate(Sender: TObject);
begin
  DataModule1.BookDataset.Append;
  DataModule1.BookDataSet.FieldByName('BookNum').AsInteger := 0;
  DataModule1.BookDataSet.FieldByName('RENTAL').AsInteger := 0;
  DBEdit2.Text := DateToStr(now);

end;

end.
