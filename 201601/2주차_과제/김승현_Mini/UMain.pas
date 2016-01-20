unit UMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList,
  Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls, Vcl.Ribbon, System.Actions,
  Vcl.ActnList, Vcl.RibbonLunaStyleActnCtrls, UChart_Frame, Vcl.ExtCtrls;

type
  TMainForm = class(TForm)
    Ribbon1: TRibbon;
    RibbonPage1: TRibbonPage;
    RibbonGroup1: TRibbonGroup;
    ImageList1: TImageList;
    RibbonGroup2: TRibbonGroup;
    RibbonGroup3: TRibbonGroup;
    RibbonGroup4: TRibbonGroup;
    ActionManager1: TActionManager;
    Project: TAction;
    Member: TAction;
    Dept: TAction;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    Action4: TAction;
    Action5: TAction;
    Action6: TAction;
    Action7: TAction;
    Panel1: TPanel;
    TChart_Frame1: TChart_Frame;
    procedure MemberExecute(Sender: TObject);
    procedure DeptExecute(Sender: TObject);
    procedure ProjectExecute(Sender: TObject);
    procedure Action7Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

uses UDept, UMember, UPorject, UProma;

procedure TMainForm.Action7Execute(Sender: TObject);
begin
  PromaForm := TPromaForm.Create(Application);
  PromaForm.Show;
end;

procedure TMainForm.DeptExecute(Sender: TObject);
begin
  DeptForm := TDeptForm.Create(Application);
  DeptForm.Show;
end;

procedure TMainForm.MemberExecute(Sender: TObject);
begin
  MemForm := TMemForm.Create(Application);
  MemForm.Show;
end;

procedure TMainForm.ProjectExecute(Sender: TObject);
begin
  ProForm := TProForm.Create(Application);
  ProForm.Show;
end;

end.
