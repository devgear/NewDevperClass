unit loadvideo1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids;

type
  Tloadvideo = class(TForm)
    DBGrid1: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  loadvideo: Tloadvideo;

implementation

uses Uddm;

{$R *.dfm}

procedure Tloadvideo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    action := cafree;
end;

end.
