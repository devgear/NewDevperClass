unit Udm;

interface

uses
  SysUtils, Classes, DBXInterBase, DB, DBClient, DSConnect, SqlExpr,
  DBXDataSnap, DBXCommon;

type
  TDM = class(TDataModule)
    DSProviderConnection1: TDSProviderConnection;
    Custom: TClientDataSet;
    Car: TClientDataSet;
    branch: TClientDataSet;
    rev: TClientDataSet;
    rental: TClientDataSet;
    CustomSource: TDataSource;
    carSource: TDataSource;
    branchSource: TDataSource;
    revSource: TDataSource;
    rentalSource: TDataSource;
    Customc_id: TStringField;
    Customname: TStringField;
    Customtel: TStringField;
    Customaddress: TStringField;
    Customlicense_num: TStringField;
    Customjumin: TStringField;
    Custombigo: TStringField;
    Carcar_id: TStringField;
    Carnum: TStringField;
    Carname: TStringField;
    Carage: TStringField;
    Cartype: TStringField;
    Carbranch_id: TStringField;
    Carprice: TStringField;
    Carauto: TStringField;
    CarSTATUS: TStringField;
    branchbranch_id: TStringField;
    branchname: TStringField;
    branchaddress: TStringField;
    branchtel: TStringField;
    revrev_num: TStringField;
    revc_id: TStringField;
    revrev_date: TDateField;
    revuse_date: TIntegerField;
    revback_date: TDateField;
    revprice: TIntegerField;
    revbranch_id: TStringField;
    branchcar: TStringField;
    JOINTABLESource: TDataSource;
    rentalrental_id: TStringField;
    rentalcar_id: TStringField;
    rentalc_id: TStringField;
    rentalbranch_id: TStringField;
    rentalprice: TIntegerField;
    rentaluse_date: TIntegerField;
    rentalrental_date: TDateField;
    rentalback_date: TDateField;
    rentalrev_num: TStringField;
    rentalcar_status: TStringField;
    rentalpenalty: TStringField;
    JOINTABLE: TClientDataSet;
    JOINTABLEname: TStringField;
    JOINTABLEname_1: TStringField;
    SQLConnection1: TSQLConnection;
    subquery: TClientDataSet;
    subquerySource: TDataSource;
    JOINTABLEprice: TStringField;
    JOINTABLEcar_id: TStringField;
    JOINTABLEbranch_id: TStringField;
    JOINTABLEtype: TStringField;
    subqueryname: TStringField;
    subquerycar_status: TStringField;
    subqueryback_date: TDateField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

uses RecError;

{$R *.dfm}

end.
