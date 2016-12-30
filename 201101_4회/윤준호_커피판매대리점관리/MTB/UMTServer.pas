unit UMTServer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ActnList, PlatformDefaultStyleActnCtrls, ActnMan, ExtCtrls,
  ComCtrls, Grids, DBGrids, StdCtrls, ToolWin, ActnCtrls, ActnMenus;

type
  TServerForm = class(TForm)
    ActionMainMenuBar1: TActionMainMenuBar;
    Panel1: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    ShopEdit: TEdit;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Label2: TLabel;
    Label7: TLabel;
    DBGrid2: TDBGrid;
    ItemEdit: TEdit;
    StatusBar1: TStatusBar;
    ActionManager1: TActionManager;
    AC_Exit: TAction;
    AC_Shop: TAction;
    AC_Cost: TAction;
    AC_Message: TAction;
    ImageList1: TImageList;
    Bt_Refresh: TButton;
    Timer1: TTimer;
    procedure AC_ShopExecute(Sender: TObject);
    procedure Bt_RefreshClick(Sender: TObject);
    procedure AC_ExitExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ShopEditChange(Sender: TObject);
    procedure ItemEditChange(Sender: TObject);
    procedure AC_MessageExecute(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ServerForm: TServerForm;

implementation

uses UShop_Form, USDM, MailForm;

{$R *.dfm}

procedure TServerForm.AC_ExitExecute(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TServerForm.AC_MessageExecute(Sender: TObject);
begin
  Mail_Form := TMail_Form.Create(Application);
  Mail_Form.Show;
end;

procedure TServerForm.AC_ShopExecute(Sender: TObject);
begin
  ShopForm := TShopForm.Create(Application);
  ShopForm.Show;
end;

procedure TServerForm.Bt_RefreshClick(Sender: TObject);
begin
  SDM.Item.Refresh;
  SDM.Shop.Refresh;
end;

procedure TServerForm.ItemEditChange(Sender: TObject);
begin
  SDM.Item.IndexFieldNames := 'I_NAME';
  SDM.Item.FindNearest([ITemEdit.Text]);
end;

procedure TServerForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TServerForm.ShopEditChange(Sender: TObject);
begin
  SDM.Shop.IndexFieldNames := 'C_NAME';
  SDM.Shop.FindNearest([ShopEdit.Text]);
end;

procedure TServerForm.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels[1].Text := FormatDateTime('yyyy-mm-dd dddd hh:mm:ss am/pm', now);
end;

end.

