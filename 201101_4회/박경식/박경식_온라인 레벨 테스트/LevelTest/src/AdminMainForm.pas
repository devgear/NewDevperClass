unit AdminMainForm;

interface

uses
  NewMemberForm,
  DAOMember,
  ResultForm,
  EstimateForm,
  LTClasses,
  Generics.collections,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, BaseGrid, AdvGrid;

type
  TfrAdminMain = class(TLTForm)
    btEstimateView: TButton;
    btResultView: TButton;
    Label3: TLabel;
    AdvStringGrid1: TAdvStringGrid;
    btSearch: TButton;
    edSearch: TEdit;
    btNew: TButton;
    btModify: TButton;
    btDelete: TButton;
    procedure btEstimateViewClick(Sender: TObject);
    procedure btResultViewClick(Sender: TObject);
    procedure PrintMemberlist(Userlist : TObjectlist<TUser>);
    procedure btSearchClick(Sender: TObject);
    procedure btNewClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    EstimateForm : TFrEstimate;
    ResultForm : TFrResult;
    Userlist : TObjectlist<TUser>;
    FDAOMember : TDAOmember;

    { Private declarations }
  public
    { Public declarations }
    destructor Destroy; override;
  end;


var
  frAdminMain: TfrAdminMain;

implementation

{$R *.dfm}

procedure TfrAdminMain.btEstimateViewClick(Sender: TObject);
begin
  frEstimate := TfrEstimate.Create(self);
  frEstimate.Parent := self;
  frEstimate.Show;
end;

procedure TfrAdminMain.btNewClick(Sender: TObject);
begin
  frNewMember := TfrNewMember.Create(self);
  frNewMember.Show;
end;

procedure TfrAdminMain.btResultViewClick(Sender: TObject);
begin
  frResult := TfrResult.Create(self);
  frResult.Parent := self;
  frResult.Show;
end;

procedure TfrAdminMain.btSearchClick(Sender: TObject);
var
  SearchUser : TObjectlist<TUser>;
begin
  PrintMemberlist(Fdaomember.SearchMember(edSearch.text));
end;

destructor TfrAdminMain.Destroy;
begin
  userlist.free;
  inherited;
end;

procedure TfrAdminMain.FormCreate(Sender: TObject);
begin
  FDAOMember := TDAOMember.Create;
  PrintMemberlist(Fdaomember.GetAllMember);
end;

procedure TfrAdminMain.FormDestroy(Sender: TObject);
begin
  FDAOMember.Free;
end;

procedure TfrAdminMain.PrintMemberlist(Userlist : TObjectlist<TUser>);
var
  i : integer;
begin
  for I := 0 to userlist.Count - 1 do
  begin
    AdvStringGrid1.Cells[0,i+1] := inttostr(i+1);
    AdvStringGrid1.Cells[1,i+1] := userlist.Items[i].UserId;
    AdvStringGrid1.Cells[2,i+1] := userlist.Items[i].UserPassword;
    AdvStringGrid1.Cells[3,i+1] := userlist.Items[i].Name;
//    AdvStringGrid1.Cells[i,4] := userlist.Items[i].Academy;
    AdvStringGrid1.Cells[4,i+1] := userlist.Items[i].TeacherId;
  end;

  AdvStringGrid1.Refresh;
  AdvStringGrid1.AutoSize := true;
//  userlist.Clear;
  userlist.Free;
end;

end.
