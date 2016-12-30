unit MemberDel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, Data.Bind.EngExt, Vcl.Bind.DBEngExt,
  Vcl.Bind.Grid, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope;

type
  TMemberDelForm = class(TForm)
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    Panel2: TPanel;
    Edit1: TEdit;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Button1: TButton;
    StringGrid1: TStringGrid;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MemberDelForm: TMemberDelForm;

implementation

{$R *.dfm}

uses BookDm;

procedure TMemberDelForm.Button1Click(Sender: TObject);
begin
  if Messagedlg('정말 삭제할래?', mtConfirmation, [mbok, mbcancel], 0) = mrok then
  begin
    try
      begin
        DataModule1.MemberDataSet.Delete;
        DataModule1.MemberDataSet.ApplyUpdates(-1);
        ShowMessage('탈퇴 되었습니다.');
      end
    Except
      On e: Exception do
        ShowMessage('삭제 오류');
    end;
  end;
end;

procedure TMemberDelForm.Edit1Change(Sender: TObject);
begin
  DataModule1.MemberDataSet.IndexName := 'i_ID';
  DataModule1.MemberDataSet.FindNearest([Edit1.Text]);
end;

procedure TMemberDelForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TMemberDelForm.FormCreate(Sender: TObject);
begin
  DBEdit1.Text := '';
end;

end.
