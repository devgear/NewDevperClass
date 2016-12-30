unit Flower_ServerMethods;

interface

uses System.SysUtils, System.Classes, System.Json,
    Datasnap.DSServer, Datasnap.DSAuth, DataSnap.DSProviderDataModuleAdapter,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.IBDef, FireDAC.FMXUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Datasnap.Provider, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Comp.UI,
  FireDAC.Phys.IBBase, FireDAC.Phys.IB;

type
  TFlowerServerMethods = class(TDSServerModule)
    FDConnection1: TFDConnection;
    FDPhysIBDriverLink1: TFDPhysIBDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    Member_Table: TFDTable;
    Member_DataSetProvider: TDataSetProvider;
    Flower_List_DataSetProvider: TDataSetProvider;
    Member_TableMEMBER_SEQ: TIntegerField;
    Member_TableMEMBER_CODE: TWideStringField;
    Member_TableMEMBER_NAME: TWideStringField;
    Member_TableMEMBER_ADDRESS: TWideStringField;
    Member_TableMEMBER_PHONENUMBER: TWideStringField;
    Member_TableMEMBER_BIRTHDAY: TSQLTimeStampField;
    Member_TableMEMBER_POINT: TIntegerField;
    Member_TableMEMBER_LASTVISIT: TSQLTimeStampField;
    Reservation_DataSetProvider: TDataSetProvider;
    Reservation_Join_FDQuery: TFDQuery;
    Reservation_Join_DataSetProvider: TDataSetProvider;
    Flower_Member_List_FDQuery: TFDQuery;
    Flower_List_FDQuery: TFDQuery;
    Reservation_FDQuery: TFDQuery;
    Flower_Member_List_FDQueryMEMBER_SEQ: TIntegerField;
    Flower_Member_List_FDQueryMEMBER_NAME: TWideStringField;
    Flower_Member_List_FDQueryMEMBER_ADDRESS: TWideStringField;
    Flower_Member_List_FDQueryMEMBER_PHONENUMBER: TWideStringField;
    Flower_Member_List_FDQueryMEMBER_BIRTHDAY: TSQLTimeStampField;
    Flower_Member_List_FDQueryMEMBER_POINT: TIntegerField;
    Flower_Member_List_FDQueryMEMBER_LASTVISIT: TSQLTimeStampField;
    Order_FDQuery: TFDQuery;
    Order_DataSetProvider: TDataSetProvider;
    Order_Join_FDQuery: TFDQuery;
    Order_Join_DataSetProvider: TDataSetProvider;
    Login_id: TFDQuery;
    Login_pw: TFDQuery;
    Flower_List_FDQueryLIST_SEQ: TIntegerField;
    Flower_List_FDQueryLIST_NAME: TWideStringField;
    Flower_List_FDQueryLIST_QTY: TWideStringField;
    Flower_List_FDQueryLIST_PRICE: TIntegerField;
    Flower_List_FDQueryLIST_POINT: TIntegerField;
    Flower_List_FDQueryLIST_IMAGE: TBlobField;
    Flower_List_FDQueryLIST_SCIENTIFICNAME: TWideStringField;
    Flower_List_FDQueryLIST_AREA: TWideStringField;
    Flower_List_FDQueryLIST_PERIOD: TWideStringField;
    Flower_List_FDQueryLIST_LANGUAGE: TWideStringField;
    reserve_Query: TFDQuery;
    reserve_Query_DataSetProvider: TDataSetProvider;
  private
    { Private declarations }
  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    function Login(I,P : string) : string;
    procedure FSearch(S : string);
  end;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}


uses System.StrUtils;

function TFlowerServerMethods.EchoString(Value: string): string;
begin
  Result := Value;
end;

procedure TFlowerServerMethods.FSearch(S: string);
begin
  Flower_List_FDQuery.Close;

  if S = '' then
    Flower_List_FDQuery.SQL.Text := 'Select * from Flower_List '
  else
    Flower_List_FDQuery.SQL.Text := 'Select * from Flower_List Where LIST_NAME like'
                          +#39+S+'%'+#39;

  Flower_List_FDQuery.Open;
end;

function TFlowerServerMethods.Login(I, P: string): string;
begin
  Login_ID.Close;
  Login_PW.Close;
  Login_ID.ParamByName('pID').AsString := I;
  Login_PW.ParamByName('pPW').AsString := P;
  Login_ID.Open;
  Login_PW.Open;
  Result := '0';
  if not Login_ID.Eof then
  begin
    Result := '1';
    if not Login_PW.Eof then
    begin
      Result := '2';
    end;
  end;
end;

function TFlowerServerMethods.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;

end.

