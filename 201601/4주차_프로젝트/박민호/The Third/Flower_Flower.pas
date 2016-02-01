unit Flower_Flower;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Mask, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.WinXCtrls, Data.DBXDataSnap, IPPeerClient, Data.DBXCommon, Data.SqlExpr,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFlower_List_Info_Form = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    StatusBar1: TStatusBar;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    FlowerSearchBox: TSearchBox;
    Insert_Button1: TButton;
    Cancel_Button1: TButton;
    Delete_Button1: TButton;
    Save_Button1: TButton;
    Refresh_Button: TButton;
    Name_DBEdit: TDBEdit;
    Qty_DBEdit: TDBEdit;
    Price_DBEdit: TDBEdit;
    Flower_Point_DBEdit: TDBEdit;
    Image_DBEdit: TDBEdit;
    ScientificName_DBEdit: TDBEdit;
    Area_DBEdit: TDBEdit;
    Period_DBEdit: TDBEdit;
    Language_DBEdit: TDBEdit;
    procedure FlowerSearchBoxChange(Sender: TObject);
    procedure Delete_Button1Click(Sender: TObject);
    procedure Refresh_ButtonClick(Sender: TObject);
    procedure Cancel_Button1Click(Sender: TObject);
    procedure Insert_Button1Click(Sender: TObject);
    procedure Save_Button1Click(Sender: TObject);
    procedure Name_DBEditKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Flower_List_Info_Form: TFlower_List_Info_Form;

implementation

{$R *.dfm}

uses Flower_Client_DataModule, Flower_Server, Flower_ServerContainer,
  Flower_ServerMethods;


procedure TFlower_List_Info_Form.Cancel_Button1Click(Sender: TObject);
begin
  DataModule1.Flower_List_ClientDataSet.Cancel;
end;

procedure TFlower_List_Info_Form.Delete_Button1Click(Sender: TObject);
begin
  if MessageDlg('정말 삭제하시겠습니까?', mtConfirmation, [mbYes, mbNo],0) = mrYes then
    begin
      try
        DataModule1.Flower_List_ClientDataSet.Delete;
        DataModule1.Flower_List_ClientDataSet.ApplyUpdates(-1);
        DataModule1.Flower_List_ClientDataSet.Refresh;
      except
        on e:Exception do
           ShowMessage('더이상 삭제할 데이터가 없습니다.');
      end;
    end;
end;

procedure TFlower_List_Info_Form.Refresh_ButtonClick(Sender: TObject);
begin
  DataModule1.Flower_List_ClientDataSet.Refresh;
end;

procedure TFlower_List_Info_Form.Save_Button1Click(Sender: TObject);
begin
{

    DataModule1.Flower_List_ClientDataSet.FieldByName('LIST_NAME').AsString := Name_Edit.Text;
    DataModule1.Flower_List_ClientDataSet.FieldByName('LIST_QTY').AsString := QTY_Edit.Text;
    DataModule1.Flower_List_ClientDataSet.FieldByName('LIST_PRICE').AsString := PRICE_Edit.Text;
    DataModule1.Flower_List_ClientDataSet.FieldByName('LIST_POINT').AsString := FLOWER_POINT_Edit.Text;
    DataModule1.Flower_List_ClientDataSet.Post;
    DataModule1.Flower_List_ClientDataSet.ApplyUpdates(0);
    DataModule1.Flower_List_ClientDataSet.Refresh;
    Flower_List_Info_Form.Name_Edit.Clear;
    Flower_List_Info_Form.Qty_Edit.Clear;
    Flower_List_Info_Form.Price_Edit.Clear;
    Flower_List_Info_Form.Flower_Point_Edit.Clear;
}
  if DataModule1.Flower_List_ClientDataSet.UpdateStatus = TUpdateStatus.usInserted then
    DataModule1.Flower_List_ClientDataSet.FieldByName('LIST_SEQ').AsInteger := -1;
    DataModule1.Flower_List_ClientDataSet.Post;
    DataModule1.Flower_List_ClientDataSet.ApplyUpdates(0);
    DataModule1.Flower_List_ClientDataSet.Refresh;
    Flower_List_Info_Form.Name_DBEdit.Clear;
    Flower_List_Info_Form.Qty_DBEdit.Clear;
    Flower_List_Info_Form.Price_DBEdit.Clear;
    Flower_List_Info_Form.Flower_Point_DBEdit.Clear;
    Flower_List_Info_Form.ScientificName_DBEdit.Clear;
    Flower_List_Info_Form.Area_DBEdit.Clear;
    Flower_List_Info_Form.Period_DBEdit.Clear;
    Flower_List_Info_Form.Language_DBEdit.Clear;
    Showmessage('저장 되었습니다.');
end;

procedure TFlower_List_Info_Form.FlowerSearchBoxChange(Sender: TObject);
begin
  DataModule1.Flower_List_ClientDataSet.IndexFieldNames := 'LIST_NAME';
  DataModule1.Flower_List_ClientDataSet.IndexFieldNames := 'LIST_QTY';
  DataModule1.Flower_List_ClientDataSet.IndexFieldNames := 'LIST_PRICE';
  DataModule1.Flower_List_ClientDataSet.IndexFieldNames := 'LIST_POINT';
  DataModule1.Flower_List_ClientDataSet.FindNearest([FlowerSearchBox.Text]);
end;

procedure TFlower_List_Info_Form.Insert_Button1Click(Sender: TObject);
begin
  DataModule1.Flower_List_ClientDataSet.Append;
  Name_DBEdit.SetFocus;
end;

procedure TFlower_List_Info_Form.Name_DBEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
     SelectNext(ActiveControl, true, true);
end;

end.
