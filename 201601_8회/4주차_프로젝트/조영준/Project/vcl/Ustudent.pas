unit Ustudent;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TForm5 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    btnclose: TButton;
    Panel2: TPanel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    DBGrid1: TDBGrid;
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
  Form5: TForm5;

implementation

{$R *.dfm}

uses UDM;

procedure TForm5.btncloseClick(Sender: TObject);
begin
  close;
end;

procedure TForm5.Button1Click(Sender: TObject);
begin
  dm.studentDataSet.Post;
  dm.studentDataSet.ApplyUpdates(-1);
end;

procedure TForm5.Button2Click(Sender: TObject);
begin

  if DBEdit3.Text = '' then
  begin
    ShowMessage('확과명을 입력하세요.');
    DBEdit3.SetFocus;
    Exit;
  end;
  if DBEdit4.Text = '' then
  begin
    ShowMessage('이름을 입력하세요.');
    DBEdit4.SetFocus;
    Exit;
  end;
  if DBEdit6.Text = '' then
  begin
    ShowMessage('확과명을 입력하세요.');
    DBEdit6.SetFocus;
    Exit;
  end;

  dm.studentDataSet.append;
  DBEdit3.SetFocus;
  // dm.studentDataSet.ApplyUpdates(-1);
end;

procedure TForm5.Button3Click(Sender: TObject);
begin
    if MessageDlg('학생을 삭제하시겠습니까?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      dm.studentDataSet.Delete;
      dm.studentDataSet.ApplyUpdates(-1);
    end;
end;

procedure TForm5.Button4Click(Sender: TObject);
begin
  dm.studentDataSet.Cancel;
end;

procedure TForm5.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form5 := nil;
  Action := cafree;

end;

end.
