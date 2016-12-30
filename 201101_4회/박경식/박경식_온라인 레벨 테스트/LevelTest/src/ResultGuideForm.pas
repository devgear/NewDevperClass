unit ResultGuideForm;

interface

uses
  LTClasses,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, TeEngine, TeeProcs, Chart;

type
  TfrResultGuide = class(TLTForm)
    Label1: TLabel;
    Button1: TButton;
    StringGrid1: TStringGrid;
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Panel2: TPanel;
    Chart1: TChart;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frResultGuide: TfrResultGuide;

implementation

{$R *.dfm}

procedure TfrResultGuide.Button1Click(Sender: TObject);
begin
  FormList.GoMain;
end;

procedure TfrResultGuide.FormCreate(Sender: TObject);
begin
  StringGrid1.Cells[0,0] := '오답표';
  StringGrid1.Cells[1,0] := '정답';
  StringGrid1.Cells[2,0] := '제출';
  StringGrid1.Cells[3,0] := '정답여부';
end;

end.
