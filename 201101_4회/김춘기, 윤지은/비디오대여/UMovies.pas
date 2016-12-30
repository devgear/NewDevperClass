unit UMovies;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, Mask, Grids, DBGrids, Buttons, ComCtrls,
  FMTBcd, DB, SqlExpr;

type
  Tmovies = class(TForm)
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    TabSheet5: TTabSheet;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    TabSheet7: TTabSheet;
    Label51: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Edit2: TEdit;
    Button17: TButton;
    GroupBox6: TGroupBox;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    Edit3: TEdit;
    Button19: TButton;
    Button20: TButton;
    Button18: TButton;
    TabSheet8: TTabSheet;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    GroupBox7: TGroupBox;
    Edit4: TEdit;
    Button21: TButton;
    Edit5: TEdit;
    Edit6: TEdit;
    Label30: TLabel;
    Label31: TLabel;
    DBNavigator3: TDBNavigator;
    DBNavigator6: TDBNavigator;
    Button22: TButton;
    DBNavigator7: TDBNavigator;
    Label14: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label23: TLabel;
    Label33: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit22: TDBEdit;
    DBGrid1: TDBGrid;
    DBGrid5: TDBGrid;
    DBGrid6: TDBGrid;
    Button1: TButton;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Edit1: TEdit;
    Edit7: TEdit;
    SQLQuery1: TSQLQuery;
    StringGrid1: TStringGrid;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    Button2: TButton;
    procedure Button4Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    // procedure DBEdit18Change(Sender: TObject);
    // procedure DBEdit19Change(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit7Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  movies: Tmovies;

implementation

uses Uddm;

{$R *.dfm}

procedure Tmovies.Button10Click(Sender: TObject);
begin
  close;
end;

procedure Tmovies.Button16Click(Sender: TObject);
begin
  close;
end;

procedure Tmovies.Button18Click(Sender: TObject);
begin
  close;
end;

procedure Tmovies.Button1Click(Sender: TObject);
begin
  udm.movies.Insert;
  (* dbedit10 := '';
    dbedit11 := '';
    dbedit12 := '';
    dbedit13 := '';
    dbedit14 := '';
    dbedit15 := '';
    dbedit16 := '';
    dbedit17 := '';
    dbedit22 := ''; *)
end;

procedure Tmovies.Button22Click(Sender: TObject);
begin
  close;
end;

procedure Tmovies.Button2Click(Sender: TObject);
var
  i : Integer;
  data: string;
begin
  case ComboBox1.ItemIndex of
    0: // 장르별 조회
      data := Format('select * from movies where M_GENRE  like ''%%%s%%''',
        [ComboBox2.Text]);
    1: // 등급별 조회
      data := Format('select * from movies where M_Grade  like ''%%%s%%''',
        [ComboBox3.Text]);
    2: // 구분별 조회
      data := Format('select * from movies where M_divi  like ''%%%s%%''',
        [ComboBox4.Text]);
  else
    exit;
  end;

  SQLQuery1.Active := False;
  SQLQuery1.SQL.Text := data;
  SQLQuery1.Active := True;
  i := 0;
  while not SQLQuery1.Eof do
  begin
    inc( i );
    StringGrid1.Cells[0, i] := '';
    StringGrid1.Cells[1, i] := SQLQuery1.FieldByName('m_num').AsString;
    StringGrid1.Cells[2, i] :=  SQLQuery1.FieldByName('m_title').AsString;
    StringGrid1.Cells[3, i] :=  SQLQuery1.FieldByName('m_super').AsString;
    StringGrid1.Cells[4, i] :=  SQLQuery1.FieldByName('m_master').AsString;
    //SQLQuery1.Eof;
  end;
  StringGrid1.RowCount := i + 1;
end;

procedure Tmovies.Button3Click(Sender: TObject);
begin
  udm.movies.post;
  udm.movies.ApplyUpdates(-1);
end;

procedure Tmovies.Button4Click(Sender: TObject);
begin
  close;
end;

procedure Tmovies.Button5Click(Sender: TObject);
begin
  // udm.movies.insert;
  udm.movies.ApplyUpdates(-1);
end;

procedure Tmovies.Button8Click(Sender: TObject);
begin
  close;
end;

procedure Tmovies.ComboBox1Change(Sender: TObject);
begin
  ComboBox2.Visible := False;
  ComboBox3.Visible := False;
  ComboBox4.Visible := False;

  ComboBox3.Top := ComboBox2.Top;
  ComboBox3.Left := ComboBox2.Left;
  ComboBox4.Top := ComboBox2.Top;
  ComboBox4.Left := ComboBox2.Left;

  case ComboBox1.ItemIndex of
    1:
      ComboBox3.Visible := True;
    2:
      ComboBox4.Visible := True;
  else // 0
    ComboBox2.Visible := True;
  end;
end;

procedure Tmovies.Edit1Change(Sender: TObject);
begin
  udm.movies.indexfieldnames := 'm_num';
  udm.movies.findnearest([Edit1.Text]);
end;

procedure Tmovies.Edit7Change(Sender: TObject);
begin
  udm.movies.indexfieldnames := 'm_title';
  udm.movies.findnearest([Edit7.Text]);
end;

procedure Tmovies.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    action := cafree;
end;

procedure Tmovies.FormShow(Sender: TObject);
var
  i: byte;
begin
  with StringGrid1 do
  begin
    rowcount := udm.movies.RecordCount + 1;
    cells[0, 0] := '테잎 번호';
    cells[1, 0] := '테잎 이름';
    cells[2, 0] := '감     독';
    cells[3, 0] := '주     연';
    // cells[4,0] := '대여비용';

    for i := 1 to udm.movies.RecordCount do
    begin
      cells[0, i] := '';
      cells[1, i] := '';
      cells[2, i] := '';
      cells[3, i] := '';
      cells[4, i] := '';
    end;
    SQLQuery1.close;
    // sqlquery1.params[0].AsString :=
    // movies.fieldbyname('').asstring;
(*    SQLQuery1.open;

    for i := 1 to SQLQuery1.RecordCount do
    begin
      cells[0, i] := SQLQuery1.FieldByName('m_num').AsString;
      cells[1, i] := SQLQuery1.FieldByName('m_title').AsString;
      cells[2, i] := SQLQuery1.FieldByName('m_super').AsString;
      cells[3, i] := SQLQuery1.FieldByName('m_master').AsString;
      // cells[4,i] := sqlquery1.FieldByName('cost').AsString;
      SQLQuery1.Next;
    end; *)
  end;
end;

{ procedure Tmovies.DBEdit18Change(Sender: TObject);
  begin
  udm.movies.indexfieldnames := 'm_num';
  udm.movies.findnearest([edit1.Text]);
  end; }

{ procedure Tmovies.DBEdit19Change(Sender: TObject);
  begin
  udm.customer.indexfieldnames := 'm_name';
  udm.customer.findnearest([edit1.Text]);
  end; }

end.
