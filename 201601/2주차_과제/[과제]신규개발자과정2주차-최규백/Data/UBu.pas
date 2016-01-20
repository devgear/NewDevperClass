unit UBu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls;

type
  TBuForm = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    TabSheet2: TTabSheet;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    Button4: TButton;
    Button3: TButton;
    Label6: TLabel;
    DBNavigator1: TDBNavigator;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Edit1: TEdit;
    DBGrid2: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BuForm: TBuForm;

implementation

{$R *.dfm}

uses UDB;

procedure TBuForm.Button1Click(Sender: TObject);
begin
  dm.Bu.Insert;
end;

procedure TBuForm.Button2Click(Sender: TObject);
begin
  try
  dm.Bu.Post;
   except
      on e:exception do
        showmessage(e.message);
   end;
end;

procedure TBuForm.Button3Click(Sender: TObject);
begin
  dm.Bu.Cancel;
end;

procedure TBuForm.Button4Click(Sender: TObject);
begin
if messageDlg('정말 삭제 하시겠습니까?', mtconfirmation, [mbYes, mbNo], 0) = mryes then
   try
     dm.Bu.Delete;
   except  //에러가 났을때만
     on e :Exception do
      showmessage(e.Message);
   end;
end;

procedure TBuForm.Edit1Change(Sender: TObject);
begin
  dm.Bu.IndexFieldNames := 'D_DEPT';
 Dm.Bu.FindNearest([Edit1.Text]);
end;

procedure TBuForm.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_return then
      if not dm.Bu.FindKey([edit1.Text]) then
          showmessage('부서없음');
        // if not dm.insa.locate('name',edit1.text,[])then
        //[] 옵션에 들어갈 수 있는 값 locaseInsensitive, lopartialkey
end;

procedure TBuForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
BuForm := nil;
Action:= cafree;
end;

end.
