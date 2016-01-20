unit UDept;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.DBCtrls, Data.FMTBcd, Data.SqlExpr;

type
  TDeptForm = class(TForm)
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TDeptForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := cafree;
end;

end.
