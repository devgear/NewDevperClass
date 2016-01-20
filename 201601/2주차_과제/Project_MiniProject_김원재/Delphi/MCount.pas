unit MCount;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.StdCtrls;

type
  TMCountForm = class(TForm)
    DBGrid1: TDBGrid;
    FDTable1: TFDTable;
    DataSource1: TDataSource;
    Button1: TButton;
    FDTable1M_ID: TIntegerField;
    FDTable1M_NAME: TWideStringField;
    FDTable1M_TEAM: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FMemId: Integer;
    { Private declarations }
    procedure SelectMember;
  public
    { Public declarations }
    property SelectMemId: Integer read FMemId;
  end;

var
  MCountForm: TMCountForm;

implementation

{$R *.dfm}

uses DM, Member;

procedure TMCountForm.Button1Click(Sender: TObject);
begin
  SelectMember;
end;

procedure TMCountForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TMCountForm.FormCreate(Sender: TObject);
begin
  FMemId := -1;
end;
procedure TMCountForm.SelectMember;
begin
  FMemId := FDTable1.FieldByName('M_ID').AsInteger;
  Close;
end;
end.
