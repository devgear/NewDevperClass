unit user_managerment;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls;

type
  Tuser = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  user: Tuser;

implementation

{$R *.dfm}

uses bike_dm;

procedure Tuser.FormClose(Sender: TObject; var Action: TCloseAction);
begin
user.Free;
end;

procedure Tuser.FormCreate(Sender: TObject);
begin
  DBGrid1.columns[0].title.caption := '이름';
  DBGrid1.columns[1].title.caption := '전화번호';
  DBGrid1.columns[2].title.caption := '신청횟수';


  DBGrid1.columns[0].width := 60;
  DBGrid1.columns[1].width := 80;
  DBGrid1.columns[2].width := 80;

end;

end.
