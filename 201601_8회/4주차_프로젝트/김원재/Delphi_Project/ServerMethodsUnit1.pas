unit ServerMethodsUnit1;

interface

uses System.SysUtils, System.Classes, System.Json,
    Datasnap.DSServer, Datasnap.DSAuth, DataSnap.DSProviderDataModuleAdapter,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.IB, FireDAC.Phys.IBDef, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  Datasnap.Provider, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.Comp.UI, FireDAC.Phys.IBBase;

type
  TServerMethods1 = class(TDSServerModule)
    FDConnection1: TFDConnection;
    FDPhysIBDriverLink1: TFDPhysIBDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDTable1: TFDTable;
    DataSetProvider1: TDataSetProvider;
    MEMBER_Table: TFDTable;
    GAMAENG_Table: TFDTable;
    DataSetProvider2: TDataSetProvider;
    DataSetProvider3: TDataSetProvider;
    MEMBER_TableJISA_CODE: TWideStringField;
    MEMBER_TableM_CODE: TWideStringField;
    MEMBER_TableM_NAME: TWideStringField;
    MEMBER_TableM_DEPT: TWideStringField;
    MEMBER_TableM_PHONE: TWideStringField;
    MEMBER_TableM_ADDRESS: TWideStringField;
    MEMBER_TableM_MAIL: TWideStringField;
    GAMAENG_TableG_CODE: TWideStringField;
    GAMAENG_TableG_NAME: TWideStringField;
    GAMAENG_TableG_CONTNAME: TWideStringField;
    GAMAENG_TableG_KIND: TWideStringField;
    GAMAENG_TableG_PHONE: TWideStringField;
    GAMAENG_TableG_TEL: TWideStringField;
    GAMAENG_TableG_FAX: TWideStringField;
    GAMAENG_TableG_ADDRESS: TWideStringField;
    GAMAENG_TableG_MAIL: TWideStringField;
    MEMBER_Query: TFDQuery;
    MQ_DataSetProvider: TDataSetProvider;
    GAMAENG_Query: TFDQuery;
    GQ_DataSetProvider: TDataSetProvider;
    ROOM_Table: TFDTable;
    R_DataSetProvider: TDataSetProvider;
    ROOM_Query: TFDQuery;
    RQ_DataSetProvider: TDataSetProvider;
    MEMBER_TableM_DEPTCODE: TWideStringField;
    Res_Query: TFDQuery;
    RESERVE_Query: TFDQuery;
    RESQ_DataSetProvider: TDataSetProvider;
    ROOM_QueryJISA_CODE: TWideStringField;
    ROOM_QueryRM_CODE: TWideStringField;
    ROOM_QueryRM_NAME: TWideStringField;
    ROOM_QueryRM_FLOOR: TWideStringField;
    ROOM_QueryRM_SIZE: TWideStringField;
    ROOM_QueryRM_CHAIR: TIntegerField;
    ROOM_QueryRENT_LIST: TWideStringField;
    ROOM_QueryRM_GAEK1: TWideStringField;
    ROOM_QueryRM_JAJE1: TIntegerField;
    ROOM_QueryRM_JAJE2: TIntegerField;
    ROOM_QueryRM_JAJE3: TIntegerField;
    ROOM_QueryRM_TOTAL: TWideStringField;
    ROOM_QueryRM_IMG: TBlobField;
    ROOM_QueryRM_FIMG: TBlobField;
    ROOM_TableJISA_CODE: TWideStringField;
    ROOM_TableRM_CODE: TWideStringField;
    ROOM_TableRM_NAME: TWideStringField;
    ROOM_TableRM_FLOOR: TWideStringField;
    ROOM_TableRM_SIZE: TWideStringField;
    ROOM_TableRM_CHAIR: TIntegerField;
    ROOM_TableRENT_LIST: TWideStringField;
    ROOM_TableRM_GAEK1: TWideStringField;
    ROOM_TableRM_JAJE1: TIntegerField;
    ROOM_TableRM_JAJE2: TIntegerField;
    ROOM_TableRM_JAJE3: TIntegerField;
    ROOM_TableRM_TOTAL: TWideStringField;
    ROOM_TableRM_IMG: TBlobField;
    ROOM_TableRM_FIMG: TBlobField;
    RESERVE_QueryRECORD_NUM: TIntegerField;
    RESERVE_QueryJISA_CODE: TWideStringField;
    RESERVE_QuerySIN_NAME: TWideStringField;
    RESERVE_QuerySIN_CODE: TWideStringField;
    RESERVE_QuerySIN_SONAME: TWideStringField;
    RESERVE_QuerySIN_SOKIND: TWideStringField;
    RESERVE_QuerySIN_TEL: TWideStringField;
    RESERVE_QuerySIN_FAX: TWideStringField;
    RESERVE_QuerySIN_MOBILE: TWideStringField;
    RESERVE_QuerySIN_ADD: TWideStringField;
    RESERVE_QuerySIN_MAIL: TWideStringField;
    RESERVE_QuerySIN_GITA: TWideStringField;
    RESERVE_QuerySIN_ROOMNAME: TWideStringField;
    RESERVE_QuerySIN_FL: TWideStringField;
    RESERVE_QuerySIN_HOSIL: TWideStringField;
    RESERVE_QuerySIN_CHAIR: TWideStringField;
    RESERVE_QuerySIN_DATE: TDateField;
    RESERVE_QuerySIN_KIND: TWideStringField;
    RESERVE_QuerySIN_COUNT: TWideStringField;
    RESERVE_QuerySIN_USEJAJE: TWideStringField;
    RESERVE_QuerySIN_ROOMCOST: TWideStringField;
    RESERVE_QuerySIN_JAJECOST: TWideStringField;
    RESERVE_QuerySIN_TOTALCOST: TWideStringField;
    RES_Table: TFDTable;
    RES_DataSetProvider: TDataSetProvider;
    RESERVE_Table: TFDTable;
    RESERVE_DataSetProvider: TDataSetProvider;
    RESERVE_TableRECORD_NUM: TIntegerField;
    RESERVE_TableJISA_CODE: TWideStringField;
    RESERVE_TableSIN_NAME: TWideStringField;
    RESERVE_TableSIN_CODE: TWideStringField;
    RESERVE_TableSIN_SONAME: TWideStringField;
    RESERVE_TableSIN_SOKIND: TWideStringField;
    RESERVE_TableSIN_TEL: TWideStringField;
    RESERVE_TableSIN_FAX: TWideStringField;
    RESERVE_TableSIN_MOBILE: TWideStringField;
    RESERVE_TableSIN_ADD: TWideStringField;
    RESERVE_TableSIN_MAIL: TWideStringField;
    RESERVE_TableSIN_GITA: TWideStringField;
    RESERVE_TableSIN_ROOMNAME: TWideStringField;
    RESERVE_TableSIN_FL: TWideStringField;
    RESERVE_TableSIN_HOSIL: TWideStringField;
    RESERVE_TableSIN_CHAIR: TWideStringField;
    RESERVE_TableSIN_DATE: TDateField;
    RESERVE_TableSIN_KIND: TWideStringField;
    RESERVE_TableSIN_COUNT: TWideStringField;
    RESERVE_TableSIN_USEJAJE: TWideStringField;
    RESERVE_TableSIN_ROOMCOST: TWideStringField;
    RESERVE_TableSIN_JAJECOST: TWideStringField;
    RESERVE_TableSIN_TOTALCOST: TWideStringField;
    RES_TableRES_CODE: TIntegerField;
    RES_TableRES_DATE: TDateField;
    RES_TableRES_RMCODE: TWideStringField;
    RES_TableRES_RMNAME: TWideStringField;
    RESERVE_Query2: TFDQuery;
    RESQ2_DataSetProvider: TDataSetProvider;
  private
    { Private declarations }
  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    function Res_Search(Res_data, code :string):integer;
    function appoinment(sql:string):string;
    function appoinmenttwo(sql,date:string):string;
  end;

implementation


{$R *.dfm}


uses System.StrUtils;

function TServerMethods1.appoinment(sql: string): string;
begin
  RESERVE_Query.SQL.Text := sql;
end;

function TServerMethods1.appoinmenttwo(sql, date: string): string;
begin
  RESERVE_Query.SQL.Text := sql;
end;

function TServerMethods1.EchoString(Value: string): string;
begin
  Result := Value;
end;

function TServerMethods1.Res_Search(Res_data, code: string): integer;
begin
  Res_Query.Close;
  Res_Query.SQL.Text := 'select count(*) from  RESERVation where RES_DATE like :Res_data and  RES_RMCODE like :code';
  Res_Query.ParamByName('Res_data').Asstring := Res_data;
  Res_Query.ParamByName('code').AsString := code;
  Res_Query.Open;
  result := Res_Query.FieldByName('count').AsInteger;
end;

function TServerMethods1.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;

end.

