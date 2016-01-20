unit UPro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls;

type
  TProForm = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label6: TLabel;
    DBNavigator1: TDBNavigator;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    Edit1: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProForm: TProForm;

implementation

{$R *.dfm}

uses UDB;

procedure TProForm.Button1Click(Sender: TObject);
begin
  dm.Pro.Insert;
end;

procedure TProForm.Button2Click(Sender: TObject);
begin
  try
  dm.Pro.Post;
   except
      on e:exception do
        showmessage(e.message);
   end;

end;

procedure TProForm.Button3Click(Sender: TObject);
begin
   dm.Pro.Cancel;
end;

procedure TProForm.Button4Click(Sender: TObject);
begin

   if messageDlg('정말 삭제 하시겠습니까?', mtconfirmation, [mbYes, mbNo], 0) = mryes then
   try
     dm.Pro.Delete;
   except  //에러가 났을때만
     on e :Exception do
      showmessage(e.Message);
   end;
end;

procedure TProForm.Edit1Change(Sender: TObject);
begin
   dm.Pro.IndexFieldNames := 'P_NAME';
 Dm.Pro.FindNearest([Edit1.Text]);
end;

procedure TProForm.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key = vk_return then
      if not dm.pro.FindKey([edit1.Text]) then
          showmessage('프로젝트 없음');
        // if not dm.insa.locate('name',edit1.text,[])then
        //[] 옵션에 들어갈 수 있는 값 locaseInsensitive, lopartialkey
end;

procedure TProForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ProForm := nil;
  Action:= cafree;
end;

procedure TProForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_return then
      selectNext(activecontrol, true, true);
end;

end.
