unit MainRental;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, Vcl.Bind.Grid, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Components,
  Data.Bind.Grid, Data.Bind.DBScope, Vcl.Grids, Vcl.ExtCtrls;

type
  TMainRentelForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    GroupBox1: TGroupBox;
    StringGrid1: TStringGrid;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    Edit1: TEdit;
    Panel3: TPanel;
    Panel4: TPanel;
    Edit2: TEdit;
    GroupBox2: TGroupBox;
    StringGrid2: TStringGrid;
    BindSourceDB2: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource;
    GroupBox3: TGroupBox;
    StringGrid3: TStringGrid;
    DBEdit3: TDBEdit;
    DBComboBox1: TDBComboBox;
    Label3: TLabel;
    Label4: TLabel;
    Panel5: TPanel;
    Panel6: TPanel;
    Edit3: TEdit;
    Button5: TButton;
    Edit4: TEdit;
    BindSourceDB3: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB3: TLinkGridToDataSource;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure StringGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure StringGrid2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
    FRentalNum: Integer;
  public
    { Public declarations }
  end;

var
  MainRentelForm: TMainRentelForm;
implementation

{$R *.dfm}

uses BookDm, Rental, RentalBook;

procedure TMainRentelForm.Button1Click(Sender: TObject);
begin
  DataModule1.RentalBookDataSet.Append;
  DataModule1.RentalBookDataSet.FieldByName('RentalNum').AsInteger := FRentalNum;
  DataModule1.RentalBookDataSet.FieldByName('RentalBookNum').AsInteger := 0;
end;

procedure TMainRentelForm.Button2Click(Sender: TObject);
begin
  server.Insert_BookRental(Edit4.Text,DBComboBox1.Text,DBEdit3.Text);
  DataModule1.MemberjoinDataSet.Refresh;
  ShowMessage('대여 되었습니다.');
end;

procedure TMainRentelForm.Button3Click(Sender: TObject);
begin
  close;
end;

procedure TMainRentelForm.Button4Click(Sender: TObject);
begin
   DataModule1.RentalDataSet.Cancel;
   DataModule1.RentalDataSet.CancelUpdates; // 찌거기 다 없애줘
   Close;
end;

procedure TMainRentelForm.Button5Click(Sender: TObject);
begin
  DataModule1.RentalDataset.Post;
  DataModule1.RentalDataset.ApplyUpdates(-1);
  DataModule1.RentalDataset.Refresh;
  DataModule1.RentalDataset.Last;
  Edit4.Text := DataModule1.RentalDataSet.FieldByName('RentalNum').AsString;
  //DataModule1.RentalBookDataSet.Append;

//  DataModule1.RentalBookDataSet.FieldByName('RentalBookNum').AsInteger := 0;
 // FRentalNum := DataModule1.RentalDataSet.FieldByName('RentalNum').AsInteger;
 // DataModule1.RentalBookDataSet.FieldByName('RentalNum').AsInteger := FRentalNum;
end;

procedure TMainRentelForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := caFree;
end;

procedure TMainRentelForm.FormCreate(Sender: TObject);
begin

  DataModule1.RentalDataset.Append;
  //DataModule1.RentalBookDataSet.Append;
  DataModule1.RentalDataSet.FieldByName('RentalNum').AsInteger := 0;

  DBEdit1.Text := DateToStr(now);
end;

procedure TMainRentelForm.StringGrid1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
   ACol, ARow : integer;
begin
   stringgrid1.MouseToCell(x, y, ACol, ARow );
   DBEdit2.Text := stringgrid1.Cells[ACol,ARow];
end;

procedure TMainRentelForm.StringGrid2MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
   ACol, ARow : integer;
begin
   stringgrid2.MouseToCell(x, y, ACol, ARow );
   DBEdit3.Text := stringgrid2.Cells[ACol,ARow];
end;

end.
