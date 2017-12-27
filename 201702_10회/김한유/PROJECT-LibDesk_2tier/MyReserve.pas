unit MyReserve;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB;

type
  TMyReserveForm = class(TForm)
    MyPanel: TPanel;
    MyDataSource_User: TDataSource;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    MyDataSource_Lib: TDataSource;
    MyDataSource_Rent: TDataSource;
    btnClose: TButton;
    Label6: TLabel;
    btnBack: TButton;
    EditID: TEdit;
    MyDataSource_LibAddress: TDataSource;
    PanelBG: TPanel;
    procedure btnCloseClick(Sender: TObject);
    procedure btnBackClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MyReserveForm: TMyReserveForm;

implementation

{$R *.dfm}

uses DataAccessModule, Main, Login;

procedure TMyReserveForm.btnBackClick(Sender: TObject);
begin
  MyReserveForm.Close;
end;

procedure TMyReserveForm.btnCloseClick(Sender: TObject);
begin
  MyReserveForm.Close;
end;

procedure TMyReserveForm.FormCreate(Sender: TObject);
var
  RMyId: string;
begin
  RMyId := MainForm.MyID.Caption;

  if RMyId = '' then
  begin
    ShowMessage('먼저 로그인 해주세요');

    if not Assigned(LoginForm) then
      LoginForm := TLoginForm.Create(Self);
    LoginForm.Parent := MainForm.MainPanel;
    LoginForm.BorderStyle := bsNone;
    LoginForm.Align := alClient;
    LoginForm.Show;
  end
  else
  begin
    EditID.Text := RMyId;
  end;

end;

end.
