unit P_ProjectMember;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls;

type
  TProjectMember = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Select: TButton;
    Cancel: TButton;
    FDTable1: TFDTable;
    DataSource1: TDataSource;
    procedure CancelClick(Sender: TObject);
    procedure SelectClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FMemberID : Integer;
    { Private declarations }
    procedure SelectMember;
  public
    { Public declarations }
    property SelectMemberId: Integer read FMemberId;
  end;

var
  ProjectMember: TProjectMember;

implementation

{$R *.dfm}

uses P_DataModule;

procedure TProjectMember.CancelClick(Sender: TObject);  // 취소 버튼 클릭
begin
  ProjectMember.Close;
end;

procedure TProjectMember.FormCreate(Sender: TObject); // 폼 생성시
begin
  FMemberId := -1;
end;

procedure TProjectMember.SelectClick(Sender: TObject);  // 선택 버튼 클릭
begin
  SelectMember;
end;

procedure TProjectMember.SelectMember;
begin
  FMemberId := FDTable1.FieldByName('M_ID').AsInteger;
  Close;
end;

end.
