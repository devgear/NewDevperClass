unit U_DM;

interface

uses
  System.SysUtils, System.Classes, Data.DBXInterBase, Data.DB,
  Datasnap.DBClient, SimpleDS, Data.SqlExpr, Data.FMTBcd, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDM = class(TDataModule)
    SQLConnection1: TSQLConnection;
    Employee: TSimpleDataSet;
    Part: TSimpleDataSet;
    Project: TSimpleDataSet;
    Data_Emp: TDataSource;
    Data_Part: TDataSource;
    Data_Project: TDataSource;
    P_List: TSimpleDataSet;
    Data_P_List: TDataSource;
    EMP_Query: TSQLQuery;
    Part_Query: TSQLQuery;
    Input_Query: TSQLQuery;
    delete_Query: TSQLQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
