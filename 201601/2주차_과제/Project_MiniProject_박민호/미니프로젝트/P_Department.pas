unit P_Department;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ToolWin, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.WinXCtrls, Vcl.Buttons, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.ImageList, Vcl.ImgList;

type
  TDepartment = class(TForm)
    Panel1: TPanel;
    Cancel: TButton;
    Save: TButton;
    ImageList1: TImageList;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    FDQuery1D_ID: TIntegerField;
    FDQuery1D_DEPT: TWideStringField;
    FDQuery1D_TEAM: TWideStringField;
    Panel2: TPanel;
    First: TSpeedButton;
    Prior: TSpeedButton;
    Next: TSpeedButton;
    Last: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Insert: TButton;
    Modify: TButton;
    Delete: TButton;
    DepartmentSearchBox: TSearchBox;
    DepartmentDBGrid: TDBGrid;
    ToolBar1: TToolBar;
    Panel4: TPanel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Refresh: TButton;
    Inquiry: TButton;
    procedure InsertClick(Sender: TObject);
    procedure RefreshClick(Sender: TObject);
    procedure ModifyClick(Sender: TObject);
    procedure DeleteClick(Sender: TObject);
    procedure CancelClick(Sender: TObject);
    procedure SaveClick(Sender: TObject);
    procedure FirstClick(Sender: TObject);
    procedure PriorClick(Sender: TObject);
    procedure NextClick(Sender: TObject);
    procedure LastClick(Sender: TObject);
    procedure DepartmentSearchBoxChange(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure DBEdit2Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure InquiryClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Department: TDepartment;

implementation

{$R *.dfm}

uses P_DataModule, P_Insa, P_Main, P_ProjectInfo, P_ProjectMember;

var
  SaveDept : Boolean;

procedure TDepartment.InsertClick(Sender: TObject);
begin
  TDataModule.DeptTable.Insert;
  Department.DBEdit1.SetFocus;
end;

procedure TDepartment.ModifyClick(Sender: TObject);
begin
  TDataModule.DeptTable.Edit;
    if MessageDlg('정말 수정하시겠습니까?', mtConfirmation, [mbYes, mbNo],0) = mrYes then
      begin
        try
          TDataModule.DeptTable.Edit;
        except
          on e:Exception do
             ShowMessage(e.Message);
        end;
      end;
end;

procedure TDepartment.DeleteClick(Sender: TObject);
begin
  if MessageDlg('정말 삭제하시겠습니까?', mtConfirmation, [mbYes, mbNo],0) = mrYes then
    begin
      try
        TDataModule.DeptTable.Delete;
      except
        on e:Exception do
           ShowMessage(e.Message);
      end;
    end;
end;

procedure TDepartment.InquiryClick(Sender: TObject);
begin
  DepartmentDBGrid.DataSource := DataSource1;
  Fdquery1.Refresh;
end;

procedure TDepartment.RefreshClick(Sender: TObject);
begin
  TDataModule.DeptTable.Refresh;
end;

procedure TDepartment.CancelClick(Sender: TObject);
begin
  TDataModule.DeptTable.Cancel;
end;

procedure TDepartment.SaveClick(Sender: TObject);
begin
  if SaveDept then
     TDataModule.DeptTable.Post;
end;

procedure TDepartment.DBEdit1Change(Sender: TObject);
begin
  if (DBEdit1.Text <> '') then
     SaveDept := True;
end;

procedure TDepartment.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
     SelectNext(ActiveControl, true, true);
end;

procedure TDepartment.DBEdit2Change(Sender: TObject);
begin
  if (DBEdit2.Text <> '') then
     SaveDept := True;
end;

procedure TDepartment.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  Department := nil;
end;

procedure TDepartment.FormShow(Sender: TObject);
begin
  DBEdit1.Text := '';
  DBEdit2.Text := '';
  SaveDept := False;
end;

procedure TDepartment.DepartmentSearchBoxChange(Sender: TObject);
begin
  TDataModule.DeptTable.IndexFieldNames := 'D_ID';
  TDataModule.DeptTable.IndexFieldNames := 'D_DEPT';
  TDataModule.DeptTable.IndexFieldNames := 'D_TEAM';
  TDataModule.DeptTable.FindNearest([DepartmentSearchBox.Text]);
end;

procedure TDepartment.FirstClick(Sender: TObject);
begin
  FDQuery1.First;
  TDataModule.DeptTable.First;
end;

procedure TDepartment.PriorClick(Sender: TObject);
begin
  if Not FDQuery1.Bof then
     FDQuery1.Prior;
  if Not TDataModule.DeptTable.Bof then
     TDataModule.DeptTable.Prior;
end;

procedure TDepartment.NextClick(Sender: TObject);
begin
  if Not FDQuery1.Eof then
     FDQuery1.Next;
  if Not TDataModule.DeptTable.Eof then
     TDataModule.DeptTable.Next;
end;

procedure TDepartment.LastClick(Sender: TObject);
begin
  FDQuery1.Last;
  TDataModule.DeptTable.Last;
end;

end.
