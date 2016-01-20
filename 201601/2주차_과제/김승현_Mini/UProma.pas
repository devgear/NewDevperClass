unit UProma;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.ImageList, Vcl.ImgList;

type
  TPromaForm = class(TForm)
    DBGrid1: TDBGrid;
    Label7: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button3: TButton;
    Button4: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Button5: TButton;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    FDQuery2: TFDQuery;
    DataSource2: TDataSource;
    Button2: TButton;
    ImageList1: TImageList;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PromaForm: TPromaForm;
  i:integer;

implementation

{$R *.dfm}

uses UDM;

procedure TPromaForm.Button1Click(Sender: TObject);
begin
  DataModule1.ProMa.Insert;
end;

procedure TPromaForm.Button2Click(Sender: TObject);
begin
  DataModule1.ProMa.Refresh;
end;

procedure TPromaForm.Button3Click(Sender: TObject);
var
  num :string;
begin
  UDM.DataModule1.FDConnection1.StartTransaction;
  try
    try
      DataModule1.ProMa.Post;
    except
      ShowMessage('저장 오류');
      raise;
    end;
    FDQuery1.Close;
    FDQuery1.SQL.Text := 'select count(P_ID) as NUM from PROJECTMEMBER PM where PM.P_ID = :ID';
    FDQuery1.ParamByName('ID').Value := DBLookupComboBox2.Field.Value;
    FDQuery1.Open;
    num := FDQuery1.FieldByName('NUM').AsString;
    FDQuery1.Refresh;
    try
      FDQuery1.Close;
      FDQuery1.SQL.Text := 'update PROJECT set P_MEMBERCOUNT = :NUM where P_ID = :PID';
      FDQuery1.Params[0].Value := num;
      FDQuery1.Params[1].Value := DBLookupComboBox2.KeyValue;
      FDQuery1.ExecSQL;
    except
      ShowMessage('업데이트 오류');
      raise;
    end;
    UDM.DataModule1.FDConnection1.Commit;
  except
    UDM.DataModule1.FDConnection1.Rollback;
  end;
  DataModule1.ProMa.Refresh;
end;

procedure TPromaForm.Button4Click(Sender: TObject);
begin
  UDM.DataModule1.FDConnection1.StartTransaction;
  try
    try
      FDQuery2.Close;
      FDQuery2.SQL.Text := 'select count(M_ID) MNUM from PROJECTMEMBER where P_ID = :ID';
      FDQuery2.ParamByName('ID').Value := DataModule1.ProMa.FieldByName('P_ID').AsString;
      FDQuery2.Open;
      i := FDQuery2.FieldByName('MNUM').AsInteger;
    except
      ShowMessage('카운팅 오류');
    end;
    try
      FDQuery2.Close;
      FDQuery2.SQL.Text := 'Update PROJECT set P_MEMBERCOUNT = :P_COUNT-1 where P_ID = :PID';
      FDQuery2.ParamByName('P_COUNT').Value := i;
      FDQuery2.ParamByName('PID').Value := DataModule1.ProMa.FieldByName('P_ID').AsString;
      FDQuery2.ExecSQL;
    except
      ShowMessage('삭제 오류');
    end;
    try
      FDQuery2.Close;
      FDQuery2.SQL.Text := 'Delete from PROJECTMEMBER where R_ID = :RID';
      FDQuery2.ParamByName('RID').AsString := DataModule1.ProMa.FieldByName('R_ID').AsString;
      FDQuery2.ExecSQL;
    except
      ShowMessage('삭제 오류 쓰리');
      raise;
    end;
    UDM.DataModule1.FDConnection1.Commit;
  except
    UDM.DataModule1.FDConnection1.Rollback;
  end;
  DataModule1.ProMa.Refresh;
end;

procedure TPromaForm.Button5Click(Sender: TObject);
begin
  DataModule1.ProMa.Cancel;
end;

procedure TPromaForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
