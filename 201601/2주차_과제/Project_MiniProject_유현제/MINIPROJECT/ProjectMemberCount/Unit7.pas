unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids;

type
  TForm7 = class(TForm)
    DBGrid1: TDBGrid;
    Button1: TButton;
    FDTable1: TFDTable;
    DataSource1: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    FMemId: Integer;
    { Private declarations }
    procedure SelectMember;
  public
    { Public declarations }
    property SelectMemId: Integer read FMemId;
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

uses Unit8;

procedure TForm7.Button1Click(Sender: TObject);
begin
  SelectMember;
end;

procedure TForm7.FormCreate(Sender: TObject);
begin
  FMemId := -1;
end;

procedure TForm7.SelectMember;
begin
  FMemId := FDTable1.FieldByName('M_ID').AsInteger;
  Close;
end;

end.
