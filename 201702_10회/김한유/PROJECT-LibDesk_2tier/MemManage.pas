unit MemManage;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls;

type
  TMemForm = class(TForm)
    MemPanel: TPanel;
    pnlHeader: TPanel;
    lblCaption: TLabel;
    btnClose: TButton;
    pnlGridHeader: TPanel;
    Label1: TLabel;
    edtSearch: TEdit;
    chkSearchName: TCheckBox;
    chkSearchPhone: TCheckBox;
    MemGrid: TDBGrid;
    MemSource: TDataSource;
    btnAdd: TButton;
    procedure btnCloseClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure edtSearchKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MemForm: TMemForm;

implementation

{$R *.dfm}

uses DataAccessModule, Login;

procedure TMemForm.btnAddClick(Sender: TObject);
begin
  LoginForm.show;
end;

procedure TMemForm.btnCloseClick(Sender: TObject);
begin
  close;
end;

procedure TMemForm.edtSearchKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  Filter: string;
begin
  Filter := '';
  if edtSearch.Text <> '' then
  begin
    if chkSearchName.Checked then
      Filter := Format('USER_NAME like ''%%%s%%''', [edtSearch.Text]);
    if chkSearchPhone.Checked then
    begin
      if Filter <> '' then
        Filter := Filter + ' or ';
      Filter := Filter + Format('USER_PHONE like ''%%%s%%''', [edtSearch.Text]);
    end;
  end;

  DataAccess.qryUser.Filter := Filter;
  DataAccess.qryUser.Filtered := (Filter <> '');
end;

end.
