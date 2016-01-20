unit UPrjMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls,
  Vcl.PlatformDefaultStyleActnCtrls, System.Actions, Vcl.ActnList, Vcl.ActnMan,
  Vcl.ToolWin, Vcl.ActnCtrls, Vcl.Ribbon, Vcl.RibbonLunaStyleActnCtrls,
  Vcl.StdCtrls;

type
  TMainForm = class(TForm)
    Ribbon1: TRibbon;
    RibbonPage1: TRibbonPage;
    RibbonGroup1: TRibbonGroup;
    ActionManager1: TActionManager;
    Panel1: TPanel;
    RibbonGroup2: TRibbonGroup;
    RibbonGroup3: TRibbonGroup;
    PrjSearch: TAction;
    MemSearch: TAction;
    DeptSearch: TAction;
    PrjMemSearch: TAction;
    RibbonGroup5: TRibbonGroup;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure PrjSearchExecute(Sender: TObject);
    procedure MemSearchExecute(Sender: TObject);
    procedure DeptSearchExecute(Sender: TObject);
    procedure PrjMemSearchExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

uses UPrjSearch,  UMemSearch, UDeptSearch, UPrjMemSerch, Usplash;


procedure TMainForm.DeptSearchExecute(Sender: TObject);
begin
  if not Assigned(DeptSearchForm) then
	DeptSearchForm := TDeptSearchForm.Create(Application);
  DeptSearchForm.Parent := panel1;
  DeptSearchForm.BorderStyle := bsnone;
  DeptSearchForm.Align := alclient;
  DeptSearchForm.show;
end; //부서테이블


procedure TMainForm.MemSearchExecute(Sender: TObject);
begin
  if not Assigned(MemSearchForm) then
	MemSearchForm := TMemSearchForm.Create(Application);
  MemSearchForm.Parent := panel1;
  MemSearchForm.BorderStyle := bsnone;
  MemSearchForm.Align := alclient;
  MemSearchForm.show;
end;  //멤버테이블



procedure TMainForm.PrjMemSearchExecute(Sender: TObject);
begin
  if not Assigned(PrjMSrForm) then
	PrjMSrForm := TPrjMSrForm.Create(Application);
  PrjMSrForm.Parent := panel1;
  PrjMSrForm.BorderStyle := bsnone;
  PrjMSrForm.Align := alclient;
  PrjMSrForm.show;
end; //프로젝트멤버테이블

procedure TMainForm.PrjSearchExecute(Sender: TObject);
begin
  if not Assigned(prjSearchForm) then
	prjSearchForm := TprjSearchForm.Create(Application);
  prjSearchForm.Parent := panel1;
  prjSearchForm.BorderStyle := bsnone;
  prjSearchForm.Align := alclient;
  prjSearchForm.show;
end;  //프로젝트테이블

end.
