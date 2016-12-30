unit Vcl_RBoard;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DM_Vcl, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TRB_Form = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Btn_RBclose: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Btn_RBcloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RB_Form: TRB_Form;

implementation

{$R *.dfm}

procedure TRB_Form.Btn_RBcloseClick(Sender: TObject);
begin
  RB_Form.Close;
end;

procedure TRB_Form.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

end.
