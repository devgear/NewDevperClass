unit Dept;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDeptForm = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit1: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    SpeedButton1: TSpeedButton;
    DBGrid1: TDBGrid;
    DeptQuery: TFDQuery;
    DQSource: TDataSource;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    DBEdit2: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DeptForm: TDeptForm;

implementation

{$R *.dfm}

uses DM;

procedure TDeptForm.Button1Click(Sender: TObject);
begin
  wDM.Dept.Insert;
end;

procedure TDeptForm.Button2Click(Sender: TObject);
begin
  wDM.Dept.edit;
end;

procedure TDeptForm.Button4Click(Sender: TObject);
begin
    if MessageDlg('정말 삭제하시겠습니까?', mtConfirmation,[MBYes, MBNo],0) = mrYes then
  try
    wDm.Dept.Delete;
  except
    on e:Exception do
      showmessage(e.Message)
  end;
end;

procedure TDeptForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TDeptForm.SpeedButton2Click(Sender: TObject);
begin
  if not wDM.Dept.Eof then
    wDM.Dept.Next;
end;

procedure TDeptForm.SpeedButton3Click(Sender: TObject);
begin
  if not wDM.Dept.Bof then
    wDM.Dept.Prior;
end;

procedure TDeptForm.SpeedButton4Click(Sender: TObject);
begin
  wDM.Dept.Last;
end;

procedure TDeptForm.SpeedButton5Click(Sender: TObject);
begin
  wDM.Dept.First;
end;

end.
