unit Vcl_Sights;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DM_Vcl, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls, Vcl.ToolWin, Vcl.ExtCtrls;

type
  TS_Form = class(TForm)
    Sights_Grid: TDBGrid;
    Panel1: TPanel;
    Btn_Sclose: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Btn_ScloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  S_Form: TS_Form;

implementation

{$R *.dfm}

procedure TS_Form.Btn_ScloseClick(Sender: TObject);
begin
  S_Form.Close;
end;

procedure TS_Form.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
