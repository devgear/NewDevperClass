unit Project;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons;

type
  TProjectForm = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    DBGrid1: TDBGrid;
    SpeedButton1: TSpeedButton;
    ProjectQuery: TFDQuery;
    PQSource: TDataSource;
    Label12: TLabel;
    Label13: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    Label8: TLabel;
    ProjectQueryP_ID: TIntegerField;
    ProjectQueryP_NAME: TWideStringField;
    ProjectQueryP_STARTDATE: TSQLTimeStampField;
    ProjectQueryP_ENDDATE: TSQLTimeStampField;
    ProjectQueryP_MANAGER_ID: TIntegerField;
    ProjectQueryP_MANAGER_NAME: TWideStringField;
    ProjectQueryP_MEMBERCOUNT: TIntegerField;
    ProjectQueryP_STATUS: TIntegerField;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Edit1: TEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    MCQuery: TFDQuery;
    DBGrid2: TDBGrid;
    Button7: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);

    procedure Edit1Change(Sender: TObject);



  private

    { Private declarations }
  public
    { Public declarations }
    procedure AddMember(const AProId, AMemId: Integer);
    procedure UpdateMemberCount(const AProId: Integer);
  end;

var
  ProjectForm: TProjectForm;

implementation

{$R *.dfm}

uses DM, Member, MCount, Splash;

procedure TProjectForm.AddMember(const AProId, AMemId: Integer);
var
  Cnt: Integer;
begin
  wDM.FDConnection1.StartTransaction;
  try
    wDM.PMCount.Insert;
    wDM.PMCount.FieldByName('P_ID').AsInteger := AProId;
    wDM.PMCount.FieldByName('M_ID').AsInteger := AMemId;
    wDM.PMCount.Post;

    UpdateMemberCount(AProId);

    wDM.FDConnection1.Commit;
  except
    wDM.FDConnection1.Rollback;
  end;
end;


procedure TProjectForm.Button1Click(Sender: TObject);
begin
  wDM.Project.Insert;
end;

procedure TProjectForm.Button2Click(Sender: TObject);
begin
  wDM.Project.edit;
end;

procedure TProjectForm.Button3Click(Sender: TObject);
begin
try
  wDM.Project.Post;
Except
  on e:Exception do
    showmessage(e.Message)  ;
end;
end;

procedure TProjectForm.Button4Click(Sender: TObject);
begin
  if MessageDlg('정말 삭제하시겠습니까?', mtConfirmation,[MBYes, MBNo],0) = mrYes then
  try
    wDm.Project.Delete;
  except
    on e:Exception do
      showmessage(e.Message)
  end;
end;

procedure TProjectForm.Button5Click(Sender: TObject);
begin
  wDM.FDConnection1.StartTransaction;
  try
    wDM.PMCount.Delete;
//    tblProMem.Post;
    UpdateMemberCount(wDM.PMCount.FieldByName('P_ID').AsInteger);

    wDM.FDConnection1.Commit;
  except
    wDM.FDConnection1.Rollback;
  end;
end;

procedure TProjectForm.Button6Click(Sender: TObject);
var
  ProId, MemId: Integer;

begin
  MCountForm := TMCountForm.Create(nil);
  try
    MCountForm.ShowModal;
    ProId := wDm.PROJECT.FieldByName('P_ID').AsInteger;
    MemId := MCountForm.SelectMemId;
    if MemId <> -1 then
      AddMember(ProId, MemId);
  finally
    MCountForm.Free;
  end;

end;


procedure TProjectForm.UpdateMemberCount(const AProId: Integer);
var
  Cnt: Integer;
begin
  MCQuery.Close;
  MCQuery.ParamByName('P_ID').AsInteger := AProId;
  MCQuery.Open;
  cnt := MCQuery.Fields[0].AsInteger;

  wDM.PMCount.Edit;
  wDM.PMCount.FieldByName('P_MEMBERCOUNT').AsInteger := cnt;
  wDM.PMCount.Post;
end;

procedure TProjectForm.Edit1Change(Sender: TObject);
begin
  wDM.Project.IndexFieldNames := 'P_NAME';
  wDM.Project.FindNearest([edit1.Text]);
end;

procedure TProjectForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;


procedure TProjectForm.SpeedButton1Click(Sender: TObject);
begin
    DBGrid1.DataSource := PQSource;
    ProjectQuery.Refresh;
end;

procedure TProjectForm.SpeedButton2Click(Sender: TObject);
begin
  if not wDM.Project.Eof then
    wDm.Project.Next;
end;

procedure TProjectForm.SpeedButton3Click(Sender: TObject);
begin
  if not wDM.Project.Bof then
    wDM.Project.Prior;
end;

procedure TProjectForm.SpeedButton4Click(Sender: TObject);
begin
  wDM.Project.Last;
end;

procedure TProjectForm.SpeedButton5Click(Sender: TObject);
begin
  wDM.Project.First;
end;

end.
