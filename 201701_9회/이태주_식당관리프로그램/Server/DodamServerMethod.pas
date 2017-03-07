unit DodamServerMethod;

interface

uses System.SysUtils, System.Classes, System.Json,
    DataSnap.DSProviderDataModuleAdapter,
    Datasnap.DSServer, Datasnap.DSAuth, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.IB,
  FireDAC.Phys.IBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Datasnap.Provider, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Comp.UI,
  FireDAC.Phys.IBBase, Datasnap.DBClient;

type
  TServerMethods1 = class(TDSServerModule)
    FDConnection1: TFDConnection;
    FDPhysIBDriverLink1: TFDPhysIBDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    TmpOrderqry: TFDQuery;
    SumPeopleqry: TFDQuery;
    Totalqry: TFDQuery;
    KeyUpdateqry: TFDQuery;
    dspTmpOrderqry: TDataSetProvider;
    dspTotal: TDataSetProvider;
    Kindqry: TFDQuery;
    dspKind: TDataSetProvider;
    Kitchenqry: TFDQuery;
    dspKitchen: TDataSetProvider;
    KindqryKIND: TWideStringField;
    KindqryMENU: TWideStringField;
    KindqryPRICE: TIntegerField;
    KeyUpdateqryFOODSEQ: TStringField;
    KeyUpdateqryKIND: TWideStringField;
    KeyUpdateqryMENU: TWideStringField;
    KeyUpdateqryPRICE: TIntegerField;
    SumPeopleqryKEYNUM: TIntegerField;
    SumPeopleqryTABLENUM: TIntegerField;
    SumPeopleqryMENU: TWideStringField;
    SumPeopleqryPEOPLE: TIntegerField;
    SumPeopleqryTOTALPRICE: TIntegerField;
    TmpOrderqryTABLENUM: TIntegerField;
    TmpOrderqryMENU: TWideStringField;
    TmpOrderqryPEOPLE: TIntegerField;
    TmpOrderqryTOTALPRICE: TIntegerField;
    KitchenqryKITCHEN_SEQ: TIntegerField;
    KitchenqryKIND: TWideStringField;
    KitchenqryMENU: TWideStringField;
    KitchenqryPEOPLE: TIntegerField;
    TmpOrderqryKEYNUM: TIntegerField;
    Deleteqry: TFDQuery;
    InsertDetailqry: TFDQuery;
    DeleteDataqry: TFDQuery;
    OrderDbqry: TFDQuery;
    OrderDetailqry: TFDQuery;
    dspOrderDb: TDataSetProvider;
    dspOrderDetail: TDataSetProvider;
    KeyChangeqry: TFDQuery;
    KeyInputqry: TFDQuery;
    dspInput: TDataSetProvider;
  private


    { Private declarations }
  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    function TableNum(tableno : integer): integer;
    function MenuKind(Kind : string): string;
    function SumPeople(TableNo, Peopleno, price : integer ; Menu : string) : string;
    procedure DeleteKitchen(seq : integer);
    function TotalPrice(tableno : integer): integer;
    procedure DeleteData(tableno : integer);
    procedure InsertDetail(tableno : integer);
    procedure Keychange(Keyno :integer);
    function OpenDetail(Keyno : integer) :integer;
    procedure KeyUpdate(keyno, tableno : integer);
    function DatePick(DatePick : string):string;
  end;

implementation


{$R *.dfm}


uses System.StrUtils;



function TServerMethods1.DatePick(DatePick: string): string;
begin
  OrderDbqry.Close;
  OrderDbqry.SQL.Text :=
  'select * from Orderdb Where OrderDate =:ADate';
  OrderDbqry.ParamByName('Adate').AsString := DatePick;
  OrderDbqry.Open;
end;

procedure TServerMethods1.DeleteData(tableno: integer);
begin
  DeleteDataqry.ParamByName('tableno').AsInteger := tableno ;
  DeleteDataqry.ExecSQL;
end;

procedure TServerMethods1.DeleteKitchen(seq : integer);
begin
  Deleteqry.ParamByName('seq').AsInteger := seq;
  Deleteqry.ExecSQL;
end;

function TServerMethods1.EchoString(Value: string): string;
begin
  Result := Value;
end;

procedure TServerMethods1.InsertDetail(tableno: integer);
begin
  InsertDetailqry.ParamByName('tableno').AsInteger := tableno;
  InsertDetailqry.ExecSQL;
end;

procedure TServerMethods1.Keychange(Keyno: integer);
begin
  KeyChangeqry.ParamByName('keyno').AsInteger := keyno;
  KeyChangeqry.ExecSQL;
end;

procedure TServerMethods1.KeyUpdate(Keyno, tableno: integer);
begin
  KeyUpdateqry.ParamByName('keyno').AsInteger :=keyno;
  KeyUpdateqry.ParamByName('tableno').AsInteger := tableno;
  KeyUpdateqry.ExecSQL;
end;

function TServerMethods1.MenuKind(Kind: string): string;
begin
  Kindqry.Close;
  Kindqry.ParamByName('kind').AsString :=kind;
  Kindqry.Open;
end;

function TServerMethods1.OpenDetail(Keyno: integer): integer;
begin
   OrderDetailqry.Close;
  OrderDetailqry.ParamByName('Keyno').AsInteger := keyno;
  OrderDetailqry.Open;
end;

function TServerMethods1.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;

function TServerMethods1.SumPeople(TableNo, Peopleno, price: integer; Menu: string): string;
var
  P :integer;
begin
  SumPeopleqry.Close;
  SumPeopleqry.ParamByName('menuname').AsString := Menu;
  SumPeopleqry.ParamByName('tableno').Asinteger := Tableno;
  SumPeopleqry.Open;

  if SumPeopleqry.RecordCount > 0 then
  begin
    SumPeopleqry.Edit;
    p := SumPeopleqry.FieldByName('people').Asinteger;
    p := p + peopleno;
    SumPeopleqry.FieldByName('people').Asinteger := P;
    SumPeopleqry.FieldByName('TotalPrice').AsInteger := (P * Price);
    SumPeopleqry.post;
    SumPeopleqry.open;
  end
  else
  begin
     SumPeopleqry.Edit;
     SumPeopleqry.FieldByName('tablenum').Asinteger := tableno;
     SumPeopleqry.FieldByName('people').Asinteger := peopleno;
     SumPeopleqry.FieldByName('totalprice').Asinteger :=(peopleno * price);
     SumPeopleqry.FieldByName('Menu').AsString := Menu;
     SumPeopleqry.post;
     SumPeopleqry.open;
  end;

end;

function TServerMethods1.TableNum(tableno: integer): integer;
begin
 TmpOrderqry.Close;
 TmpOrderqry.ParamByName('tableno').AsInteger := tableno;
 TmpOrderqry.Open;
 Result := TmpOrderqry.RecordCount;
end;

function TServerMethods1.TotalPrice(tableno: integer): integer;
begin
  Totalqry.Close;
  Totalqry.ParamByName('tableno').AsInteger := tableno;
  Totalqry.Open;
end;

end.

