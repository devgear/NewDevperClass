unit UMember;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.StdCtrls,System.UITypes;

type
  TMemberForm = class(TForm)
    Button1: TButton;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    FDTable1: TFDTable;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    Memid : Integer;
    { Private declarations }
    procedure Selectmember;

  public
    { Public declarations }
    Property SelectMID: Integer read Memid;
  end;

var
  MemberForm: TMemberForm;

implementation

{$R *.dfm}

uses UDB, UMain;

procedure TMemberForm.Button1Click(Sender: TObject);
begin
  SelectMember;
end;

procedure TMemberForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  Action := caFree;
end;

procedure TMemberForm.FormCreate(Sender: TObject);
begin
   Memid := -1;
end;

procedure TMemberForm.Selectmember;
begin
  Memid := Datamodule1.Fdmember.FieldByName('M_ID').AsInteger;
  Close;
end;

end.
