unit Ucommodity;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ComCtrls, FMTBcd, DB, SqlExpr, DBClient,
  SimpleDS, DBCtrls, dblookup, ExtCtrls, ComObj;

type
  TCommodity = class(TFrame)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    TabSheet2: TTabSheet;
    InputGrid: TStringGrid;
    Panel3: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ComboBox1: TComboBox;
    Edit3: TEdit;
    ComboBox4: TComboBox;
    Button3: TButton;
    Button2: TButton;
    Button1: TButton;
    Edit2: TEdit;
    Label7: TLabel;
    SimpleDataSet1: TSimpleDataSet;
    DateTimePicker1: TDateTimePicker;
    procedure ComboBox3Change(Sender: TObject);
    procedure ComboBox3Enter(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ComboBox2Enter(Sender: TObject);
    procedure InputGridDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure comboChange;
    procedure comboeEnter;
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure ComboBox4CloseUp(Sender: TObject);
    procedure ComboBox1Enter(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure ComboBox4Enter(Sender: TObject);
    procedure StringGridDeleteRow(StringGrid: TStringGrid; Position: Integer);
    procedure StringGridInsertRow(StringGrid: TStringGrid; Position: Integer);
    procedure TabSheet2Show(Sender: TObject);
    procedure check;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

  MyGrid = class(TStringGrid)
  public
    // procedure InsertRow(idx: Integer);
    // procedure DeleteRow(rowcounta: Integer);
    // procedure ChangeRow(idx1,idx2:Integer);
  end;

var
  sql: string;
  Commodity: TCommodity;

implementation

uses Udm;

{$R *.dfm}

var
  comboname: TComboBox;
  comboname2: TComboBox;
  rowcounta: Integer;
  i: Integer;
  TD: TTransactionDesc;
  index:string;

procedure TCommodity.Button1Click(Sender: TObject);
var
  i: Integer;
begin
  ShowMessage(combobox1.Text);
  try
    if (ComboBox1.Text='') or (ComboBox1.Text='물품코드') then
      Abort
    else if Edit3.Text='' then
      Abort
    else if Edit2.Text='' then
      Abort
    else if (ComboBox4.Text='') or (ComboBox4.Text='업체코드') then
      Abort

  finally
    check;
  end;
  sql:='select P_CODE from NEXTNO';
    dm.NextNoQuery.Close;
    dm.NextNoQuery.DataSet.CommandText:=sql;
    dm.NextNoQuery.Open;
    InputGrid.RowCount := InputGrid.RowCount + 1;
    InputGrid.Cells[0, InputGrid.RowCount - 2] :=
    IntToStr(dm.NextNoQuery.FieldByName('P_CODE').AsInteger+InputGrid.RowCount-2);
    InputGrid.Cells[0, InputGrid.RowCount - 1] := '';
    InputGrid.Cells[1, InputGrid.RowCount - 2] := ComboBox1.Text;
    InputGrid.Cells[2, InputGrid.RowCount - 2] := Edit3.Text;
    InputGrid.Cells[3, InputGrid.RowCount - 2] := Edit2.Text;
    InputGrid.Cells[4, InputGrid.RowCount - 2] := DateToStr(DateTimePicker1.Date);
    InputGrid.Cells[5, InputGrid.RowCount - 2] := ComboBox4.Text;


end;

procedure TCommodity.Button2Click(Sender: TObject);
var
  i:Integer;
  a: Integer;
begin
  dm.SQLConnection1.StartTransaction(TD);
  try
    for I := 1 to InputGrid.RowCount-2 do
    begin
      try
        sql := 'insert into purchase' +
          ' values(:PP_CODE,:CC_CODE,:PP_Money,:PP_Kg,:PP_Data,:VV_Code)';
        dm.PurchaseQuery.DataSet.CommandText := sql;
        dm.PurchaseQuery.DataSet.Params[0].AsInteger :=
          StrToInt(InputGrid.Cells[0, i]);
          ShowMessage(InputGrid.Cells[0, i]);
      except
        raise Exception.Create('insert error');
      end;
      try
        dm.CommodityQuery.Close;
        dm.CommodityQuery.DataSet.CommandText :=
          'select C_CODE from COMMODITY where C_NAME= :CC_NAME';
        dm.CommodityQuery.DataSet.Params[0].AsString := InputGrid.Cells[1, i];
        dm.CommodityQuery.Open;
      except
        raise Exception.Create('CommodityQuery select 에러');
      end;
      try
        dm.PurchaseQuery.DataSet.Params[1].AsInteger :=
          dm.CommodityQuery.FieldByName('C_CODE').AsInteger;
        dm.PurchaseQuery.DataSet.Params[2].AsInteger :=
          StrToInt(InputGrid.Cells[2, i]);
        dm.PurchaseQuery.DataSet.Params[3].AsInteger :=
          StrToInt(InputGrid.Cells[3, i]);
        dm.PurchaseQuery.DataSet.Params[4].AsDate :=
          StrToDate(InputGrid.Cells[4, i]);
      except
        raise Exception.Create('PurchaseQuery Params 에러');
      end;
      try
        SimpleDataSet1.Close;

        SimpleDataSet1.DataSet.CommandText :=
          'select V_CODE from VENDORS where V_BIZNAME= :VV_BIZNAME';

        SimpleDataSet1.DataSet.Params[0].AsString := InputGrid.Cells[5, i];

        SimpleDataSet1.Open;
      except
        raise Exception.Create('VendorsQuery select 에러');
      end;
      try
        dm.PurchaseQuery.DataSet.Params[5].AsInteger :=
          SimpleDataSet1.FieldByName('V_CODE').AsInteger;
        dm.PurchaseQuery.Execute;

      except
        raise Exception.Create('PurchaseQuery params에러');
      end;
      try
        sql := 'update NEXTNO set P_CODE=P_CODE+1';
        dm.NextNoQuery.Edit;
        dm.NextNoQuery.DataSet.CommandText := sql;
        dm.NextNoQuery.Post;
        dm.NextNoQuery.Execute;
        sql := '';
      except
        raise Exception.Create('NEXTNO update 에러');
      end;
    end;
   dm.SQLConnection1.commit(TD);
  except
    dm.SQLConnection1.Rollback(TD);
  end;

end;

procedure TCommodity.Button3Click(Sender: TObject);
begin
  ShowMessage(IntToStr(InputGrid.Selection.Bottom));
  StringGridDeleteRow(InputGrid, InputGrid.Row);
//  StringGridInsertRow(InputGrid, InputGrid.Row);
end;

procedure TCommodity.Button4Click(Sender: TObject);
begin
  dm.SQLConnection1.StartTransaction(TD);
  try
    dm.PurchaseQuery.UpdateRecord;
    dm.PurchaseQuery.ApplyUpdates(-1);
    dm.SQLConnection1.commit(TD)
  except
    raise Exception.Create('PurchaseQuery Update 에러');
    dm.SQLConnection1.Rollback(TD);
  end;
end;

procedure TCommodity.Button5Click(Sender: TObject);
begin
  try
    dm.PurchaseQuery.Close;
    sql := 'select * from purchase';
    dm.PurchaseQuery.DataSet.CommandText := sql;
    dm.PurchaseQuery.Open;
  except
    raise Exception.Create('PurchaseQuery select 에러');
  end;
end;

procedure TCommodity.Button6Click(Sender: TObject);
begin
  // DBGrid1.DataSource.DataSet:=dm.SimpleDataSet1;
  if MessageDlg('정말 삭제 할래?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    dm.PurchaseQuery.Delete;
    dm.PurchaseQuery.ApplyUpdates(-1);
  end;
  // DBGrid1.DataSource := dm.DataSource1;
end;

procedure TCommodity.check;
begin
  if (ComboBox1.Text='') or (ComboBox1.Text='물품코드') then
    ShowMessage('물품코드를 선택하세요')
  else if Edit3.Text='' then
    ShowMessage('매입원가를 입력하세요')
  else if Edit2.Text='' then
    ShowMessage('매입단위를 입력하세요')
  else if (ComboBox4.Text='') or (ComboBox4.Text='업체코드') then
    ShowMessage('업체코드를 선택하세요')
end;

procedure TCommodity.comboChange;
begin
  try
    dm.PurchaseQuery.Close;
    sql := 'select * from purchase where C_CODE in ' +
      '(select C_CODE from commodity where C_NAME=:CC_NAME) or V_CODE in ' +
      '(select V_CODE from VENDORS where V_BIZNAME=:VV_BIZNAME)';

    dm.PurchaseQuery.DataSet.CommandText := sql;
    dm.PurchaseQuery.DataSet.Params[0].AsString := ComboBox2.Text;
    dm.PurchaseQuery.DataSet.Params[1].AsString := ComboBox3.Text;
    dm.PurchaseQuery.Open;
    dm.PurchaseQuery.First;
    comboname.Text := '';
  except
    raise Exception.Create('콤보박스 값 선택 에러');
  end;
end;

procedure TCommodity.comboeEnter;
begin
  try
    if i = 0 then
    begin
      comboname.clear;

      sql := 'select C_NAME from commodity';
      dm.CommodityQuery.Close;
      dm.CommodityQuery.DataSet.CommandText := sql;
      dm.CommodityQuery.Open;
      dm.CommodityQuery.FindFirst;
      for i := 1 to dm.CommodityQuery.RecordCount do
      begin
        comboname.Items.add(dm.CommodityQuery.FieldByName('C_NAME').AsString);
        dm.CommodityQuery.FindNext;
      end;
      comboname.Text := index;
    end
    else
    begin
      comboname.clear;

      dm.VENDORSTable.Close;
      dm.VENDORSTable.Open;
      dm.VENDORSTable.Prior;

      for i := 1 to dm.VENDORSTable.RecordCount do
      begin
        comboname.Items.add(dm.VENDORSTable.FieldByName('V_BIZNAME').AsString);
        dm.VENDORSTable.Next;
      end;
      comboname.Text := index;
    end;
  except
    raise Exception.Create('Error Message');
  end;
end;

procedure TCommodity.ComboBox1Enter(Sender: TObject);
begin
  try
    i := 0;
    comboname := ComboBox1;
    index:='물품코드';
    comboeEnter;
  except
    raise Exception.Create('물품코드 선택 에러');
  end;
end;

procedure TCommodity.ComboBox2Change(Sender: TObject);
begin
  try
    comboname := ComboBox2;
    comboChange;
  except
    raise Exception.Create('종류별 값 선택 에러');
  end;
end;

procedure TCommodity.ComboBox2Enter(Sender: TObject);
begin
  try
    i := 0;
    comboname := ComboBox2;
    index:='종류별조회';
    comboeEnter;

  except
    raise Exception.Create('종류별 선택 에러');
  end;
end;

procedure TCommodity.ComboBox3Change(Sender: TObject);
begin
  try
    comboname := ComboBox3;
    comboChange;
  except
    raise Exception.Create('종류별 값 선택 에러');
  end;
end;

procedure TCommodity.ComboBox3Enter(Sender: TObject);
begin
  try
    i := 1;
    comboname := ComboBox3;
    index:='업체별조회';
    comboeEnter;
  except
    raise Exception.Create('종류별 선택 에러');
  end;
end;

procedure TCommodity.ComboBox4CloseUp(Sender: TObject);
begin
  ComboBox4.Text := '물품코드';
end;

procedure TCommodity.ComboBox4Enter(Sender: TObject);
begin
  try
    i := 1;
    comboname := ComboBox4;
    index:='업체코드';
    comboeEnter;
  except
    raise Exception.Create('종류별 선택 에러');
  end;
end;

procedure TCommodity.InputGridDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
  try
    InputGrid.Cells[0, 0] := '매입번호';
    InputGrid.Cells[1, 0] := '부위';
    InputGrid.Cells[2, 0] := '매입원가';
    InputGrid.Cells[3, 0] := '단위(kg)';
    InputGrid.Cells[4, 0] := '매입날짜';
    InputGrid.Cells[5, 0] := '납품업체명';
  except
    raise Exception.Create('InputGrid Cells 입력 에러');
  end;
end;

procedure TCommodity.StringGridDeleteRow(StringGrid: TStringGrid;
  Position: Integer);
var
  i: Integer;
begin
  // 범위 이탈시 예외처리
  if Position<>StringGrid.RowCount-1 then
  begin
    for i := Position to StringGrid.RowCount - 1 do
    begin
      StringGrid.Rows[i] := StringGrid.Rows[i + 1];
      InputGrid.Cells[0, i] :=
      IntToStr(dm.NextNoQuery.FieldByName('P_CODE').AsInteger+i);
    end;
    if i<>StringGrid.RowCount-1 then
      InputGrid.Cells[0, StringGrid.RowCount-2] :='';
    StringGrid.RowCount := StringGrid.RowCount - 1;
  end;
end;

procedure TCommodity.StringGridInsertRow(StringGrid: TStringGrid;
  Position: Integer);
var
  i: Integer;
begin
  // 범위 이탈시 예외처리

  StringGrid.RowCount := StringGrid.RowCount + 1;
  for i := StringGrid.RowCount - 1 downto Position + 1 do
    StringGrid.Rows[i] := StringGrid.Rows[i - 1];
  StringGrid.Rows[Position].clear;
end;




procedure TCommodity.TabSheet2Show(Sender: TObject);
begin
  DateTimePicker1.Date:=Now;
end;

{ TFrame1.MyGrid }

end.
