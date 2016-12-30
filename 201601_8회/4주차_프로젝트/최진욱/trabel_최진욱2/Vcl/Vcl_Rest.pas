unit Vcl_Rest;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DM_Vcl, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TR_Form = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Btn_Rclose: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Btn_RcloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  R_Form: TR_Form;

implementation

{$R *.dfm}

procedure TR_Form.Btn_RcloseClick(Sender: TObject);
begin
  R_Form.Close;
end;

procedure TR_Form.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

end.
