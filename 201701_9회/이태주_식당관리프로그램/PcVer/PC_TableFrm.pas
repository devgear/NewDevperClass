unit PC_TableFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Data.Bind.EngExt, Vcl.Bind.DBEngExt,
  Vcl.Bind.Grid, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope, Unit2;

type
  TfrmHall = class(TForm)
    pnlTableOrder: TPanel;
    btnCalculate: TButton;
    GridPanel1: TGridPanel;
    pnl1: TPanel;
    pnl2: TPanel;
    pnl3: TPanel;
    pnl4: TPanel;
    pnl6: TPanel;
    pnl7: TPanel;
    pnl8: TPanel;
    pnl9: TPanel;
    pnl11: TPanel;
    pnl12: TPanel;
    pnl13: TPanel;
    pnl14: TPanel;
    pnl16: TPanel;
    pnl17: TPanel;
    pnl18: TPanel;
    pnl19: TPanel;
    pnl21: TPanel;
    pnl22: TPanel;
    pnl23: TPanel;
    pnl24: TPanel;
    pnl5: TPanel;
    pnl10: TPanel;
    pnl15: TPanel;
    pnl20: TPanel;
    pnl25: TPanel;
    dsTmpOrderlist: TDataSource;
    edtTablenum: TEdit;
    edtKeyNum: TEdit;
    dsTotal: TDataSource;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    DBGrid1: TDBGrid;
    Timer1: TTimer;
    procedure pnl1Click(Sender: TObject);
    procedure btnCalculateClick(Sender: TObject);
    procedure grdTableOrderColumnMoved(Sender: TObject; FromIndex,
      ToIndex: Integer);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHall: TfrmHall;


implementation

{$R *.dfm}

uses PC_Dm, PC_CalculFrm;
 var
 demo : TServerMethods1Client;
procedure TfrmHall.btnCalculateClick(Sender: TObject);
begin
  if edttablenum.Text = '' then
     begin
     showmessage('table을 클릭하시오');
      exit;
     end;
  PC_Dm.Dm_PC.cdsTotal.Close;
  demo := TServerMethods1Client.Create(Dm_PC.SQLConnection1.DBXConnection);
  demo.TotalPrice(strtoint(PC_TableFrm.frmHall.edtTablenum.Text));
  PC_Dm.Dm_PC.cdsTotal.Open;
  PC_CalculFrm.FrmCalcul.Show;
end;

procedure TfrmHall.grdTableOrderColumnMoved(Sender: TObject; FromIndex,
  ToIndex: Integer);
begin
  if Dm_PC.cdsTmpOrderlist.RecordCount > 0 then
   (sender as TPanel).Color := clred
   else
   (sender as TPanel).Color := clbtnface;
end;

procedure TfrmHall.pnl1Click(Sender: TObject);
begin

  edtTablenum.Text := ((sender as TPanel).Caption) ;
  PC_Dm.Dm_PC.cdsTmpOrderlist.Close;
  demo := TServerMethods1Client.Create(Dm_PC.SQLConnection1.DBXConnection);
  demo.TableNum(strtoint(edtTablenum.Text));
  PC_Dm.Dm_PC.cdsTmpOrderlist.Open;
  if Dm_PC.cdsTmpOrderlist.RecordCount > 0 then
  (sender as TPanel).Color := clred;


end;

procedure TfrmHall.Timer1Timer(Sender: TObject);
var
  I, R : integer;
  Pnl : TPanel;
begin
  demo := TServerMethods1Client.Create(Dm_PC.SQLConnection1.DBXConnection);

  for I := 1 to 25 do
  begin
    Pnl := findComponent('Pnl'+inttostr(I)) as Tpanel;

    demo.TableNum(i);
    r := demo.TableNum(I);
    if r > 0 then
       pnl.color := clred
    else
      pnl.Color := clbtnface;
end;
end;

end.
