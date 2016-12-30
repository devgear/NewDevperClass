unit BookDel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TBookDelForm = class(TForm)
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    Edit1: TEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Button1: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BookDelForm: TBookDelForm;

implementation

{$R *.dfm}

uses BookDm;

procedure TBookDelForm.Button1Click(Sender: TObject);
begin
if Messagedlg('정말 삭제할래?', mtConfirmation, [mbok, mbcancel], 0) = mrok then
  begin
    try
      begin
        DataModule1.BookDataSet.Delete;
        DataModule1.BookDataSet.ApplyUpdates(-1); // 디비를 날려주는 것 (갯수제한) -1은 에러갯수제한이 없다.
      end
    Except
      On e: Exception do
        ShowMessage('삭제 오류');
    end;
  end;
end;

procedure TBookDelForm.Edit1Change(Sender: TObject);
begin
  DataModule1.BookDataset.IndexName := 'i_Book';
  DataModule1.BookDataset.FindNearest([Edit1.Text]);
end;

procedure TBookDelForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
