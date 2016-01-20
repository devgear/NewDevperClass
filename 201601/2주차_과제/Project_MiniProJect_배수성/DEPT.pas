unit DEPT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Mask;

type
  TDeptForm = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DeptForm: TDeptForm;

implementation

{$R *.dfm}

uses UDM;

procedure TDeptForm.Button1Click(Sender: TObject);
begin
    dm.FDDeptTable.insert;
end;

procedure TDeptForm.Button2Click(Sender: TObject);
begin
  dm.FDdeptTable.Cancel;
end;

procedure TDeptForm.Button3Click(Sender: TObject);
begin

  if  messagedlg('진정 삭제하시겠사옵니까?', mtConfirmation, [mbYes, mbNo],0) = mryes then


  dm.FDdeptTable.Delete;
end;

procedure TDeptForm.Button4Click(Sender: TObject);
begin
  dm.FDdepttable.Post;
end;

procedure TDeptForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
