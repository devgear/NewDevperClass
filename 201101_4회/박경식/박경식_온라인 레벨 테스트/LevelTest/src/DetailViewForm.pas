unit DetailViewForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, TeEngine, TeeProcs, Chart, ushldlg, ExtCtrls, Grids,
  BaseGrid, AdvGrid;

type
  TfrDetail = class(TForm)
    AdvStringGrid1: TAdvStringGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Label1: TLabel;
    btPrint: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    AdvStringGrid2: TAdvStringGrid;
    Label21: TLabel;
    Label22: TLabel;
    procedure btDetailCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btPrintClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frDetail: TfrDetail;

implementation

{$R *.dfm}

procedure TfrDetail.btDetailCloseClick(Sender: TObject);
begin
  frDetail.Close;
end;

procedure TfrDetail.btPrintClick(Sender: TObject);
begin
  ShowMessage('인쇄미리보기 화면 링크');
end;

procedure TfrDetail.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrDetail.FormCreate(Sender: TObject);
var
  I: Integer;
begin
  for I := 1 to 7 do
    AdvStringGrid1.Cells[0, I] := IntToStr(I);

  AdvStringGrid1.Cells[1, 1] := 'Listening';
  AdvStringGrid1.Cells[1, 2] := 'Listening';
  AdvStringGrid1.Cells[1, 3] := 'Speaking';
  AdvStringGrid1.Cells[1, 4] := 'Reading';
  AdvStringGrid1.Cells[1, 5] := 'Reading';
  AdvStringGrid1.Cells[1, 6] := 'Reading';
  AdvStringGrid1.Cells[1, 7] := 'Writing';

  AdvStringGrid1.Cells[2, 1] := 'A';
  AdvStringGrid1.Cells[2, 2] := 'C';
  AdvStringGrid1.Cells[2, 3] := '-';
  AdvStringGrid1.Cells[2, 4] := 'C';
  AdvStringGrid1.Cells[2, 5] := 'D';
  AdvStringGrid1.Cells[2, 6] := 'B';
  AdvStringGrid1.Cells[2, 7] := 'Write...';

  AdvStringGrid1.Cells[3, 1] := 'A';
  AdvStringGrid1.Cells[3, 2] := 'C';
  AdvStringGrid1.Cells[3, 3] := '녹음파일';
  AdvStringGrid1.Cells[3, 4] := 'C';
  AdvStringGrid1.Cells[3, 5] := 'D';
  AdvStringGrid1.Cells[3, 6] := 'B';
  AdvStringGrid1.Cells[3, 7] := 'Write...';

  AdvStringGrid1.Cells[4, 1] := 'O';
  AdvStringGrid1.Cells[4, 2] := 'O';
  AdvStringGrid1.Cells[4, 3] := 'O';
  AdvStringGrid1.Cells[4, 4] := 'O';
  AdvStringGrid1.Cells[4, 5] := 'O';
  AdvStringGrid1.Cells[4, 6] := 'O';
  AdvStringGrid1.Cells[4, 7] := 'O';


  AdvStringGrid2.Cells[0, 1] := 'Listening';
  AdvStringGrid2.Cells[0, 2] := 'Speaking';
  AdvStringGrid2.Cells[0, 3] := 'Reading';
  AdvStringGrid2.Cells[0, 4] := 'Writing';

  AdvStringGrid2.Cells[1, 1] := '25';
  AdvStringGrid2.Cells[1, 2] := '25';
  AdvStringGrid2.Cells[1, 3] := '25';
  AdvStringGrid2.Cells[1, 4] := '25';

  AdvStringGrid2.Cells[2, 1] := '25';
  AdvStringGrid2.Cells[2, 2] := '25';
  AdvStringGrid2.Cells[2, 3] := '25';
  AdvStringGrid2.Cells[2, 4] := '25';

  AdvStringGrid2.Cells[3, 1] := '100%';
  AdvStringGrid2.Cells[3, 2] := '100%';
  AdvStringGrid2.Cells[3, 3] := '100%';
  AdvStringGrid2.Cells[3, 4] := '100%';



end;

end.
