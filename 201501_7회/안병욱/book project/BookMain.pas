unit BookMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.ToolWin, Vcl.StdCtrls, Vcl.Menus,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, Vcl.Bind.Grid, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Components,
  Data.Bind.Grid, Data.Bind.DBScope, Vcl.Imaging.jpeg;

type
  TMainForm = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Panel1: TPanel;
    ToolBar1: TToolBar;
    Edit1: TEdit;
    ToolButton5: TToolButton;
    Panel2: TPanel;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    Panel3: TPanel;
    ToolButton8: TToolButton;
    ComboBox1: TComboBox;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    ToolBar2: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    Panel4: TPanel;
    ComboBox2: TComboBox;
    ToolButton4: TToolButton;
    Panel5: TPanel;
    Edit2: TEdit;
    TabSheet4: TTabSheet;
    ToolBar4: TToolBar;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    Panel8: TPanel;
    ComboBox4: TComboBox;
    ToolButton16: TToolButton;
    Panel9: TPanel;
    Edit4: TEdit;
    GroupBox4: TGroupBox;
    ToolBar3: TToolBar;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    Panel6: TPanel;
    ComboBox3: TComboBox;
    ToolButton12: TToolButton;
    Panel7: TPanel;
    Edit3: TEdit;
    StringGrid1: TStringGrid;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    StringGrid3: TStringGrid;
    StringGrid4: TStringGrid;
    Image1: TImage;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    BindSourceDB2: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource;
    BindSourceDB3: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB3: TLinkGridToDataSource;
    StringGrid2: TStringGrid;
    BindSourceDB4: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB4: TLinkGridToDataSource;
    BindSourceDB5: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB5: TLinkGridToDataSource;

    procedure N8Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;
implementation

{$R *.dfm}

uses NewBook, Join, Rental, Return, BookDel, MemberDel, Booking, BookDm,
  MainRental, RentalBook;
var
  joinForm: TJoinForm;
  NewBookForm: TNewBookForm;
  RentalForm: TRentalForm;
  ReturnForm: TReturnForm;
  BookDelFrom: TBookDelForm;
  MemberDelForm: TMemberDelForm;



procedure TMainForm.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
   0: Begin
     DataModule1.BookDataset.IndexName := 'i_BookNum';
     DataModule1.BookDatasetBookNum.Index := 0;
     DataModule1.BookDatasetBookName.Index := 1;
   End;
   1: Begin
     DataModule1.BookDataset.IndexName := 'i_RegDay';
     DataModule1.BookDatasetBookName.Index := 1;
     DataModule1.BookDatasetRegDay.Index := 0;
   End;
   2: Begin
     DataModule1.BookDataset.IndexName := 'i_BookName';
     DataModule1.BookDatasetBookNum.Index := 1;
     DataModule1.BookDatasetBookName.Index := 0;

   End;
   3: Begin
     DataModule1.BookDataset.IndexName := 'i_Author';
     DataModule1.BookDatasetBookName.Index := 1 ;
     DataModule1.BookDatasetAuthor.Index := 0;
   End;
   4: Begin
     DataModule1.BookDataset.IndexName := 'i_Publish';
     DataModule1.BookDatasetBookName.Index := 1;
     DataModule1.BookDatasetPublish.Index := 0;
   End;
   end;
end;

procedure TMainForm.Edit1Change(Sender: TObject);
begin
  DataModule1.BookDataset.IndexName := 'i_BookName';
  DataModule1.BookDataset.FindNearest([Edit1.Text]);
end;

procedure TMainForm.Edit2Change(Sender: TObject);
begin
 DataModule1.MemberjoinDataSet.IndexName := 'i_ID';
  DataModule1.MemberjoinDataSet.FindNearest([Edit1.Text]);
end;

procedure TMainForm.Edit4Change(Sender: TObject);
begin
  DataModule1.MemberDataSet.IndexName := 'i_Name';
  DataModule1.MemberDataSet.FindNearest([Edit4.Text]);
end;

procedure TMainForm.N12Click(Sender: TObject);
begin
  MemberDelForm := TMemberDelForm.create(Application);
  MemberDelForm.Show;
end;

procedure TMainForm.N2Click(Sender: TObject);
begin
  joinForm := TJoinForm.Create(Application);
  joinForm.Show;
end;

procedure TMainForm.N4Click(Sender: TObject);
begin
   NewBookForm := TNewBookForm.Create(Application);
  NewBookForm.Show;
end;

procedure TMainForm.N6Click(Sender: TObject);
begin
  MainRentelForm := TMainRentelForm.Create(self);
  MainRentelForm.Show;
end;

procedure TMainForm.N7Click(Sender: TObject);
begin
  BookingForm := TBookingForm.Create(Application);
  BookingForm.Show;
end;

procedure TMainForm.N8Click(Sender: TObject);
begin
  ReturnForm := TReturnForm.Create(Application);
  ReturnForm.Show;
end;


end.
