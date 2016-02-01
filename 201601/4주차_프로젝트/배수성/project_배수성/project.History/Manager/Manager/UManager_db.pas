unit UManager_db;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Mask, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    Pagecontrol: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label9: TLabel;
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    DBNavigator1: TDBNavigator;
    TabSheet2: TTabSheet;
    Label3: TLabel;
    Label4: TLabel;
    DBNavigator2: TDBNavigator;
    DBGrid2: TDBGrid;
    DBEdit2: TDBEdit;
    Button1: TButton;
    TabSheet3: TTabSheet;
    Label2: TLabel;
    Label5: TLabel;
    DBGrid3: TDBGrid;
    DBNavigator3: TDBNavigator;
    DBEdit3: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
