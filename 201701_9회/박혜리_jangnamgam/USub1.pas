unit USub1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls, frxClass, frxDBSet,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormSub = class(TForm)
    pnl_sub_Haeder: TPanel;
    pnl_sub_main: TPanel;
    lb_name: TLabel;
    lb_phone: TLabel;
    lb_address: TLabel;
    lb_Id: TLabel;
    dedit_name: TDBEdit;
    dedit_id: TDBEdit;
    dedit_phone: TDBEdit;
    dedit_address: TDBEdit;
    btn_cash: TButton;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    dedit_rep: TDBEdit;
    btn_save: TButton;
    btn_add: TButton;
    TradeSource: TDataSource;
    frxReport1: TfrxReport;
    frxDBDataset2: TfrxDBDataset;
    frxDBDataset1: TfrxDBDataset;
    btn_close: TButton;
    lb_date: TLabel;
    lb_iteamname: TLabel;
    lb_ea: TLabel;
    lb_result: TLabel;
    pnl_right: TPanel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Button1: TButton;
    DBEdit4: TDBEdit;
    OpenDialog1: TOpenDialog;
    frxDBDataset3: TfrxDBDataset;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Memo1: TMemo;
    procedure btn_cashClick(Sender: TObject);
    procedure btn_saveClick(Sender: TObject);
    procedure btn_addClick(Sender: TObject);
    procedure btn_closeClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);

    procedure DBLookupComboBox1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLookupComboBox1CloseUp(Sender: TObject);

  private
    { Private declarations }
    procedure Result_Price;
    procedure Result_tax;
    procedure Result_figure;
  public
    { Public declarations }
  end;

var
  FormSub: TFormSub;

implementation

{$R *.dfm}

uses USubAdd, USubOrder, Udata, UMain, CommonFunctions;


procedure TFormSub.btn_addClick(Sender: TObject);
begin
  DBEdit1.SetFocus;
  DataModule5.TradeQuery.Append;
end;

procedure TFormSub.btn_cashClick(Sender: TObject);
begin
 frxReport1.ShowReport(True);
end;

procedure TFormSub.btn_closeClick(Sender: TObject);
begin
  FormSub.Close;
end;

procedure TFormSub.btn_saveClick(Sender: TObject);
begin
  DataModule5.TradeQuery.Post;
  DataModule5.TradeQuery.Refresh;
  DataModule5.FDQuery1.Refresh;
end;


procedure TFormSub.Button1Click(Sender: TObject);
begin
  if MessageDlg('삭제하시겠습니까?',mtconfirmation,[mbyes,mbno],0) = mryes then
  DataModule5.TradeQuery.Delete;
end;


procedure TFormSub.DBEdit4Exit(Sender: TObject);
begin

  Result_Price;
  Result_tax;
  Result_figure;
end;


procedure TFormSub.DBLookupComboBox1CloseUp(Sender: TObject);
begin

   Result_Price;
    Result_tax;
    Result_figure;
end;



procedure TFormSub.DBLookupComboBox1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
memo1.Lines.Add('DBLookupComboBox1KeyUp');
    Result_Price;
    Result_tax;
    Result_figure;
end;

procedure TFormSub.Result_figure;
var
  sum , result, fig : Double;
begin
  sum := DataModule5.TradeQuery.FieldByName('TR_RESULT').AsInteger;
  result :=  DataModule5.TradeQuery.FieldByName('TR_TAX').AsFloat;
  fig := sum + result;
  DataModule5.TradeQuery.FieldByName('TR_FIGURE').AsFloat := fig;
end;

procedure TFormSub.Result_Price;
var
  item_num, item_price, sum : Integer;
begin
  if DataModule5.TradeQuery.State = dsBrowse then
  Exit;

  item_num := DataModule5.TradeQuery.FieldByName('TR_ITEM_NUM').AsInteger;
  item_price := DataModule5.ItemQuery.FieldByName('ITEM_PRICE').AsInteger;
  sum := item_num * item_price;
  DataModule5.TradeQuery.FieldByName('TR_RESULT').AsInteger := sum;


end;

procedure TFormSub.Result_tax;
var
 result, tax : Double;

begin
  result := DataModule5.TradeQuery.FieldByName('TR_RESULT').AsInteger;
  tax :=  result * 0.1;
  DataModule5.TradeQuery.FieldByName('TR_TAX').AsFloat := tax;

end;

end.
