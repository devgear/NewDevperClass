unit Usearch;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, StdCtrls;

type
  Tsearchform = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Button1: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  searchform: Tsearchform;

implementation

uses Udm;

{$R *.dfm}

procedure Tsearchform.Button1Click(Sender: TObject);
begin
  searchform.Close;
end;

procedure Tsearchform.Edit1Change(Sender: TObject);
begin
  dm.Custom.IndexFieldNames := 'name';
  dm.Custom.FindNearest([Edit1.Text]);
end;

end.
