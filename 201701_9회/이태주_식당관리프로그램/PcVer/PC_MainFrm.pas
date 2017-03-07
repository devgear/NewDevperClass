unit PC_MainFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ActnMan,
  Vcl.ActnCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, System.ImageList, Vcl.ImgList;

type
  TFrmMain = class(TForm)
    pnlMainheader: TPanel;
    btnExit: TButton;
    btnTable: TButton;
    btnAccountDiary: TButton;
    pnlMain: TPanel;
    procedure btnTableClick(Sender: TObject);
    procedure btnAccountDiaryClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.dfm}

uses PC_TableFrm, PC_AccountDiaryFrm ;

procedure TFrmMain.btnAccountDiaryClick(Sender: TObject);
begin
if not Assigned(FrmAccountDiary) then
    FrmAccountDiary := TFrmAccountDiary.Create(Self);
    FrmAccountDiary.Parent := pnlMain;
    FrmAccountDiary.BorderStyle :=bsNone;
    FrmAccountDiary.Align := alClient;
    FrmAccountDiary.Show;
end;

procedure TFrmMain.btnExitClick(Sender: TObject);
begin
  FrmMain.Close;
end;

procedure TFrmMain.btnTableClick(Sender: TObject);
begin
if not Assigned(frmHAll) then
    frmHAll := TfrmHAll.Create(Self);
    frmHAll.Parent := pnlMain;
    frmHAll.BorderStyle :=bsNone;
    frmHall.Align := alClient;
    frmHall.Show;
end;

end.
