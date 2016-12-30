unit RentalBook;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Data.Bind.EngExt, Vcl.Bind.DBEngExt,
  Vcl.Bind.Grid, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope;

type
  TRentalBookForm = class(TForm)
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    Panel2: TPanel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    DBComboBox1: TDBComboBox;
    StringGrid1: TStringGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RentalBookForm: TRentalBookForm;

implementation

{$R *.dfm}

uses BookDm, MainRental;

procedure TRentalBookForm.Button1Click(Sender: TObject);
begin
  DataModule1.RentalBookDataset.Post;
   DataModule1.RentalBookDataset.ApplyUpdates(-1);
   DataModule1.RentalBookDataset.Refresh;
   ShowMessage('등록되었습니다.');
   DataModule1.RentalBookDataSet.Append;
   DataModule1.RentalBookDataSet.FieldByName('RentalBookNum').AsInteger := 0;
   DBEdit2.Text := DataModule1.RentalDataSet.FieldByName('RentalNum').AsString;
end;

procedure TRentalBookForm.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TRentalBookForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TRentalBookForm.FormCreate(Sender: TObject);
begin
  DataModule1.RentalBookDataSet.Append;
  DataModule1.RentalBookDataSet.FieldByName('RentalBookNum').AsInteger := 0;
//  DataModule1.RentalBookDataSet.Refresh;
 // DataModule1.RentalBookDataSet.Last;
end;

end.
