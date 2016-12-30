unit UWindowDMForm;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.SqlExpr, Data.DBXDataSnap,
  IPPeerClient, Data.DBXCommon, Data.FMTBcd, Datasnap.DBClient,UWindowClient,
  Datasnap.DSConnect;

type
  TDataModule1 = class(TDataModule)
    SQLConnection1: TSQLConnection;
    DSProviderConnection1: TDSProviderConnection;
    CdsClassInfo: TClientDataSet;
    CdsReservationInfo: TClientDataSet;
    CdsMemberInfo: TClientDataSet;
    CdsMemberInfoM_NUM: TIntegerField;
    CdsMemberInfoM_ID: TWideStringField;
    CdsMemberInfoM_PW: TWideStringField;
    CdsMemberInfoM_NAME: TWideStringField;
    CdsMemberInfoM_BIRTHDATE: TWideStringField;
    CdsMemberInfoM_PHONE: TWideStringField;
    CdsMemberInfoM_EMAIL: TWideStringField;
    CdsQueryClassInfo: TClientDataSet;
    CdsQueryClassInfoC_TIME: TWideStringField;
    CdsQueryClassInfoC_GROUPTYPE: TIntegerField;
    CdsQueryClassInfoC_TEACHER: TWideStringField;
    CdsQueryClassInfoC_CLASSP: TIntegerField;
    CdsQueryClassInfoC_RESVP: TIntegerField;
    CdsQueryClassInfoC_Group: TStringField;
    CdsReservationInfoR_NUM: TIntegerField;
    CdsReservationInfoR_DATE: TDateField;
    CdsReservationInfoR_TIME: TWideStringField;
    CdsReservationInfoR_NAME: TWideStringField;
    CdsReservationInfoR_PHONE: TWideStringField;
    CdsReservationInfoR_RESVP: TIntegerField;
    CdsReservationInfoR_PW: TWideStringField;
    CdsReservationInfoR_EMAIL: TWideStringField;
    CdsReservationInfoR_MEMO: TWideStringField;
    CdsReservationInfoR_STATUS: TIntegerField;
    CdsReservationInfoC_NUM: TIntegerField;
    CdsReservationInfoM_NUM: TIntegerField;
    CdsReservationInfoR_CLASSNUMBER: TIntegerField;
    CdsReservationInfoR_TOTALCLASSCOST: TIntegerField;
    CdsClassInfoC_NUM: TIntegerField;
    CdsClassInfoC_DATE: TDateField;
    CdsClassInfoC_TIME: TWideStringField;
    CdsClassInfoC_GROUPTYPE: TIntegerField;
    CdsClassInfoC_TEACHER: TWideStringField;
    CdsClassInfoC_CLASSP: TIntegerField;
    CdsClassInfoC_RESVP: TIntegerField;
    CdsClassInfoC_CLASSCOST: TIntegerField;
    CdsQueryResevClassInfo: TClientDataSet;
    CdsQueryResevClassInfoR_NUM: TIntegerField;
    CdsQueryResevClassInfoR_DATE: TDateField;
    CdsQueryResevClassInfoR_TIME: TWideStringField;
    CdsQueryResevClassInfoR_NAME: TWideStringField;
    CdsQueryResevClassInfoR_PHONE: TWideStringField;
    CdsQueryResevClassInfoR_RESVP: TIntegerField;
    CdsQueryResevClassInfoR_MEMO: TWideStringField;
    CdsQueryResevClassInfoR_STATUS: TIntegerField;
    CdsQueryResevClassInfoR_CLASSNUMBER: TIntegerField;
    CdsQueryResevClassInfoR_TOTALCLASSCOST: TIntegerField;
    CdsQueryResevClassInfoC_GROUPTYPE: TIntegerField;
    CdsQueryResevClassInfoC_TEACHER: TWideStringField;
    CdsQueryResevClassInfoC_CLASSP: TIntegerField;
    CdsQueryResevClassInfoC_RESVP: TIntegerField;
    CdsQueryResevClassInfoC_Group: TStringField;
    CdsQueryClassInfoC_NUM: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure CdsQueryClassInfoCalcFields(DataSet: TDataSet);
    procedure CdsReservationInfoNewRecord(DataSet: TDataSet);
    procedure CdsClassInfoNewRecord(DataSet: TDataSet);
    procedure CdsMemberInfoNewRecord(DataSet: TDataSet);
    procedure CdsQueryResevClassInfoCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;
  Demo : TServerMethods1Client;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}



{$R *.dfm}

procedure TDataModule1.CdsClassInfoNewRecord(DataSet: TDataSet);
begin
    CdsClassInfoC_NUM.AsInteger := -1;
end;

procedure TDataModule1.CdsMemberInfoNewRecord(DataSet: TDataSet);
begin
  CdsMemberInfoM_NUM.AsInteger := -1;
end;

procedure TDataModule1.CdsQueryClassInfoCalcFields(DataSet: TDataSet);
  Var
   Group,Status : Integer;
   GroupStr,StatusStr : String;
begin
  Group := DataSet.FieldByName('C_Grouptype').AsInteger;
//  Status := DataSet.FieldByName('R_Status').AsInteger;

    Case Group of
      10 : GroupStr := '개인';
      20 : GroupStr := '그룹';
    else
      GroupStr := '그룹';
    End;
    CdsQueryClassInfoC_Group.AsString := GroupStr;

   { case Status of
      10 : StatusStr := '입금 대기';
      20 : StatusStr := '예약 완료';
      30 : StatusStr := '강습 완료';
    else
      StatusStr := '입금 대기';
    end;
    CdsQueryClassInfoC_GROUPTYPE.AsString := StatusStr;}

end;

procedure TDataModule1.CdsQueryResevClassInfoCalcFields(DataSet: TDataSet);
  Var
   Group,Status : Integer;
   GroupStr,StatusStr : String;
begin
  Group := DataSet.FieldByName('C_Grouptype').AsInteger;
//  Status := DataSet.FieldByName('R_Status').AsInteger;

    Case Group of
      10 : GroupStr := '개인';
      20 : GroupStr := '그룹';
    else
      GroupStr := '그룹';
    End;
    CdsQueryResevClassInfoC_Group.AsString := GroupStr;

   { case Status of
      10 : StatusStr := '입금 대기';
      20 : StatusStr := '예약 완료';
      30 : StatusStr := '강습 완료';
    else
      StatusStr := '입금 대기';
    end;
    CdsQueryResevClassInfoR_CLASSNUMBER.AsString := StatusStr; }
end;

procedure TDataModule1.CdsReservationInfoNewRecord(DataSet: TDataSet);
begin
  CdsReservationInfoR_NUM.AsInteger := -1;
end;

procedure TDataModule1.DataModuleCreate(Sender: TObject);
begin
  Demo := TServerMethods1Client.Create(SQLConnection1.DBXConnection);
end;

end.
