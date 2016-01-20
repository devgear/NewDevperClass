unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.IB,
  FireDAC.Phys.IBDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.VCLUI.Wait, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Mask, Vcl.Grids, Vcl.DBGrids, FireDAC.Phys.IBBase,
  FireDAC.Comp.UI, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TForm3 = class(TForm)
    tblProject: TFDTable;
    DBGrid1: TDBGrid;
    dsProject: TDataSource;
    DBGrid2: TDBGrid;
    tblMember: TFDTable;
    dsMember: TDataSource;
    tblProMem: TFDTable;
    dsProjectMember: TDataSource;
    Button1: TButton;
    tblProMemR_ID: TIntegerField;
    tblProMemP_ID: TIntegerField;
    tblProMemM_ID: TIntegerField;
    tblProMemMEMBER: TStringField;
    qryProjectMemberCount: TFDQuery;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);

  private
    { Private declarations }
    procedure AddMember(const AProId, AMemId: Integer);
    procedure UpdateMemberCount(const AProId: Integer);
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses Unit8, Unit7;

procedure TForm3.AddMember(const AProId, AMemId: Integer);
var
  Cnt: Integer;
begin
  DataModule8.FDConnection1.StartTransaction;
  try
    tblProMem.Insert;
    tblProMem.FieldByName('P_ID').AsInteger := AProId;
    tblProMem.FieldByName('M_ID').AsInteger := AMemId;
    tblProMem.Post;

    UpdateMemberCount(AmemId);

    DataModule8.FDConnection1.Commit
  except
    DataModule8.FDConnection1.Rollback;
  end;
end;

procedure TForm3.Button1Click(Sender: TObject);
var
  ProId, MemId: Integer;
begin
  Form7 := TForm7.Create(nil);
  try
    Form7.ShowModal;
    ProId := tblProject.FieldByName('P_ID').AsInteger;
    MemId := Form7.SelectMemId;
    if MemId <> -1 then
      AddMember(ProId, MemId);
  finally
    Form7.Free;
  end;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  DataModule8.FDConnection1.StartTransaction;
  try
    tblProMem.Delete;
//    tblProMem.Post;
    UpdateMemberCount(tblProject.FieldByName('P_ID').AsInteger);

    DataModule8.FDConnection1.Commit;
  except
    DataModule8.FDConnection1.Rollback;
  end;
end;


procedure TForm3.UpdateMemberCount(const AProId: Integer);
var
  Cnt: Integer;
begin
  qryProjectMemberCount.Close;
  qryProjectMemberCount.ParamByName('P_ID').AsInteger := AProId;
  qryProjectMemberCount.Open;
  cnt := qryProjectMemberCount.Fields[0].AsInteger;

  tblProject.Edit;
  tblProject.FieldByName('P_MEMBERCOUNT').AsInteger := cnt;
  tblProject.Post;
end;

end.
