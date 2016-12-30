unit repair_list;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, VclTee.TeeGDIPlus,
  VclTee.TeEngine, Vcl.ExtCtrls, VclTee.TeeProcs, VclTee.Chart, VclTee.DBChart,
  VclTee.Series;

type
  TRepairlist = class(TForm)
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    Button1: TButton;
    Button2: TButton;
    DBComboBox1: TDBComboBox;
    DBGrid1: TDBGrid;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Repairlist: TRepairlist;

implementation

{$R *.dfm}

uses bike_dm;

procedure TRepairlist.FormCreate(Sender: TObject);
begin
  DBGrid1.columns[0].title.caption := '이름';
  DBGrid1.columns[1].title.caption := '전화번호';
  DBGrid1.columns[2].title.caption := '예약날짜';
  DBGrid1.columns[3].title.caption := '부품';
  DBGrid1.columns[4].title.caption := '지점명';
  DBGrid1.columns[5].title.caption := '별점';
  DBGrid1.columns[6].title.caption := '수리공키';

  DBGrid1.columns[0].width := 60;
  DBGrid1.columns[1].width := 80;
  DBGrid1.columns[2].width := 80;
  DBGrid1.columns[3].width := 80;
  DBGrid1.columns[4].width := 80;
  DBGrid1.columns[5].width := 80;
  DBGrid1.columns[6].width := 50;
end;

end.
