unit Vcl_Sights_Add;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DM_Vcl, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, data.db;

type
  TSA_Form = class(TForm)
    Bevel1: TBevel;
    lb_SName: TLabel;
    lb_SAddress: TLabel;
    Btn_S_Add: TButton;
    Btn_S_Cancel: TButton;
    Edt_Sname: TDBEdit;
    Edt_Saddress: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Btn_S_AddClick(Sender: TObject);
    procedure Btn_S_CancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SA_Form: TSA_Form;

implementation

{$R *.dfm}

uses Vcl_Main, Vcl_Sights;

procedure TSA_Form.Btn_S_AddClick(Sender: TObject);
begin
  if Edt_SName.text = '' then
  begin
    raise Exception.Create('관광지 명을 꼭 입력해주세요');
  end
  else if Edt_SAddress.text = '' then
  begin
    raise Exception.Create('주소를 꼭 입력해주세요');
  end
  else
  begin
    if check = 1 then
    begin
      try
        if dm.Sights_Set.UpdateStatus = TUpdateStatus.usInserted then
          dm.Sights_Set.FieldByName('S_no').AsInteger := 0;
        DM.Sights_Set.Post;
        DM.Sights_Set.ApplyUpdates(-1);
        showmessage('등록완료');
        SA_Form.Close;
      except
        showmessage('입력 오류')
      end;
    end
    else
    begin
      try
        DM.Sights_Set.Post;
        DM.Sights_Set.ApplyUpdates(-1);
        showmessage('수정이 완료되었습니다.');
        SA_Form.Close;
      except
        showmessage('수정오류');
      end;
    end;
  end;
  dm.Sights_Set.active := false;
  dm.Sights_Set.active := true;
end;

procedure TSA_Form.Btn_S_CancelClick(Sender: TObject);
begin
  SA_Form.Close;
end;


procedure TSA_Form.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TSA_Form.FormCreate(Sender: TObject);
begin
  if check = 1 then
  begin
    Btn_S_Add.Caption := '등록';
  end;
end;

end.
