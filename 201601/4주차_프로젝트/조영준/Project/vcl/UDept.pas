unit UDept;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TForm4 = class(TForm)
    Panel1: TPanel;
    btnclose: TButton;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure btncloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses UDM;

procedure TForm4.btncloseClick(Sender: TObject);
begin
  close;
end;

procedure TForm4.Button1Click(Sender: TObject);
begin
  if DBEdit1.Text = '' then
  begin
    ShowMessage('학과코드를 입력하세요.');
    DBEdit1.SetFocus;
    Exit;
  end;

  if DBEdit2.Text = '' then
  begin
    ShowMessage('확과명을 입력하세요.');
    DBEdit2.SetFocus;
    Exit;
  end;

  dm.deptDataSet.Post;
  dm.deptDataSet.ApplyUpdates(-1);
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
  dm.deptDataSet.Append;
  DBEdit1.SetFocus
end;

procedure TForm4.Button3Click(Sender: TObject);
begin
  if MessageDlg('부서를 삭제하시겠습니까?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    dm.deptDataSet.Delete;
    dm.deptDataSet.ApplyUpdates(-1);
  end;

end;

procedure TForm4.Button4Click(Sender: TObject);
begin
  dm.deptDataSet.Cancel;
end;

procedure TForm4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form4 := Nil;
  Action := cafree;
end;

end.
