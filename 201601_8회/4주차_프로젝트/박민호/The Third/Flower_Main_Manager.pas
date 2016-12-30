unit Flower_Main_Manager;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls,
  Data.DBXDataSnap, IPPeerClient, Data.DBXCommon, Datasnap.DBClient,
  Datasnap.DSConnect, Data.DB, Data.SqlExpr;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    GridPanel1: TGridPanel;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels[0].Text :=
  FormatDateTime('yyyy-mm-dd dddd AMPM hh:mm:ss', now);
end;

end.
