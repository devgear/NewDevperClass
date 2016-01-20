unit Emplo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Mask, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls;

type
  TEmploForm = class(TForm)
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    TabSheet1: TTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBComboBox2: TDBComboBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label8: TLabel;
    Button4: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EmploForm: TEmploForm;

implementation

{$R *.dfm}

uses UDM;

procedure TEmploForm.Button1Click(Sender: TObject);
begin
dm.Fdmemtable.Insert;
end;

procedure TEmploForm.Button2Click(Sender: TObject);
begin
dm.Fdmemtable.post;
end;

procedure TEmploForm.Button3Click(Sender: TObject);
begin
 dm.FDmemtable.Cancel;

end;

procedure TEmploForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := cafree;
end;

end.
