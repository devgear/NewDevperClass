unit UVendors;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, DBGrids, StdCtrls, FMTBcd, DB, SqlExpr, ExtCtrls;

type
  TVendors = class(TFrame)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Button1: TButton;
    Edit4: TEdit;
    Edit3: TEdit;
    Edit2: TEdit;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button2: TButton;
    Button3: TButton;
    SQLStoredProc1: TSQLStoredProc;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Vendors: TVendors;

implementation

uses Udm;

{$R *.dfm}

var
  sql: string;
  TD: TTransactionDesc;

procedure TVendors.Button1Click(Sender: TObject);
begin
  with SQLStoredProc1 do
  begin
    params[0].AsInteger := StrToInt(Edit1.Text);
    params[1].AsString := Edit2.Text;
    params[2].AsString := Edit3.Text;
    params[3].AsString := Edit4.Text;
    execproc;
  end;

  try
    dm.SQLConnection1.StartTransaction(TD);
    sql := 'update NEXTNO set V_CODE=V_CODE+1';
    dm.NextNoQuery.Edit;
    dm.NextNoQuery.DataSet.CommandText := sql;
    dm.NextNoQuery.Execute;

    sql := '';

    dm.SQLConnection1.commit(TD);
    dm.VendorsQuery.Refresh;
  except
    showmessage('update에러');
    dm.SQLConnection1.Rollback(TD);

  end;

end;

procedure TVendors.Button2Click(Sender: TObject);
begin
  try
    dm.SQLConnection1.StartTransaction(TD);
    dm.VendorsQuery.UpdateRecord;
    dm.VendorsQuery.ApplyUpdates(-1);
    dm.SQLConnection1.commit(TD);
  except
    showmessage('update에러');
    dm.SQLConnection1.Rollback(TD);
  end;
end;


procedure TVendors.Button3Click(Sender: TObject);
begin
  try
    dm.SQLConnection1.StartTransaction(TD);
    dm.VendorsQuery.Delete;
    dm.VendorsQuery.ApplyUpdates(-1);
    dm.SQLConnection1.commit(TD);
  except
    showmessage('delete에러');
    dm.SQLConnection1.Rollback(TD);
  end;

end;

end.
