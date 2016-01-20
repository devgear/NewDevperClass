unit UDB;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.IB,
  FireDAC.Phys.IBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDM = class(TDataModule)
    FDConnection1: TFDConnection;
    Pro: TFDTable;
    ProSource: TDataSource;
    Bu: TFDTable;
    SaSource: TDataSource;
    BuSource: TDataSource;
    ProP_ID: TIntegerField;
    ProP_NAME: TWideStringField;
    ProP_STARTDATE: TSQLTimeStampField;
    ProP_ENDDATE: TSQLTimeStampField;
    ProP_MANAGER_ID: TIntegerField;
    ProP_MEMBERCOUNT: TIntegerField;
    ProP_STATUS: TIntegerField;
    BuD_ID: TIntegerField;
    BuD_DEPT: TWideStringField;
    BuD_TEAM: TWideStringField;
    Sa: TFDTable;
    SaM_ID: TIntegerField;
    SaM_NAME: TWideStringField;
    SaM_TEAM: TIntegerField;
    procedure ProAfterInsert(DataSet: TDataSet);
    procedure SaAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UPro, UBu, USa;

{$R *.dfm}

procedure TDM.ProAfterInsert(DataSet: TDataSet);
begin
  ProForm.dbEdit8.setfocus;
end;

procedure TDM.SaAfterInsert(DataSet: TDataSet);
begin
  SaForm.dbEdit2.setfocus;
end;

end.
