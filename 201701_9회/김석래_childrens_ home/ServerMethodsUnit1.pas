unit ServerMethodsUnit1;

interface

uses System.SysUtils, System.Classes, System.Json,
    DataSnap.DSProviderDataModuleAdapter,
    Datasnap.DSServer, Datasnap.DSAuth, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.IB,
  FireDAC.Phys.IBDef, FireDAC.VCLUI.Wait, FireDAC.Comp.UI, FireDAC.Phys.IBBase,
  Data.DB, FireDAC.Comp.Client, Datasnap.Provider, FireDAC.Comp.DataSet;

type
  TServerMethods1 = class(TDSServerModule)
    qryCheck: TFDQuery;
    qryTeacher: TFDQuery;
    qryParents: TFDQuery;
    qryKids: TFDQuery;
    DataSetProvider1: TDataSetProvider;
    DataSetProvider2: TDataSetProvider;
    DataSetProvider3: TDataSetProvider;
    DataSetProvider4: TDataSetProvider;
    FDConnection1: TFDConnection;
    FDPhysIBDriverLink1: TFDPhysIBDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    qryCheckTEACHER_CLASS: TWideStringField;
    qryCheckTEACHER_NAME: TWideStringField;
    qryCheckTEACHER_ID: TWideStringField;
    qryCheckTEACHER_PHONE: TWideStringField;
    qryCheckKIDS_NAME: TWideStringField;
    qryCheckKIDS_ID: TWideStringField;
    qryCheckPARENTS_NAME: TWideStringField;
    qryCheckPARENTS_PHONE: TWideStringField;
    qryCheckKIDS_IMAGE: TBlobField;
    qryCheckKIDS_SEX: TWideStringField;
    qryCheckKIDS_AGE: TSmallintField;
    qryCheckPARENTS_ADDRESS: TWideStringField;
    qryCheckPARENTS_IMAGE: TBlobField;
    qryCheckTEACHER_IMAGE: TBlobField;
    qryKidsKIDS_NAME: TWideStringField;
    qryKidsKIDS_BIRTH: TStringField;
    qryKidsKIDS_SEX: TWideStringField;
    qryKidsKIDS_IMAGE: TBlobField;
    qryKidsKIDS_ENTERDATE: TStringField;
    qryKidsKIDS_AGE: TSmallintField;
    qryKidsKIDS_SEQ: TFDAutoIncField;
    qryKidsKIDS_CLASS: TWideStringField;
    qryKidsPARENTS_SEQ: TIntegerField;
    qryKidsCLASS_SEQ: TIntegerField;
    qryKidsKIDS_ID: TWideStringField;
    qryKidsKIDS_TEXT: TWideStringField;
    qryParentsPARENTS_SEQ: TFDAutoIncField;
    qryParentsPARENTS_NAME: TWideStringField;
    qryParentsPARENTS_BIRTH: TDateField;
    qryParentsPARENTS_SEX: TWideStringField;
    qryParentsPARENTS_IMAGE: TBlobField;
    qryParentsPARENTS_ADDRESS: TWideStringField;
    qryParentsPARENTS_PHONE: TWideStringField;
    qryParentsPARENTS_ID: TWideStringField;
    qryParentsPARENTS_EMAIL: TWideStringField;
    qryParentsPARENTS_AGE: TWideStringField;
    qryParentsKIDS_SEQ: TIntegerField;

  private
    { Private declarations }
  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;

  end;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

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

