unit Member;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.Buttons, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask;

type
  TMemberForm = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    DBRadioGroup1: TDBRadioGroup;
    DBGrid1: TDBGrid;
    MemberQuery: TFDQuery;
    MQSource: TDataSource;
    SpeedButton1: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton2: TSpeedButton;
    DBEdit2: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);

  private

    { Private declarations }

  public
    { Public declarations }

  end;

var
  MemberForm: TMemberForm;

implementation

{$R *.dfm}

uses DM, Dept;

procedure TMemberForm.Button1Click(Sender: TObject);
begin
  wDM.Member.Insert;
end;

procedure TMemberForm.Button2Click(Sender: TObject);
begin
  wDM.Member.edit;
end;

procedure TMemberForm.Button3Click(Sender: TObject);
begin
try
  wDM.Member.Post;
Except
  on e:Exception do
    showmessage(e.Message)  ;
end;
end;

procedure TMemberForm.Button4Click(Sender: TObject);
begin
  if MessageDlg('정말 삭제하시겠습니까?', mtConfirmation,[MBYes, MBNo],0) = mrYes then
  try
    wDm.Member.Delete;
  except
    on e:Exception do
      showmessage(e.Message)
  end;
end;

procedure TMemberForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TMemberForm.SpeedButton1Click(Sender: TObject);
begin
    DBGrid1.DataSource := MQSource;
    MemberQuery.Refresh;
end;

procedure TMemberForm.SpeedButton2Click(Sender: TObject);
begin
  if not wDM.Member.Eof then
    wDM.Member.Next;
end;

procedure TMemberForm.SpeedButton3Click(Sender: TObject);
begin
  if not wDm.Member.Bof then
    wDm.Member.Prior;
end;

procedure TMemberForm.SpeedButton4Click(Sender: TObject);
begin
  wDM.Member.Last;
end;

procedure TMemberForm.SpeedButton5Click(Sender: TObject);
begin
  wDM.Member.First;
end;

end.
