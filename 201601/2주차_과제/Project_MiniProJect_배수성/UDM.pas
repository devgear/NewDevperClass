unit UDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Phys.IB, FireDAC.Phys.IBDef,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  TDm = class(TDataModule)
    FDConnection1: TFDConnection;
    FDproTable: TFDTable;
    FDMemTable: TFDTable;
    FDdeptTable: TFDTable;
    FDproSouerce: TDataSource;
    FDMemSource: TDataSource;
    FDdeptsource: TDataSource;
    FDdeptTableD_ID: TIntegerField;
    FDdeptTableD_DEPT: TWideStringField;
    FDdeptTableD_TEAM: TWideStringField;
    FDproTableP_ID: TIntegerField;
    FDproTableP_NAME: TWideStringField;
    FDproTableP_STARTDATE: TSQLTimeStampField;
    FDproTableP_ENDDATE: TSQLTimeStampField;
    FDproTableP_MANAGER_ID: TIntegerField;
    FDproTableP_MEMBERCOUNT: TIntegerField;
    FDproTableP_STATUS: TIntegerField;
    FDMemTableM_ID: TIntegerField;
    FDMemTableM_NAME: TWideStringField;
    FDMemTableM_TEAM: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Dm: TDm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
