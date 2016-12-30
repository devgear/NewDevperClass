unit Uordering;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, Grids, DBGrids;

type
  Torderingform = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBGrid1: TDBGrid;
    Panel9: TPanel;
    Panel10: TPanel;
    Button2: TButton;
    Button1: TButton;
    Panel8: TPanel;
    MaskEdit1: TMaskEdit;
    Label1: TLabel;
    DBEdit8: TDBEdit;
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  orderingform: Torderingform;

implementation

uses Udm;

{$R *.dfm}

procedure Torderingform.Button1Click(Sender: TObject);
begin
  dm.SQLConnection1.startTransaction(td);
  try
  dm.orderquery.Edit;
  dm.orderqueryo_complete.Value := '1';
  dm.orderquery.FieldByName('saledate').AsString := maskedit1.Text;
   dm.orderquery.Post;
  dm.orderquery.ApplyUpdates(-1);

  dm.product.Edit;
  dm.product.FieldByName('vol').AsInteger := dm.product.FieldByName('vol').AsInteger - dm.orderquery.FieldByName('vol').AsInteger;
  dm.product.Post;
  dm.product.ApplyUpdates(-1);
    dm.SQLConnection1.Commit(td);
  except
    dm.SQLConnection1.Rollback(td);
  end;
end;

procedure Torderingform.Button2Click(Sender: TObject);
begin
  close;
end;

procedure Torderingform.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

end.
