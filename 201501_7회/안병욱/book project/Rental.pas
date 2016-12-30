unit Rental;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Data.Bind.EngExt, Vcl.Bind.DBEngExt,
  Vcl.Bind.Grid, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Data.Bind.Components, Data.Bind.Grid;

type
  TRentalForm = class(TForm)
    Button1: TButton;
    Button2: TButton;
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    Panel2: TPanel;
    Edit1: TEdit;
    StringGrid1: TStringGrid;
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RentalForm: TRentalForm;
implementation

{$R *.dfm}

uses RentalBook, BookDm, BookMain, MainRental;

procedure TRentalForm.Button1Click(Sender: TObject);
begin
  MainRentelForm.DBEdit2.Text := Edit1.Text;
  close;
end;

procedure TRentalForm.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TRentalForm.Edit1Change(Sender: TObject);
begin
   DataModule1.MemberDataSet.IndexName := 'i_ID';
   DataModule1.MemberDataSet.FindNearest([Edit1.Text]);
end;

procedure TRentalForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
