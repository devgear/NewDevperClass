unit Flower_Member;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls,
  Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient, Datasnap.Provider, Vcl.Mask,
  Vcl.DBCtrls, Vcl.WinXCtrls;

type
  TMember_Form = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    StatusBar1: TStatusBar;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBNavigator1: TDBNavigator;
    Insert_Button: TButton;
    Cancel_Button: TButton;
    Delete_Button: TButton;
    Save_Button: TButton;
    Refresh_Button: TButton;
    Member_SearchBox: TSearchBox;
    Label6: TLabel;
    Name_DBEdit: TDBEdit;
    Address_DBEdit: TDBEdit;
    PhoneNumber_DBEdit: TDBEdit;
    Customer_Point_DBEdit: TDBEdit;
    LastVisit_DBEdit: TDBEdit;
    Label7: TLabel;
    Birthday_DBEdit: TDBEdit;
    procedure Refresh_ButtonClick(Sender: TObject);
    procedure Insert_ButtonClick(Sender: TObject);
    procedure Cancel_ButtonClick(Sender: TObject);
    procedure Delete_ButtonClick(Sender: TObject);
    procedure Save_ButtonClick(Sender: TObject);
    procedure Member_SearchBoxChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Member_Form: TMember_Form;

implementation

{$R *.dfm}

uses Flower_Server, Flower_ServerContainer, Flower_ServerMethods,
  Flower_Client_DataModule;

procedure TMember_Form.Cancel_ButtonClick(Sender: TObject);
begin
  DataModule1.Member_ClientDataSet.Cancel;
end;

procedure TMember_Form.Delete_ButtonClick(Sender: TObject);
begin
  if MessageDlg('정말 삭제하시겠습니까?', mtConfirmation, [mbYes, mbNo],0) = mrYes then
    begin
      try
        DataModule1.Member_ClientDataSet.Delete;
        DataModule1.Member_ClientDataSet.ApplyUpdates(-1);
        DataModule1.Member_ClientDataSet.Refresh;
      except
        on e:Exception do
           ShowMessage('더이상 삭제할 데이터가 없습니다.');
      end;
    end;
end;

procedure TMember_Form.Insert_ButtonClick(Sender: TObject);
begin
  DataModule1.Member_ClientDataSet.Append;
  Name_DBEdit.SetFocus;
end;

procedure TMember_Form.Member_SearchBoxChange(Sender: TObject);
begin
  DataModule1.Member_ClientDataSet.IndexFieldNames := 'MEMBER_CODE';
  DataModule1.Member_ClientDataSet.IndexFieldNames := 'MEMBER_NAME';
  DataModule1.Member_ClientDataSet.IndexFieldNames := 'MEMBER_ADDRESS';
  DataModule1.Member_ClientDataSet.IndexFieldNames := 'MEMBER_PHONENUMBER';
  DataModule1.Member_ClientDataSet.IndexFieldNames := 'MEMBER_BIRTHDAY';
  DataModule1.Member_ClientDataSet.IndexFieldNames := 'MEMBER_POINT';
  DataModule1.Member_ClientDataSet.IndexFieldNames := 'MEMBER_LASTVISIT';
  DataModule1.Member_ClientDataSet.FindNearest([Member_SearchBox.Text]);
end;

procedure TMember_Form.Refresh_ButtonClick(Sender: TObject);
begin
  DataModule1.MEMBER_ClientDataSet.Refresh;
end;

procedure TMember_Form.Save_ButtonClick(Sender: TObject);
begin
  if DataModule1.MEMBER_ClientDataSet.UpdateStatus = TUpdateStatus.usInserted then
    DataModule1.MEMBER_ClientDataSet.FieldByName('MEMBER_SEQ').AsInteger := -1;
    DataModule1.MEMBER_ClientDataSet.Post;
    DataModule1.MEMBER_ClientDataSet.ApplyUpdates(0);
    DataModule1.MEMBER_ClientDataSet.Refresh;
    MEMBER_Form.Name_DBEdit.Clear;
    MEMBER_Form.Address_DBEdit.Clear;
    MEMBER_Form.PhoneNumber_DBEdit.Clear;
    MEMBER_Form.Birthday_DBEdit.Clear;
    MEMBER_Form.Customer_Point_DBEdit.Clear;
    MEMBER_Form.LastVisit_DBEdit.Clear;
    Showmessage('저장 되었습니다.');
end;

end.
