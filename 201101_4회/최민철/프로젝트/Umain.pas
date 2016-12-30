unit Umain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, PlatformDefaultStyleActnCtrls, ActnList, ActnMan, Menus,
  StdCtrls, StdActns, ExtCtrls, Unit1, ToolWin, ComCtrls, SqlExpr;

type
  Tmainform = class(TForm)
    BoderPanel: TPanel;
    StatusBar1: TStatusBar;
    ToolBar1: TToolBar;
    Panel2: TPanel;
    Button4: TButton;
    Button2: TButton;
    fr: TButton;
    Button3: TButton;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    Exit1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N8: TMenuItem;
    N7: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N22: TMenuItem;
    ImageList1: TImageList;
    ActionManager1: TActionManager;
    FileExit1: TFileExit;
    Button1: TButton;
    procedure frClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
  var
    a: Boolean;
    sql: string;
    { Public declarations }
  end;

var
  mainform: Tmainform;
  TFrameName: TFrame;

implementation

uses Udm, Umoney, UVendors, Ucommodity, USales, UChart, Ulist;

{$R *.dfm}

var
  panel: TPanel;
  TD:TTransactionDesc;

procedure Tmainform.Button1Click(Sender: TObject);
begin
  TFrameName.Free;

  dm.SalseChartQuery.Close;
  dm.SalseChartQuery.DataSet.Params[0].AsString := 'µÅÁö°í±â';
  dm.SalseChartQuery.Open;

  chart := Tchart.Create(nil);
  chart.Parent := BoderPanel;
  chart.Show;
  TFrameName := chart;
end;

procedure Tmainform.Button2Click(Sender: TObject);
begin
  TFrameName.Free;

//  sql := 'select S_CODE from NEXTNO';
//  dm.NextNoQuery.Close;
//  dm.NextNoQuery.DataSet.CommandText := sql;
//  dm.NextNoQuery.Open;
//  Vendors.Edit1.Text := IntToStr(dm.NextNoQuery.FieldByName('S_CODE').AsInteger + 1);
//  sql := '';

  Sales := TSales.Create(nil);
  Sales.Parent := BoderPanel;
  Sales.Show;
  TFrameName := Sales;
end;

procedure Tmainform.Button3Click(Sender: TObject);
begin

//  sql := 'select V_CODE from NEXTNO';
//  dm.NextNoQuery.Close;
//  dm.NextNoQuery.DataSet.CommandText := sql;
//  dm.NextNoQuery.Open;
//  Vendors.Edit1.Text := IntToStr(dm.NextNoQuery.FieldByName('V_CODE').AsInteger + 1);
//  sql := '';

  sql := 'select * from Vendors';
  dm.vendorsQuery.Close;
  dm.vendorsQuery.DataSet.CommandText := sql;
  dm.vendorsQuery.Open;

  TFrameName.Free;



  Vendors := TVendors.Create(nil);
  Vendors.Parent := BoderPanel;
  Vendors.Show;
  TFrameName := Vendors;
end;

procedure Tmainform.Button4Click(Sender: TObject);
var
  i: integer;
begin

  TFrameName.Free;

  Freme := TFrame1.Create(nil);

  dm.SimpleDataSet1.First;
  for i := 1 to dm.SimpleDataSet1.RecordCount do
  begin
    Freme.ListView1.Items.Add.Caption := dm.SimpleDataSet1.FieldByName
      ('V_BizName').AsString;
    Freme.ListView1.Items.Item[i - 1].SubItems.Add
      (dm.SimpleDataSet1.FieldByName('sum').AsString);
    dm.SimpleDataSet1.Next;
  end;

  Freme.Parent := BoderPanel;
  Freme.Show;
  TFrameName := Freme;

end;

procedure Tmainform.frClick(Sender: TObject);
begin
  TFrameName.Free;

  commodity := TCommodity.Create(nil);
  commodity.Parent := BoderPanel;
  commodity.Show;
  TFrameName := commodity;

end;

end.
