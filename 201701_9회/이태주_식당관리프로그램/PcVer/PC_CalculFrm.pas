unit PC_CalculFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.ExtCtrls, Vcl.Grids, Data.DB, Vcl.DBGrids, Unit2;

type
  TFrmCalcul = class(TForm)
    pnlCalculMain: TPanel;
    pnlOrderList: TPanel;
    pnlTotalPrice: TPanel;
    GrdOrderList: TDBGrid;
    GrdTotalPrice: TDBGrid;
    btnCalculCancel: TButton;
    btnCalculOk: TButton;
    dsTotal: TDataSource;
    procedure btnCalculOkClick(Sender: TObject);
    procedure btnCalculCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCalcul: TFrmCalcul;

implementation

{$R *.dfm}

uses PC_Dm, PC_TableFrm ;
var
  demo : TServerMethods1Client;
procedure TFrmCalcul.btnCalculCancelClick(Sender: TObject);
begin
//  Keynum := PC_TableFrm.frmHall.edtKeyNum.Text;
//  if Keynum <> '0' then
//  begin
//    Keynum := inttostr(strtoint(Keynum) - 1);
//    PC_TableFrm.frmHall.edtkeynum.Text := Keynum;
//  end;
  close;
  //PC_TableFrm.frmHall.edtTablenum.Text := '';
end;

procedure TFrmCalcul.btnCalculOkClick(Sender: TObject);
var
  Tablenum : string;
  Keynum : string;
  TotPrice : integer;
begin
  TotPrice := PC_Dm.Dm_PC.cdsTotal.FieldByName('totalprice').AsInteger;
  Keynum := Dm_PC.cdsTmpOrderlist.FieldByName('keynum').Asstring;
  Tablenum := PC_TableFrm.frmHall.edtTablenum.Text;

  Keynum := inttostr(strtoint(Keynum) + 1);
  demo := TServerMethods1Client.Create(Dm_PC.SQLConnection1.DBXConnection);
  demo.KeyUpdate(strtoint(Tablenum), strtoint(Keynum));
  demo.InsertDetail(strtoint(Tablenum));
  demo.DeleteData(strtoint(Tablenum));

  Dm_PC.cdsTmpOrderlist.Refresh;
  Dm_PC.cdsTotal.Refresh;

  Dm_PC.cdsOrderDb.Append;
  Dm_PC.cdsOrderDb.FieldByName('keynum').Asstring := Keynum;
  Dm_PC.cdsOrderDb.FieldByName('orderdate').AsDateTime := Date;
  Dm_PC.cdsOrderDb.FieldByName('tablenum').AsInteger := strtoint(Tablenum);
  Dm_PC.cdsOrderDb.FieldByName('totalprice').AsInteger := TotPrice;
  Dm_PC.cdsOrderDb.Post;
  Dm_PC.cdsOrderDb.ApplyUpdates(-1) ;
  frmHall.edtTablenum.Text := '';
  close;
end;

end.
