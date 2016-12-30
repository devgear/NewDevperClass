unit Ulist;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ExtCtrls, Grids, DBGrids, dblookup, ComCtrls,
   SqlExpr, IBDatabase;

type
  TFrame1 = class(TFrame)
    DBGrid2: TDBGrid;
    ListView1: TListView;
    procedure StringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure ListView1DblClick(Sender: TObject);
    procedure ListView1SelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Freme: TFrame1;

implementation

uses Udm;

{$R *.dfm}

var
  arows: Integer;
  Item: Integer;
  TD: TTransactionDesc;

procedure TFrame1.ListView1DblClick(Sender: TObject);
begin
  ShowMessage(ListView1.Items.Item[ListView1.ItemIndex].Caption);

  ListView1.Items.Item[ListView1.ItemIndex];
  dm.Align.Close;
  dm.Align.DataSet.Params[0].AsString := ListView1.Items.Item
    [ListView1.ItemIndex].Caption;
  dm.Align.Open;
end;

procedure TFrame1.ListView1SelectItem(Sender: TObject; Item: TListItem;
  Selected: Boolean);
begin
  Item := Item;
end;

procedure TFrame1.StringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin
  arows := ARow;
end;

end.
