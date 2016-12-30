unit Uprofessor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TForm6 = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    btnclose: TButton;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    DBEdit2: TDBEdit;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure btncloseClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

uses UDM;

procedure TForm6.btncloseClick(Sender: TObject);
begin
close;
end;

procedure TForm6.Button1Click(Sender: TObject);
begin
    dm.PROFESSORDataSet.Post;
    dm.PROFESSORDataSet.ApplyUpdates(-1);
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
   if DBEdit1.Text = '' then
  begin
    ShowMessage('교수번호를 입력하세요.');
    DBEdit1.SetFocus;
    Exit;
  end;
  if DBEdit2.Text = '' then
  begin
    ShowMessage('이름을  입력하세요.');
    DBEdit2.SetFocus;
    Exit;
  end;


  dm.PROFESSORDataSet.append;
  DBEdit1.SetFocus;
end;

procedure TForm6.Button3Click(Sender: TObject);
begin
  if MessageDlg('교수를 삭제하시겠습니까?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    dm.PROFESSORDataSet.Delete;
    dm.PROFESSORDataSet.ApplyUpdates(-1);
  end;
end;

procedure TForm6.Button4Click(Sender: TObject);
begin
dm.PROFESSORDataSet.Cancel;
end;

procedure TForm6.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form6 := nil;
action := cafree;
end;

end.

