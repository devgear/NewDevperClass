unit MyMessenger;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TMsgForm = class(TForm)
    MemPanel: TPanel;
    pnlGridHeader: TPanel;
    Label1: TLabel;
    edtSearch: TEdit;
    chkSearchName: TCheckBox;
    chkSearchPhone: TCheckBox;
    pnlHeader: TPanel;
    lblCaption: TLabel;
    btnClose: TButton;
    btnAdd: TButton;
    Talk_Source: TDataSource;
    MSGGrid: TDBGrid;
    Timer1: TTimer;
    procedure edtSearchKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnCloseClick(Sender: TObject);
    procedure deleteClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MsgForm: TMsgForm;

implementation

{$R *.dfm}

uses DataAccessModule, Main;

procedure TMsgForm.deleteClick(Sender: TObject);
var
  RentYn, Title, Msg: string;
begin
  Title := DataAccess.qrytalk.FieldByName('USER_ID').AsString;
  Msg := Format('[%s] 님의 메시지를 지우겠습니까?', [Title]);
  if MessageDlg(Msg, mtInformation, [mbYes, mbNo], 0) = mrNo then
    Exit;

  DataAccess.qrytalk.Delete;

end;

procedure TMsgForm.btnCloseClick(Sender: TObject);
begin
  MsgForm.Close;

end;

procedure TMsgForm.edtSearchKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState); // 검색
var
  Filter: string;
begin
  Filter := '';
  if edtSearch.Text <> '' then
  begin
    if chkSearchName.Checked then
      Filter := Format('USER_ID like ''%%%s%%''', [edtSearch.Text]);
    if chkSearchPhone.Checked then
    begin
      if Filter <> '' then
        Filter := Filter + ' or ';
      Filter := Filter + Format('MES_CONTENT like ''%%%s%%''', [edtSearch.Text]);
    end;
  end;

  DataAccess.qrytalk.Filter := Filter;
  DataAccess.qrytalk.Filtered := (Filter <> '');
end;

procedure TMsgForm.Timer1Timer(Sender: TObject);
begin

  if (DataAccess.qrytalk.RecordCount > 0) then
  begin
    MSGGrid.Refresh;
  end;

end;

end.
