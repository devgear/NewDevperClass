unit uFoodListFms;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, Grids, DBGrids, Buttons, ComCtrls, jpeg,
  ExtCtrls;

type
  TFdFrm = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    ComboBox1: TComboBox;
    TabSheet2: TTabSheet;
    labe: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Button3: TButton;
    Button4: TButton;
    TabSheet3: TTabSheet;
    DBGrid2: TDBGrid;
    Label3: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    Image1: TImage;
    lblFoodTitle: TLabel;
    DBGrid1: TDBGrid;
    Image2: TImage;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboBox1Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FdFrm: TFdFrm;

implementation

uses uBarDM;

{$R *.dfm}

procedure TFdFrm.Button3Click(Sender: TObject);
begin
  with DM.insertQuery do
  begin
    close;
    sql.Clear;
    SQL.Add('insert into food_info (f_num, f_name, f_price, f_path, f_date, f_check) values');
    SQL.Add('(:Pf_num, :Pf_name, :Pf_price, :Pf_path, :Pf_date, :Pf_check)');
    ParamByName('Pf_num').AsInteger := StrToInt(Edit2.Text);
    ParamByName('Pf_name').AsString := Edit3.Text;
    ParamByName('Pf_price').AsInteger := StrToInt(Edit4.Text);
    ParamByName('Pf_path').AsString := '';
    ParamByName('Pf_date').AsDate := StrToDate(Edit5.Text);
    ParamByName('Pf_check').AsString := '1';
    ExecSQL;

    ShowMessage('상품등록이 완료되었습니다.');

    Edit2.Text := IntToStr(DM.FoodTable.RecordCount+1);
    Edit3.Text :='';
    Edit4.Text :='';
    Edit5.Text := FormatDateTime('yyyy-mm-dd',now())
  end;
end;

procedure TFdFrm.Button5Click(Sender: TObject);
begin
  Edit2.Text := '';
  Edit3.Text := '';
  Edit4.Text := '';
  Edit5.Text := '';
end;

procedure TFdFrm.Button6Click(Sender: TObject);
begin
  close;
end;

procedure TFdFrm.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    0: DM.FoodTable.IndexName :='f_num';
    1: DM.FoodTable.IndexName :='f_name';
    2: DM.FoodTable.IndexName :='f_check';
  end;
end;

procedure TFdFrm.Edit1Change(Sender: TObject);
begin
  DM.FoodTable.IndexFieldNames := 'f_name';
  DM.FoodTable.FindNearest([Edit1.Text]);
end;

procedure TFdFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FdFrm.Free;
end;

procedure TFdFrm.FormCreate(Sender: TObject);
begin
    Edit2.Text := IntToStr(DM.FoodTable.RecordCount+1);
    Edit5.Text := FormatDateTime('yyyy-mm-dd',now())
end;

procedure TFdFrm.SpeedButton1Click(Sender: TObject);
begin
  DM.FoodTable.First;
end;

procedure TFdFrm.SpeedButton2Click(Sender: TObject);
begin
  if not DM.FoodTable.bof then
    dm.FoodTable.Prior;
end;

procedure TFdFrm.SpeedButton3Click(Sender: TObject);
begin
  if not dm.FoodTable.eof then
    dm.FoodTable.Next;
end;

procedure TFdFrm.SpeedButton4Click(Sender: TObject);
begin
  dm.FoodTable.Last;
end;

end.
