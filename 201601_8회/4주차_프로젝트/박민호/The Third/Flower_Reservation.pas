unit Flower_Reservation;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Mask, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.WinXCtrls;

type
  TReservation_Form = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    StatusBar1: TStatusBar;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Insert_Button: TButton;
    Cancel_Button: TButton;
    Delete_Button: TButton;
    Save_Button: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Refresh_Button: TButton;
    Reservation_SearchBox: TSearchBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Flower_DBEdit: TDBEdit;
    Qty_DBEdit: TDBEdit;
    Recipient_Name_DBEdit: TDBEdit;
    Recipient_PhoneNumber_DBEdit: TDBEdit;
    Recipient_Address_DBEdit: TDBEdit;
    Receive_DBComboBox: TDBComboBox;
    Payment_DBComboBox: TDBComboBox;
    procedure Name_EditKeyPress(Sender: TObject; var Key: Char);
    procedure Refresh_ButtonClick(Sender: TObject);
    procedure Insert_ButtonClick(Sender: TObject);
    procedure Cancel_ButtonClick(Sender: TObject);
    procedure Delete_ButtonClick(Sender: TObject);
    procedure Save_ButtonClick(Sender: TObject);
    procedure Reservation_SearchBoxChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Reservation_Form: TReservation_Form;

implementation

{$R *.dfm}

uses Flower_Client_DataModule, Flower_ServerMethods;


procedure TReservation_Form.Cancel_ButtonClick(Sender: TObject);
begin
  DataModule1.Reservation_ClientDataSet.Cancel;
end;

procedure TReservation_Form.Delete_ButtonClick(Sender: TObject);
begin
  if MessageDlg('정말 삭제하시겠습니까?', mtConfirmation, [mbYes, mbNo],0) = mrYes then
    begin
      try
        DataModule1.Reservation_ClientDataSet.Delete;
        DataModule1.Reservation_ClientDataSet.ApplyUpdates(-1);
        DataModule1.Reservation_ClientDataSet.Refresh;
      except
        on e:Exception do
           ShowMessage('더이상 삭제할 데이터가 없습니다.');
      end;
    end;
end;

procedure TReservation_Form.Insert_ButtonClick(Sender: TObject);
begin
  DataModule1.Reservation_ClientDataSet.Append;
  Flower_DBEdit.SetFocus;
end;

procedure TReservation_Form.Name_EditKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
     SelectNext(ActiveControl, true, true);
end;

procedure TReservation_Form.Refresh_ButtonClick(Sender: TObject);
begin
  DataModule1.Reservation_ClientDataSet.Refresh;
end;

procedure TReservation_Form.Reservation_SearchBoxChange(Sender: TObject);
begin
  DataModule1.Reservation_ClientDataSet.IndexFieldNames := 'RESERVATION_DATE';
  DataModule1.Reservation_ClientDataSet.IndexFieldNames := 'RESERVATION_TIME';
//  DataModule1.Reservation_ClientDataSet.IndexFieldNames := 'LIST_NAME_LOOKUP';
  DataModule1.Reservation_ClientDataSet.IndexFieldNames := 'RESERVATION_NAME';
  DataModule1.Reservation_ClientDataSet.IndexFieldNames := 'RESERVATION_PHONENUMBER';
  DataModule1.Reservation_ClientDataSet.IndexFieldNames := 'RECIPIENT_NAME';
  DataModule1.Reservation_ClientDataSet.IndexFieldNames := 'RECIPIENT_PHONENUMBER';
  DataModule1.Reservation_ClientDataSet.IndexFieldNames := 'RECIPIENT_ADDRESS';
  DataModule1.Reservation_ClientDataSet.IndexFieldNames := 'RECEIVE_TYPE';
  DataModule1.Reservation_ClientDataSet.IndexFieldNames := 'PAYMENT_TYPE';
  DataModule1.Reservation_ClientDataSet.FindNearest([Reservation_SearchBox.Text]);
end;

procedure TReservation_Form.Save_ButtonClick(Sender: TObject);
begin
  if DataModule1.Reservation_ClientDataSet.UpdateStatus = TUpdateStatus.usInserted then
    DataModule1.Reservation_ClientDataSet.FieldByName('MEMBER_SEQ').AsInteger := -1;
    DataModule1.Reservation_ClientDataSet.Post;
    DataModule1.Reservation_ClientDataSet.ApplyUpdates(0);
    DataModule1.Reservation_ClientDataSet.Refresh;
    Reservation_Form.Flower_DBEdit.Clear;
    Reservation_Form.Qty_DBEdit.Clear;
    Reservation_Form.Recipient_Name_DBEdit.Clear;
    Reservation_Form.Recipient_PhoneNumber_DBEdit.Clear;
    Reservation_Form.Recipient_Address_DBEdit.Clear;
    Reservation_Form.Receive_DBComboBox.Clear;
    Reservation_Form.Payment_DBComboBox.Clear;
    Showmessage('저장 되었습니다.');
end;

end.
