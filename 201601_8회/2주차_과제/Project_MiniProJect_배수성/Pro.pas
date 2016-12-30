unit Pro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TproForm = class(TForm)
    PageControl1: TPageControl;
    d: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    ProForm: TButton;
    Button2: TButton;
    Button3: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit2: TDBEdit;
    Label7: TLabel;
    Edit1: TEdit;
    DBNavigator1: TDBNavigator;
    Label9: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Button1: TButton;
    DBComboBox1: TDBComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ProFormClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  proForm: TproForm;

implementation

{$R *.dfm}

uses UDM;

procedure TproForm.Button1Click(Sender: TObject);
begin

   if  messagedlg('진정 삭제하시겠사옵니까?', mtConfirmation, [mbYes, mbNo],0) = mryes then
     dm.FDproTable.Delete;



end;

procedure TproForm.Button2Click(Sender: TObject);
begin
  dm.FdproTable.post;
end;

procedure TproForm.Button3Click(Sender: TObject);
begin
  dm.FDProTable.cancel;
end;

procedure TproForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 // TproForm := nil;
  Action := caFree;
end;

procedure TproForm.ProFormClick(Sender: TObject);
begin
 dm.FDproTable.Insert;
end;


end.
