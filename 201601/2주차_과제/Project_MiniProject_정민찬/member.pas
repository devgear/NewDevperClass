unit member;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls;

type
  TForm4 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Button1: TButton;
    Button3: TButton;
    Button2: TButton;
    Button4: TButton;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBGrid1: TDBGrid;
    Button5: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
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

uses P_data;



procedure TForm4.Button1Click(Sender: TObject);
begin
dm.member.insert;
dbedit6.SetFocus;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
dm.member.edit;
end;

procedure TForm4.Button3Click(Sender: TObject);
begin
if messagedlg('정말 삭제 하시겠습니까?', mtconfirmation, [mbyes, mbno], 0) = mryes then
dm.member.delete;
end;

procedure TForm4.Button4Click(Sender: TObject);
begin
pagecontrol1.TabIndex:= 0;
end;

procedure TForm4.Button5Click(Sender: TObject);
begin
dm.member.Post;
end;

procedure TForm4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form4 := nil;
action := cafree;
end;


end.
