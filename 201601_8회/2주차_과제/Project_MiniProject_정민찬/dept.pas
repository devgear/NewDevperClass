unit dept;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls;

type
  TForm3 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Button1: TButton;
    Button3: TButton;
    Button2: TButton;
    Button4: TButton;
    Button5: TButton;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses P_data;

procedure TForm3.Button1Click(Sender: TObject);
begin
dm.dept.insert;
dbedit5.SetFocus;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
dm.dept.Edit;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
if messagedlg('정말 삭제 하시겠습니까?', mtconfirmation, [mbyes, mbno], 0) = mryes then
dm.dept.delete;
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
pagecontrol1.TabIndex:= 0;
end;

procedure TForm3.Button5Click(Sender: TObject);
begin
dm.dept.Post;
end;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form3 := nil;
action := cafree;
end;



end.
