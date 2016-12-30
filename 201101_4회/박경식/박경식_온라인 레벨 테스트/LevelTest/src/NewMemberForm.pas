unit NewMemberForm;

interface

uses
  DAOMember,
  Ltclasses,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrNewMember = class(TForm)
    edID: TEdit;
    edPassword: TEdit;
    edName: TEdit;
    edAuth: TEdit;
    edMblevel: TEdit;
    edRelation: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    btApply: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btApplyClick(Sender: TObject);
  private
    { Private declarations }
    FDaomember : TDaomember;
    User : TUser;
  public
    { Public declarations }
  end;

var
  frNewMember: TfrNewMember;

implementation

{$R *.dfm}

procedure TfrNewMember.btApplyClick(Sender: TObject);
begin
  user.UserId := edid.Text;
  user.UserPassword := edPassword.Text;
  user.Name := edName.Text;
//  user.auth := edAuth.Text;
  user.Level := strtoint(edMblevel.Text);
  user.relation := strtoint(edRelation.Text);

  FDaomember.insertmember(user);
end;

procedure TfrNewMember.FormCreate(Sender: TObject);
begin
  FDAOMember := TDAOMember.Create;
  User := TUser.Create;
end;

procedure TfrNewMember.FormDestroy(Sender: TObject);
begin
  Fdaomember.Free;
  user.Free;
end;

end.
