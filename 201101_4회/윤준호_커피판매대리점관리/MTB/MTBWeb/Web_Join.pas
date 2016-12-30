unit Web_Join;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCompLabel,
  jpeg, Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWExtCtrls, IWGrids, IWDBGrids, IWCompEdit, IWDBStdCtrls, IWCompButton;

type
  TIWJOIN = class(TIWAppForm)
    IWImage1: TIWImage;
    IWLabel1: TIWLabel;
    IWLabel2: TIWLabel;
    IWLabel3: TIWLabel;
    IWLabel4: TIWLabel;
    IWLabel5: TIWLabel;
    IWLabel6: TIWLabel;
    IWLabel7: TIWLabel;
    IWPID: TIWDBEdit;
    IWPPW: TIWDBEdit;
    IWPNAME: TIWDBEdit;
    IWSID: TIWDBEdit;
    IWPADDR: TIWDBEdit;
    IWPPHONE: TIWDBEdit;
    IWPJOIN: TIWDBEdit;
    IWInsert: TIWButton;
    IWCancel: TIWButton;
    procedure IWInsertClick(Sender: TObject);
    procedure IWCancelClick(Sender: TObject);
  public
  end;

implementation

uses ServerController, UserSessionUnit, Web_Main;

{$R *.dfm}

//취소
procedure TIWJOIN.IWCancelClick(Sender: TObject);
begin
  TIWMAIN.Create(WebApplication).Show;
end;

//회원 등록
procedure TIWJOIN.IWInsertClick(Sender: TObject);
begin
  if IWPID.Text = ''  then
  begin
    WebApplication.ShowMessage('ID를 입력하세요.');
    IWPID.SetFocus;
    exit;
  end;
  if IWPPW.Text = ''  then
  begin
    WebApplication.ShowMessage('Password를 입력하세요.');
    IWPPW.SetFocus;
    exit;
  end;
  if IWPNAME.Text = ''  then
  begin
    WebApplication.ShowMessage('이름을 입력하세요.');
    IWPNAME.SetFocus;
    exit;
  end;
  if IWSID.Text = ''  then
  begin
    WebApplication.ShowMessage('지점명을 입력하세요.');
    IWSID.SetFocus;
    exit;
  end;
  if IWPADDR.Text = ''  then
  begin
    WebApplication.ShowMessage('주소를 입력하세요.');
    IWPADDR.SetFocus;
    exit;
  end;
  if IWPPHONE.Text = ''  then
  begin
    WebApplication.ShowMessage('전화번호를 입력하세요.');
    IWPPHONE.SetFocus;
    exit;
  end;
  try
//    IWServerController.User.ApplyUpdates(-1);
    WebApplication.ShowMessage('등록 완료');;
  except
    WebApplication.ShowMessage('등록 실패');
//    IWServerController.User.CancelUpdates;
  end;
end;

end.
