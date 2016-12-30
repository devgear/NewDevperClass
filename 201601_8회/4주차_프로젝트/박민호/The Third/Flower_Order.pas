unit Flower_Order;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.WinXCtrls, Vcl.StdCtrls,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Mask;

type
  TOrder_Form = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    StatusBar1: TStatusBar;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Insert_Button: TButton;
    Cancel_Button: TButton;
    Delete_Button: TButton;
    Save_Button: TButton;
    Refresh_Button: TButton;
    Purchase_Info_SearchBox: TSearchBox;
    Name_DBEdit: TDBEdit;
    Items_DBEdit: TDBEdit;
    Qty_DBEdit: TDBEdit;
    Total_Price_DBEdit: TDBEdit;
    Delivery_DBEdit: TDBEdit;
    Pay_DBEdit: TDBEdit;
    procedure Refresh_ButtonClick(Sender: TObject);
    procedure Insert_ButtonClick(Sender: TObject);
    procedure Cancel_ButtonClick(Sender: TObject);
    procedure Delete_ButtonClick(Sender: TObject);
    procedure Save_ButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Order_Form: TOrder_Form;

implementation

{$R *.dfm}

uses Flower_Client_DataModule;

procedure TOrder_Form.Cancel_ButtonClick(Sender: TObject);
begin
  DataModule1.Order_ClientDataSet.Cancel;
end;

procedure TOrder_Form.Delete_ButtonClick(Sender: TObject);
begin
  if MessageDlg('정말 삭제하시겠습니까?', mtConfirmation, [mbYes, mbNo],0) = mrYes then
    begin
      try
        DataModule1.Order_ClientDataSet.Delete;
        DataModule1.Order_ClientDataSet.ApplyUpdates(-1);
        DataModule1.Order_ClientDataSet.Refresh;
      except
        on e:Exception do
           ShowMessage('더이상 삭제할 데이터가 없습니다.');
      end;
    end;
end;

procedure TOrder_Form.Insert_ButtonClick(Sender: TObject);
begin
  DataModule1.Order_ClientDataSet.Append;
  Name_DBEdit.SetFocus;
end;

procedure TOrder_Form.Refresh_ButtonClick(Sender: TObject);
begin
  DataModule1.Order_ClientDataSet.Refresh;
end;

procedure TOrder_Form.Save_ButtonClick(Sender: TObject);
begin
  if DataModule1.Order_ClientDataSet.UpdateStatus = TUpdateStatus.usInserted then
    DataModule1.Order_ClientDataSet.FieldByName('ORDER_SEQ').AsInteger := -1;
    DataModule1.Order_ClientDataSet.Post;
    DataModule1.Order_ClientDataSet.ApplyUpdates(0);
    DataModule1.Order_ClientDataSet.Refresh;
    Order_Form.Name_DBEdit.Clear;
    Order_Form.Items_DBEdit.Clear;
    Order_Form.Qty_DBEdit.Clear;
    Order_Form.Total_Price_DBEdit.Clear;
    Order_Form.Delivery_DBEdit.Clear;
    Order_Form.Pay_DBEdit.Clear;
    Showmessage('저장 되었습니다.');
end;

end.
