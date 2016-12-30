unit UMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdActns, System.Actions,
  Vcl.ActnList, Vcl.Menus, Vcl.Ribbon, Vcl.ComCtrls, System.ImageList,
  Vcl.ImgList, Vcl.RibbonLunaStyleActnCtrls, Vcl.ActnMan, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Mask,
  Vcl.PlatformDefaultStyleActnCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet,System.UITypes;

type
  TMainform = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSeet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    Label11: TLabel;
    DBEdit5: TDBEdit;
    Button3: TButton;
    Button4: TButton;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Button5: TButton;
    Button6: TButton;
    Label12: TLabel;
    Button7: TButton;
    CountQuery: TFDQuery;
    FDUpdateSQL1: TFDUpdateSQL;
    Button8: TButton;
    Button9: TButton;
    Edit1: TEdit;
    DBEdit8: TDBEdit;
    DBGrid5: TDBGrid;
    Button10: TButton;
    Button11: TButton;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure AddMember(const Aproid, Amemid : Integer);
    procedure UpdateMemberCount(const Aproid : Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Mainform: TMainform;

implementation
uses
 UDB, UDept, UMember, UProject;

{$R *.dfm}

procedure TMainform.Button1Click(Sender: TObject);
begin
  Datamodule1.FdMember.Append;
end;

procedure TMainform.Button3Click(Sender: TObject);
begin
  Datamodule1.FdProject.Append;
end;

procedure TMainform.Button5Click(Sender: TObject);
begin
  Datamodule1.Fddept.Append;
end;



procedure TMainform.Button2Click(Sender: TObject);
begin
  if MessageDlg('沥富 昏力?', mtConfirmation, [mbYes, mbNo], 0) =mrYes then
  try
    Datamodule1.FdMember.Delete;
  except
   on e : Exception do
   ShowMessage('e.Message');
  end;
end;


procedure TMainform.Button4Click(Sender: TObject);
begin
  if MessageDlg('沥富 昏力?', mtConfirmation, [mbYes, mbNo], 0) =mrYes then
  try
    Datamodule1.FdProject.Delete;
  except
   on e : Exception do
   ShowMessage('e.Message');
  end;
end;

procedure TMainform.Button6Click(Sender: TObject);
begin
  if MessageDlg('沥富 昏力?', mtConfirmation, [mbYes, mbNo], 0) =mrYes then
  try
    Datamodule1.Fddept.Delete;
  except
   on e : Exception do
   ShowMessage('e.Message');
  end;

end;

procedure TMainform.Button7Click(Sender: TObject);
begin
  try
    Datamodule1.Fddept.Post;
  except
    on e:exception do
    ShowMessage(e.Message);
  end;
end;

procedure TMainform.Button8Click(Sender: TObject);
begin
  try
    Datamodule1.FdMember.Post;
  except
    on e:exception do
    ShowMessage(e.Message);
  end;

end;

procedure TMainform.Button9Click(Sender: TObject);
begin
  try
    Datamodule1.FdProject.Post;
  except
    on e:exception do
    ShowMessage(e.Message);
  end;
end;


procedure TMainform.Button10Click(Sender: TObject);
var
  Proid, Memid : Integer;
begin
  MemberForm := TMemberForm.Create(Nil);
  try
    MemberForm.ShowModal;
    Proid := DataModule1.FdProject.FieldByName('P_ID').AsInteger;
    Memid := MemberForm.SelectMID;
  if Memid <> -1 then
    AddMember (Proid, Memid);
  finally
    MemberForm.Free;
  end;
end;

procedure TMainform.Button11Click(Sender: TObject);
begin
  DataModule1.FDConnection1.StartTransaction;
  try
    datamodule1.FdPromem.Delete;
    UpdateMemberCount(datamodule1.FdProject.FieldByName('P_ID').AsInteger);
    Datamodule1.FDConnection1.Commit;
  except
    DataModule1.FDConnection1.Rollback;
  end;
end;


procedure TMainform.Edit1Change(Sender: TObject);
begin
  Datamodule1.Fddept.IndexFieldNames := 'D_ID';
  Datamodule1.Fddept.FindNearest([Edit1.Text]);
end;

procedure TMainform.Edit2Change(Sender: TObject);
begin
  Datamodule1.FdProject.IndexFieldNames := 'P_ID';
  Datamodule1.FdProject.FindNearest([Edit2.Text]);
end;

procedure TMainform.Edit3Change(Sender: TObject);
begin
  Datamodule1.FdMember.IndexFieldNames := 'M_ID';
  Datamodule1.FdMember.FindNearest([Edit3.Text]);
end;

procedure TMainform.AddMember(const Aproid, Amemid: Integer);
var
  Cnt: Integer;
begin
  DataModule1.FDConnection1.StartTransaction;
  try
    Datamodule1.FdPromem.Insert;
    Datamodule1.FdPromem.FieldByName('P_ID').AsInteger := Aproid;
    Datamodule1.FdPromem.FieldByName('M_ID').AsInteger := Amemid;
    Datamodule1.FdPromem.Post;

    UpdateMemberCount(Amemid);

    DataModule1.FDConnection1.Commit
  except
    DataModule1.FDConnection1.Rollback;
  end;
end;

procedure TMainForm.UpdateMemberCount(const Aproid: Integer);
var
  Cnt: Integer;
begin
  CountQuery.Close;
  CountQuery.ParamByName('P_ID').AsInteger := Aproid;
  CountQuery.Open;
  cnt := CountQuery.Fields[0].AsInteger;

  Datamodule1.FdProject.Edit;
  Datamodule1.FdProject.FieldByName('P_MEMBERCOUNT').AsInteger := cnt;
  Datamodule1.FdProject.Post;
end;

procedure TMainform.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
