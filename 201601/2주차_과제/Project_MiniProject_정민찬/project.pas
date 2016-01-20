unit project;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls,
  Vcl.DBCtrls, Vcl.Mask, Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TForm2 = class(TForm)
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Button1: TButton;
    Button3: TButton;
    Button2: TButton;
    Button4: TButton;
    DBGrid1: TDBGrid;
    Button5: TButton;
    DBGrid2: TDBGrid;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit6: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses P_data;




procedure TForm2.Button1Click(Sender: TObject);
begin
dm.tblProject.Append;
dbedit1.SetFocus; //삽입
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
dm.tblProject.edit;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
if messagedlg('정말 삭제 하시겠습니까?', mtconfirmation, [mbyes, mbno], 0) = mryes then
dm.tblproject.delete;
end;

procedure TForm2.Button5Click(Sender: TObject);
begin
dm.tblProject.Post;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form2 := nil;
action:=cafree;
end;

end.
