unit ServerMethodsUnit;

interface

uses System.SysUtils, System.Classes, System.Json,
    Datasnap.DSServer, Datasnap.DSAuth, DataSnap.DSProviderDataModuleAdapter,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.IB, FireDAC.Phys.IBDef, FireDAC.VCLUI.Wait,
  FireDAC.Comp.UI, FireDAC.Phys.IBBase, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  Datasnap.Provider, FireDAC.Comp.DataSet;

type
  TServerMethods1 = class(TDSServerModule)
    FDConnection1: TFDConnection;
    FDPhysIBDriverLink1: TFDPhysIBDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    TbClassInfo: TFDTable;
    DspClassInfo: TDataSetProvider;
    TbReservationInfo: TFDTable;
    TbMemberInfo: TFDTable;
    DspReservationInfo: TDataSetProvider;
    DspMemberInfo: TDataSetProvider;
    TbMemberInfoM_NUM: TIntegerField;
    TbMemberInfoM_ID: TWideStringField;
    TbMemberInfoM_PW: TWideStringField;
    TbMemberInfoM_NAME: TWideStringField;
    TbMemberInfoM_BIRTHDATE: TWideStringField;
    TbMemberInfoM_PHONE: TWideStringField;
    TbMemberInfoM_EMAIL: TWideStringField;
    FdqClassInfo: TFDQuery;
    DspqueryClassInfo: TDataSetProvider;
    TbClassInfoC_NUM: TIntegerField;
    TbClassInfoC_DATE: TDateField;
    TbClassInfoC_TIME: TWideStringField;
    TbClassInfoC_GROUPTYPE: TIntegerField;
    TbClassInfoC_TEACHER: TWideStringField;
    TbClassInfoC_CLASSP: TIntegerField;
    TbClassInfoC_RESVP: TIntegerField;
    TbClassInfoC_CLASSCOST: TIntegerField;
    TbReservationInfoR_NUM: TIntegerField;
    TbReservationInfoR_DATE: TDateField;
    TbReservationInfoR_TIME: TWideStringField;
    TbReservationInfoR_NAME: TWideStringField;
    TbReservationInfoR_PHONE: TWideStringField;
    TbReservationInfoR_RESVP: TIntegerField;
    TbReservationInfoR_PW: TWideStringField;
    TbReservationInfoR_EMAIL: TWideStringField;
    TbReservationInfoR_MEMO: TWideStringField;
    TbReservationInfoR_STATUS: TIntegerField;
    TbReservationInfoC_NUM: TIntegerField;
    TbReservationInfoM_NUM: TIntegerField;
    TbReservationInfoR_CLASSNUMBER: TIntegerField;
    TbReservationInfoR_TOTALCLASSCOST: TIntegerField;
    FdqResevClassInfo: TFDQuery;
    DspqueryResevClassInfo: TDataSetProvider;
    FdusResevClassInfo: TFDUpdateSQL;
  private
    { Private declarations }
  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;

  end;

implementation


{$R *.dfm}


uses System.StrUtils;

function TServerMethods1.EchoString(Value: string): string;
begin
  Result := Value;
end;

function TServerMethods1.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;

end.

