unit UDm;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Phys.IBDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Phys.IBBase, FireDAC.Phys.IB, FireDAC.Comp.UI, Vcl.Dialogs;

type
  TDm = class(TDataModule)
    FDConnection1: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysIBDriverLink1: TFDPhysIBDriverLink;
    PrjTable: TFDTable;
    MemTable: TFDTable;
    DeptTable: TFDTable;
    PrjMeTable: TFDTable;
    PrjDS: TDataSource;
    MemDS: TDataSource;
    DeptDS: TDataSource;
    PrjMeDS: TDataSource;
    PrjTableP_ID: TIntegerField;
    PrjTableP_NAME: TWideStringField;
    PrjTableP_STARTDATE: TSQLTimeStampField;
    PrjTableP_ENDDATE: TSQLTimeStampField;
    PrjTableP_MANAGER_ID: TIntegerField;
    PrjTableP_MEMBERCOUNT: TIntegerField;
    PrjTableP_STATUS: TIntegerField;
    MemTableM_ID: TIntegerField;
    MemTableM_NAME: TWideStringField;
    MemTableM_TEAM: TIntegerField;
    DeptTableD_ID: TIntegerField;
    DeptTableD_DEPT: TWideStringField;
    DeptTableD_TEAM: TWideStringField;
    PrjMeTableR_ID: TIntegerField;
    PrjMeTableP_ID: TIntegerField;
    PrjMeTableM_ID: TIntegerField;
    MemTableM_PH: TWideStringField;
    MemTablerookup: TStringField;
    PrjTablerookup: TStringField;
    PrjMeTablep_rook: TIntegerField;
    PrjMeTablem_rook: TIntegerField;
    procedure PrjDSStateChange(Sender: TObject);
    procedure PrjTableAfterInsert(DataSet: TDataSet);
    procedure PrjTableAfterPost(DataSet: TDataSet);
    procedure MemTableAfterInsert(DataSet: TDataSet);
    procedure MemTableAfterPost(DataSet: TDataSet);
    procedure MemDSStateChange(Sender: TObject);
    procedure DeptDSStateChange(Sender: TObject);
    procedure DeptTableAfterInsert(DataSet: TDataSet);
    procedure DeptTableAfterPost(DataSet: TDataSet);
    procedure PrjMeTableAfterInsert(DataSet: TDataSet);
    procedure PrjMeTableAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Dm: TDm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UPrjSearch, UDeptSearch, UPrjMemSerch, UMemSearch;


{$R *.dfm}

procedure TDm.DeptDSStateChange(Sender: TObject);
begin
  DEPTSearchForm.Button1.Enabled := DEPTtable.State = dsBrowse;
  DEPTSearchForm.Button2.Enabled := DEPTtable.State = dsBrowse;
  DEPTSearchForm.Button3.Enabled := DEPTtable.State in [dsInsert, dsEdit];   // [dsInsert, dsEdit] 인지 아닌지 bool 값
  DEPTSearchForm.Button4.Enabled := DEPTtable.State in [dsInsert, dsEdit];
  //버튼활성화 비활성화
end;

procedure TDm.DeptTableAfterInsert(DataSet: TDataSet);
begin
  DEPTSearchForm.dbEdit1.SetFocus;
end;

procedure TDm.DeptTableAfterPost(DataSet: TDataSet);
begin
  Showmessage('등록/수정되었습니다');
end;

procedure TDm.MemDSStateChange(Sender: TObject);
begin
  MemSearchForm.Button1.Enabled := memtable.State = dsBrowse;
  MemSearchForm.Button2.Enabled := memtable.State = dsBrowse;
  MemSearchForm.Button3.Enabled := memtable.State in [dsInsert, dsEdit];   // [dsInsert, dsEdit] 인지 아닌지 bool 값
  MemSearchForm.Button4.Enabled := memtable.State in [dsInsert, dsEdit];
end;

procedure TDm.MemTableAfterInsert(DataSet: TDataSet);
begin
  MemSearchForm.dbEdit1.SetFocus;
end;

procedure TDm.MemTableAfterPost(DataSet: TDataSet);
begin
  Showmessage('등록/수정되었습니다');
end;

procedure TDm.PrjDSStateChange(Sender: TObject);
begin
  PrjSearchForm.Button1.Enabled := prjtable.State = dsBrowse;
  PrjSearchForm.Button2.Enabled := prjtable.State = dsBrowse;
  PrjSearchForm.Button3.Enabled := prjtable.State in [dsInsert, dsEdit];   // [dsInsert, dsEdit] 인지 아닌지 bool 값
  PrjSearchForm.Button4.Enabled := prjtable.State in [dsInsert, dsEdit];
end;

procedure TDm.PrjMeTableAfterInsert(DataSet: TDataSet);
begin
  PrjMSrForm.DBLookupComboBox1.SetFocus;
end;

procedure TDm.PrjMeTableAfterPost(DataSet: TDataSet);
begin
  Showmessage('등록/수정되었습니다');
end;

procedure TDm.PrjTableAfterInsert(DataSet: TDataSet);
begin
  PrjSearchForm.dbEdit1.SetFocus;
end;

procedure TDm.PrjTableAfterPost(DataSet: TDataSet);
begin
  Showmessage('등록/수정되었습니다');
end;

end.
