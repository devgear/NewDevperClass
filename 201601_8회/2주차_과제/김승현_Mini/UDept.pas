unit UDept;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, System.ImageList, Vcl.ImgList;

type
  TDeptForm = class(TForm)
    Label1: TLabel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label5: TLabel;
    ComboBox1: TComboBox;
    Label6: TLabel;
    Edit1: TEdit;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    ImageList1: TImageList;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure DBEdit1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure DBEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DeptForm: TDeptForm;

implementation

{$R *.dfm}

uses UDM;

procedure TDeptForm.Button1Click(Sender: TObject);
begin
  DataModule1.Dept.Insert;
  DBEdit2.SetFocus;
end;

procedure TDeptForm.Button2Click(Sender: TObject);
begin
  DataModule1.Dept.Post;
end;

procedure TDeptForm.Button3Click(Sender: TObject);
begin
  DataModule1.Dept.Cancel;
end;

procedure TDeptForm.Button4Click(Sender: TObject);
begin
  if MessageDlg('삭제 ?',mtConfirmation,[mbYes, mbNo], 0) = mrYes then
    try
      UDM.DataModule1.Dept.Delete;
    Except
      on E:Exception do
        ShowMessage(e.Message);
  end;
end;

procedure TDeptForm.Button5Click(Sender: TObject);
begin
  DataModule1.Dept.Edit;
end;

procedure TDeptForm.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    0:
      begin
        DataModule1.Dept.IndexFieldNames := 'D_ID';
        DataModule1.DeptD_ID.Index := 0;
        DataModule1.DeptD_DEPT.Index := 1;
        DataModule1.DeptD_TEAM.Index := 2;
      end;
    1:
      begin
        DataModule1.Dept.IndexFieldNames := 'D_DEPT';
        DataModule1.DeptD_ID.Index := 1;
        DataModule1.DeptD_DEPT.Index := 0;
        DataModule1.DeptD_TEAM.Index := 2;
      end;
  end;
end;

procedure TDeptForm.DBEdit1Click(Sender: TObject);
begin
  ShowMessage('자동으로 증가합니다');
  DBEdit2.SetFocus;
end;

procedure TDeptForm.DBEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key = vk_return then
    if DataModule1.Dept.FindKey([DBEdit3.Text]) then
      ShowMessage('해당 팀이 존재합니다.');
end;

procedure TDeptForm.Edit1Change(Sender: TObject);
begin
  DataModule1.Dept.IndexFieldNames := 'D_DEPT';
  DataModule1.Dept.FindNearest([Edit1.Text]);
end;

procedure TDeptForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
