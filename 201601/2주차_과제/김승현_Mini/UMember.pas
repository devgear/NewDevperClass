unit UMember;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList, Vcl.ImgList;

type
  TMemForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    ComboBox1: TComboBox;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    Edit1: TEdit;
    DBNavigator1: TDBNavigator;
    Button1: TButton;
    Button2: TButton;
    DBGrid1: TDBGrid;
    Button3: TButton;
    Label6: TLabel;
    Button4: TButton;
    Button5: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    Button6: TButton;
    ImageList1: TImageList;
    Panel1: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MemForm: TMemForm;

implementation

{$R *.dfm}

uses UDM;

procedure TMemForm.Button1Click(Sender: TObject);
begin
  DataModule1.Member.Insert;
  DBEdit3.SetFocus;
end;

procedure TMemForm.Button2Click(Sender: TObject);
begin
  try
    DataModule1.Member.Post;
  Except
    on e:Exception do
      ShowMessage('사원등록 후에 사용하십시오.');
  end;
  DataModule1.Member.Refresh;
end;

procedure TMemForm.Button3Click(Sender: TObject);
begin
  DataModule1.Member.Cancel;
end;

procedure TMemForm.Button4Click(Sender: TObject);
begin
   if MessageDlg('삭제 ?',mtConfirmation,[mbYes, mbNo], 0) = mrYes then
    try
      UDM.DataModule1.Member.Delete;
    Except
      on E:Exception do
        ShowMessage(e.Message);
  end;
end;

procedure TMemForm.Button5Click(Sender: TObject);
begin
  DataModule1.Member.Edit;
end;

procedure TMemForm.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    0:
      begin
        DataModule1.Member.IndexFieldNames := 'M_ID';
        DataModule1.MemberM_ID.Index := 0;
        DataModule1.MemberM_NAME.Index := 1;
      end;
    1:
      begin
        DataModule1.Member.IndexFieldNames := 'M_NAME';
        DataModule1.MemberM_ID.Index := 1;
        DataModule1.MemberM_NAME.Index := 0;
      end;
  end;
end;

procedure TMemForm.DBEdit2Click(Sender: TObject);
begin
  ShowMessage('자동으로 증가합니다');
  DBEdit3.SetFocus;
end;

procedure TMemForm.Edit1Change(Sender: TObject);
begin
  DataModule1.Member.IndexFieldNames := 'M_NAME';
  DataModule1.Member.FindNearest([Edit1.Text]);
end;

procedure TMemForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TMemForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    SelectNext(ActiveControl, true, true);
end;

end.
