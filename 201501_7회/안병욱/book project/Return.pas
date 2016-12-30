unit Return;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls, Data.Bind.EngExt, Vcl.Bind.DBEngExt,
  Vcl.Bind.Grid, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope;

type
  TReturnForm = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Edit1: TEdit;
    Label3: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    StringGrid1: TStringGrid;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReturnForm: TReturnForm;

implementation

{$R *.dfm}

uses BookDm;

procedure TReturnForm.Button1Click(Sender: TObject);
begin
  server.Delete_Rental(Edit2.Text,Edit3.Text);
  DataModule1.MemberjoinDataSet.Refresh;
  showMessage('반납되었습니다.');
end;

procedure TReturnForm.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TReturnForm.Edit1Change(Sender: TObject);
begin
  DataModule1.MemberjoinDataSet.IndexName := 'i_ID';
  DataModule1.MemberjoinDataSet.FindNearest([Edit1.Text]);
end;

procedure TReturnForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
