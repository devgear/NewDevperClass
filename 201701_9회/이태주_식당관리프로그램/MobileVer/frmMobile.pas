unit frmMobile;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Layouts, FMX.TabControl, System.Rtti,
  FMX.Grid.Style, FMX.ScrollBox, FMX.Grid, FMX.Edit, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Fmx.Bind.Grid, System.Bindings.Outputs, Fmx.Bind.Editors,
  Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope, Data.DB, FMX.Objects,
  FMX.ListBox;

type
  Tfrm_mobile = class(TForm)
    Layout1: TLayout;
    TabControl1: TTabControl;
    tabTable: TTabItem;
    tabOrderlist: TTabItem;
    ToolBar1: TToolBar;
    lblTable: TLabel;
    stgOrderList: TStringGrid;
    btnStue: TButton;
    btnMeat: TButton;
    btnDrink: TButton;
    btnEtc: TButton;
    btnok: TButton;
    btncancel: TButton;
    tabOrder: TTabItem;
    tabMain: TTabItem;
    tabKitchen: TTabItem;
    stgKitchen: TStringGrid;
    lytTable: TLayout;
    Layout3: TLayout;
    btnCal0: TButton;
    btnCal1: TButton;
    btnCal2: TButton;
    btnCal3: TButton;
    btnCal4: TButton;
    btnCal5: TButton;
    btnCal6: TButton;
    btnCal7: TButton;
    btnCal8: TButton;
    btnCal9: TButton;
    btnOrderOk: TButton;
    btnPeopleCancel: TButton;
    edtMenu: TEdit;
    edtPeople: TEdit;
    stgKind: TStringGrid;
    ToolBar2: TToolBar;
    Label1: TLabel;
    edtHostname: TEdit;
    edtPort: TEdit;
    bsTmpOrderlist: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    bsKitchen: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB3: TLinkGridToDataSource;
    btnOrderCancel: TButton;
    edtKitchen: TEdit;
    Timer1: TTimer;
    bsFoodKind: TBindSourceDB;
    LinkGridToDataSourcebsFoodKind: TLinkGridToDataSource;
    Table6: TRectangle;
    lblTable6: TLabel;
    edtKindName: TEdit;
    edtPrice: TEdit;
    Table1: TRectangle;
    lblTable1: TLabel;
    Table10: TRectangle;
    lblTable10: TLabel;
    Table9: TRectangle;
    lblTable9: TLabel;
    Table5: TRectangle;
    lblTable5: TLabel;
    Table4: TRectangle;
    lblTable4: TLabel;
    Table3: TRectangle;
    lblTable3: TLabel;
    Table2: TRectangle;
    lblTable2: TLabel;
    Table20: TRectangle;
    lblTable20: TLabel;
    Table13: TRectangle;
    lblTable13: TLabel;
    Table12: TRectangle;
    lblTable12: TLabel;
    Table24: TRectangle;
    lblTable24: TLabel;
    Table11: TRectangle;
    lblTable11: TLabel;
    Table14: TRectangle;
    lblTable14: TLabel;
    Table15: TRectangle;
    lblTable15: TLabel;
    Table8: TRectangle;
    lblTable8: TLabel;
    Table19: TRectangle;
    lblTable19: TLabel;
    Table21: TRectangle;
    lblTable21: TLabel;
    Table16: TRectangle;
    lblTable16: TLabel;
    Table22: TRectangle;
    lblTable22: TLabel;
    Table23: TRectangle;
    lblTable23: TLabel;
    Table17: TRectangle;
    lblTable17: TLabel;
    Table18: TRectangle;
    lblTable18: TLabel;
    Table7: TRectangle;
    lblTable7: TLabel;
    lytHall: TLayout;
    lytKitchen: TLayout;
    btnHall: TButton;
    btnKitchen: TButton;
    edtKeynum: TEdit;
    edtTableNum: TEdit;
    Table25: TRectangle;
    lbl25: TLabel;
    ToolBar3: TToolBar;
    btnBack: TButton;
    btnBack1: TButton;
    Timer2: TTimer;
    procedure btnCal1Click(Sender: TObject);
    procedure btnOrderOkClick(Sender: TObject);
    procedure btnStueClick(Sender: TObject);
    procedure btnokClick(Sender: TObject);
    procedure btnPeopleCancelClick(Sender: TObject);
    procedure btnHallClick(Sender: TObject);
    procedure btnKitchenClick(Sender: TObject);
    procedure btncancelClick(Sender: TObject);
    procedure stgKindSelectCell(Sender: TObject; const ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure btnOrderCancelClick(Sender: TObject);
    procedure stgKitchenSelectCell(Sender: TObject; const ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Table1Click(Sender: TObject);
    procedure bsKitchenSubDataSourceDataChange(Sender: TObject; Field: TField);
    procedure btnBackClick(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  frm_mobile: Tfrm_mobile;
   F : boolean;
implementation

{$R *.fmx}

uses MobileDM, unit1;

var
demo :TServerMethods1Client;

procedure Tfrm_mobile.FormCreate(Sender: TObject);
begin
  f := false;
  TabControl1.ActiveTab := tabmain;
end;

procedure Tfrm_mobile.bsKitchenSubDataSourceDataChange(Sender: TObject;
  Field: TField);
begin
  // MobileDM.DataModule1.cdsKitchen.Refresh;
end;

procedure Tfrm_mobile.btnBackClick(Sender: TObject);
begin
   TabControl1.ActiveTab := tabMain;
end;

procedure Tfrm_mobile.btnCal1Click(Sender: TObject); //°øÀ¯!!
begin
  if edtPeople.Text = '0' then
     edtPeople.Text := inttostr(strtoint(edtPeople.Text) + strtoint((sender as tbutton).Text))
  else
  edtPeople.Text := edtPeople.Text+(sender as tbutton).Text;
end;

procedure Tfrm_mobile.btncancelClick(Sender: TObject);
begin
  TabControl1.ActiveTab := tabTable;
end;

procedure Tfrm_mobile.btnKitchenClick(Sender: TObject);
begin

  MobileDM.DataModule1.SQLConnection1.Params.Values['HostName'] := edtHostname.text;
  MobileDM.DataModule1.SQLConnection1.Params.Values['Port'] := edtPort.Text;
  MobileDM.DataModule1.SQLConnection1.Connected := False;
  MobileDM.DataModule1.cdsKitchen.Active := true;
   TabControl1.ActiveTab := tabKitchen;
end;

procedure Tfrm_mobile.btnokClick(Sender: TObject);
var
  EdtTag : integer;
  Keychange : integer;
  KeyUpdate : integer;
begin
  Keychange := MobileDM.DataModule1.cdsKeyChange.FieldByName('Keynum').AsInteger;
  Edttag := edtKeyNum.Tag;
  KeyUpdate := MobileDM.DataModule1.cdsTmpOrderlist.FieldByName('Keynum').AsInteger;
  if DataModule1.cdsTmpOrderlist.RecordCount = 0 then
     exit;
   Edttag := KeyChange;
  demo := TServerMethods1Client.Create(DataModule1.SQLConnection1.DBXConnection);
  if MobileDM.DataModule1.cdsTmpOrderlist.FieldByName('Keynum').Asstring = '' then
     demo.KeyUpdate(edttag, strtoint(edtTableNum.Text))
  else
     demo.KeyUpdate(Keyupdate,strtoint(edtTableNum.Text));
  Inc(Edttag);
  demo.Keychange(edttag);
  MobileDM.DataModule1.cdsTmpOrderlist.Refresh;
  MobileDM.DataModule1.cdsKeyChange.Refresh;
  TabControl1.ActiveTab := tabTable;
  MobileDM.DataModule1.cdsKitchen.Refresh;
end;

procedure Tfrm_mobile.btnOrderCancelClick(Sender: TObject);
begin
  TabControl1.ActiveTab := tabOrderlist;
  edtPeople.Text := '0';
end;

procedure Tfrm_mobile.btnOrderOkClick(Sender: TObject);
begin
  if (edtPeople.Text = '0') or (edtMenu.Text = '')then
     ShowMessage('ºóÄ­À» Ã¤¿ì¼¼¿ä')
  else
  begin
    if (edtKindName.Text = 'Âî°³') or (edtKindName.Text ='°í±â') then
    begin
      MobileDM.DataModule1.cdsKitchen.Append;
      MobileDM.DataModule1.cdsKitchen.FieldByName('Kind').Asstring := edtKindName.Text;
      MobileDM.DataModule1.cdsKitchen.FieldByName('menu').AsString := edtMenu.Text;
      MobileDM.DataModule1.cdsKitchen.FieldByName('people').Asinteger := strtoint(edtPeople.Text);
      MobileDM.DataModule1.cdsKitchen.Post;
      MobileDM.DataModule1.cdsKitchen.ApplyUpdates(0);
    end;
    MobileDM.DataModule1.cdsKitchen.Refresh;

    demo := TServerMethods1Client.Create(DataModule1.SQLConnection1.DBXConnection);
    demo.SumPeople(strtoint(lblTable.Text),strtoint(edtPeople.Text),strtoint(edtPrice.Text),edtMenu.Text);
    MobileDM.DataModule1.cdsTmpOrderlist.Refresh;

    TabControl1.ActiveTab := tabOrderlist;
    edtPeople.Text := '0';
    edtMenu.Text := '';
  end;

end;

procedure Tfrm_mobile.btnPeopleCancelClick(Sender: TObject);
begin
  edtPeople.Text:='0';
end;

procedure Tfrm_mobile.btnStueClick(Sender: TObject);
begin

  edtKindName.Text := (sender as Tbutton).Text;
  TabControl1.ActiveTab := tabOrder;
  MobileDM.DataModule1.cdsKind.Close;
  demo := TServerMethods1Client.Create(DataModule1.SQLConnection1.DBXConnection);
  demo.MenuKind(edtKindName.Text);
  MobileDM.DataModule1.cdsKind.Open;
end;

procedure Tfrm_mobile.btnHallClick(Sender: TObject);
begin

  MobileDM.DataModule1.SQLConnection1.Params.Values['HostName'] := edtHostname.text;
  MobileDM.DataModule1.SQLConnection1.Params.Values['Port'] := edtPort.Text;
  MobileDM.DataModule1.cdsKind.Active := true;
  MobileDM.DataModule1.cdsTmpOrderlist.Active := true;
  MobileDM.DataModule1.cdsKitchen.Active := true;
  MobileDM.DataModule1.cdsKeyChange.Active := true;
  TabControl1.ActiveTab := tabTable;
end;



procedure Tfrm_mobile.FormShow(Sender: TObject);
begin
  F := True;

end;



procedure Tfrm_mobile.stgKindSelectCell(Sender: TObject; const ACol, ARow: Integer;
var
  CanSelect: Boolean);
begin
  edtMenu.Text := stgKind.Cells[1,Arow];
  edtPrice.Text := stgKind.Cells[2,Arow];
end;

procedure Tfrm_mobile.stgKitchenSelectCell(Sender: TObject; const ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  if not f = true then
     exit;

  if  TabControl1.TabIndex <> 4 then
     exit;

  if stgKitchen.RowCount <> MobileDM.DataModule1.cdsKitchen.RecordCount then
     exit
  else
    begin
      edtKitchen.Text := stgkitchen.Cells[0,Arow];
      demo := TServerMethods1Client.Create(DataModule1.SQLConnection1.DBXConnection);
      demo.DeleteKitchen(strtoint(edtKitchen.Text));
      MobileDM.DataModule1.cdsKitchen.Refresh;
    end;
end;

procedure Tfrm_mobile.Table1Click(Sender: TObject);
var
  tablenum : integer;
begin
  tableNum := (sender as Trectangle).tag ;
  edtTableNum.Text := inttostr(tablenum);
  lblTable.Text := inttostr(tablenum);
  Label1.Text := lblTable.Text;
  MobileDM.DataModule1.cdsTmpOrderlist.Close;
  demo := TServerMethods1Client.Create(DataModule1.SQLConnection1.DBXConnection);
  demo.TableNum(tablenum);
  MobileDM.DataModule1.cdsTmpOrderlist.Open;
  TabControl1.ActiveTab := tabOrderlist;
end;

procedure Tfrm_mobile.Timer1Timer(Sender: TObject);
var
  I, R : integer;
  table : TRectangle;
begin

if TabControl1.TabIndex <> 1 then
    exit;
  demo := TServerMethods1Client.Create(DataModule1.SQLConnection1.DBXConnection);

  for I := 1 to 25 do
  begin
    Table := findComponent('Table'+inttostr(I)) as TRectangle;

    demo.TableNum(i);
    r := demo.TableNum(I);
    if r > 0 then
       Table.Fill.Color := TAlphaColorRec.Red
    else
     Table.Fill.Color := TAlphaColorRec.Powderblue;
  end;

end;
procedure Tfrm_mobile.Timer2Timer(Sender: TObject);
begin
  if TabControl1.TabIndex = 4 then
     MobileDM.DataModule1.cdsKitchen.Refresh;
end;

end.
