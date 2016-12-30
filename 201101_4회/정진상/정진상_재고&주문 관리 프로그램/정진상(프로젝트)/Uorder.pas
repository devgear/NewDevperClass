unit Uorder;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, StdCtrls, DBCtrls, ComCtrls, Buttons,
  FMTBcd, DB, SqlExpr, DBClient, SimpleDS;

type
  Torderform = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Panel2: TPanel;
    DBGrid2: TDBGrid;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    DBGrid3: TDBGrid;
    Button1: TButton;
    TabSheet3: TTabSheet;
    DBGrid4: TDBGrid;
    Panel4: TPanel;
    DBGrid5: TDBGrid;
    Panel5: TPanel;
    Panel6: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  orderform: Torderform;

implementation

uses Udm;

{$R *.dfm}

procedure Torderform.Button1Click(Sender: TObject);
begin
  close;
end;

procedure Torderform.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Torderform.SpeedButton1Click(Sender: TObject);
begin
  if not dm.brchnamequery.Bof then
     dm.brchnamequery.Prior;
end;

procedure Torderform.SpeedButton2Click(Sender: TObject);
begin
  if not dm.brchnamequery.Eof then
     dm.brchnamequery.Next;
end;

procedure Torderform.SpeedButton3Click(Sender: TObject);
begin
  dm.brchnamequery.First;
end;

procedure Torderform.SpeedButton4Click(Sender: TObject);
begin
  dm.brchnamequery.Last;
end;

procedure Torderform.SpeedButton5Click(Sender: TObject);
begin
dm.pronamequery.First;
end;

procedure Torderform.SpeedButton6Click(Sender: TObject);
begin
  if not dm.pronamequery.Bof then
     dm.pronamequery.Prior;
end;

procedure Torderform.SpeedButton7Click(Sender: TObject);
begin
  if not dm.pronamequery.Eof then
     dm.pronamequery.Next;
end;

procedure Torderform.SpeedButton8Click(Sender: TObject);
begin
dm.pronamequery.Last;
end;

end.
