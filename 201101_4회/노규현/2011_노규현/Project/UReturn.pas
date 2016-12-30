Unit UReturn;

Interface

Uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, FMTBcd, DB, SqlExpr;

Type
  TReturnForm = Class(TForm)
    DBGrid1: TDBGrid;
    Button1: TButton;
    Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
  Private
    { Private declarations }
  Public
    { Public declarations }
  End;

Var
  ReturnForm: TReturnForm;

Implementation

uses Udm, Uclientclass;

{$R *.dfm}

Procedure TReturnForm.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
  Action := cafree;
End;

end.
