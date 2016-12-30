unit USearch;

interface

uses
	Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
	Dialogs, StdCtrls, ComCtrls, ExtCtrls, FMTBcd, DB, SqlExpr, Grids, DBGrids,
	DBClient, SimpleDS;

type
	TSearchForm = class(TForm)
		Panel1: TPanel;
		ComboBox1: TComboBox;
		SearchGrid: TDBGrid;
		SearchEdit: TEdit;
		SearchCombo: TComboBox;
		SearchButton: TButton;
		Check_access: TCheckBox;
		Check_wait: TCheckBox;
		Check_Return: TCheckBox;
		SearchSource: TDataSource;
		SearchQuery: TSimpleDataSet;
		MonthCombo: TComboBox;
		Label1: TLabel;
		SearchQuerySETTLE_NO: TIntegerField;
		SearchQuerySETTLE_NM: TStringField;
		SearchQuerySETTLE_CONT: TStringField;
		SearchQuerySETTLE_DT: TDateField;
		SearchQuerySETTLE_WRITE_DT: TDateField;
		SearchQuerySETTLE_YN: TStringField;
		SearchQuerySETTLE_READ_YN: TStringField;
		SearchQuerySETTLE_KIND: TStringField;
		SearchQuerySETTLE_SENDER: TStringField;
		SearchQuerySETTLE_RECVER: TStringField;
		SearchQuerysender_nm: TStringField;
		SearchQueryrecver_nm: TStringField;
		SearchQuerysettle_yn_nm: TStringField;
		procedure FormClose(Sender: TObject; var Action: TCloseAction);
		function getMonthQuery(ComboIndex: Integer): String;
		function getstate: String;
		procedure FormCreate(Sender: TObject);
		procedure SearchButtonClick(Sender: TObject);
		procedure SearchQueryCalcFields(DataSet: TDataSet);
	private
		{ Private declarations }
	public
		{ Public declarations }
	var
		startday, endday: TDateTime;
		year, yy, month, day: Word;
		days: Integer;

	const
		DaysInMonth: array [1 .. 12] of Integer = (31, 28, 31, 30, 31, 30, 31, 31,
			30, 31, 30, 31);
	end;

var
	SearchForm: TSearchForm;

implementation

uses Uds_dm;

{$R *.dfm}

procedure TSearchForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	Action := cafree;
end;

procedure TSearchForm.FormCreate(Sender: TObject);
var
	yyy, mmm, ddd: Word;
begin
	DecodeDate(now, yyy, mmm, ddd);
	MonthCombo.ItemIndex := mmm - 1;

end;

function TSearchForm.getMonthQuery(ComboIndex: Integer): String;
begin
	DecodeDate(now, year, month, day);
	yy := year;
	days := DaysInMonth[ComboIndex + 1];
	startday := EncodeDate(yy, ComboIndex + 1, 1);
	endday := EncodeDate(yy, ComboIndex + 1, days);

	result := ' and (settle_write_dt >= ' + DateTimeToStr(startday) +
		' and settle_write_dt <= ' + DateTimeToStr(endday) + ') ';

end;

function TSearchForm.getstate: String;
var
	fielter_str: string;
begin
	fielter_str := '';

	if Check_access.Checked then
		fielter_str := ' settle_yn = ''Y'' ';
	if Check_wait.Checked then
	begin
		if fielter_str <> '' then
			fielter_str := fielter_str + ' or ';
		fielter_str := fielter_str + ' settle_yn = ''N'' ';
	end;
	if Check_Return.Checked then
	begin
		if fielter_str <> '' then
			fielter_str := fielter_str + ' or ';
		fielter_str := fielter_str + ' settle_yn = ''R'' ';
	end;

	if fielter_str = '' then
		fielter_str := ' and settle_yn = ''NT'' '
	else
		fielter_str := ' and (' + fielter_str + ' ) ';

	result := fielter_str;
end;

procedure TSearchForm.SearchButtonClick(Sender: TObject);
var
	ft_str: string;
begin
	if SearchEdit.Text = '' then
		ft_str := ' 1 = 1 '
	else
	begin
		case (SearchCombo.ItemIndex) of
			//0:
			//	ft_str := ' sender_nm like ';
			//1:
			//	ft_str := ' recver_nm like ';
			0:
				ft_str := ' settle_nm like ';
		end;
		ft_str := ft_str + '''%' + SearchEdit.Text + '%'' ';
	end;

	ft_str := ft_str + getMonthQuery(MonthCombo.ItemIndex) + getstate;
	SearchQuery.Close;
	SearchQuery.Filtered := true;
	SearchQuery.Filter := ft_str;
	SearchQuery.Open;

end;

procedure TSearchForm.SearchQueryCalcFields(DataSet: TDataSet);
begin
	if SearchQuerySETTLE_YN.AsString = 'Y' then
		SearchQuerysettle_yn_nm.AsString := '결제완료'
	else if SearchQuerySETTLE_YN.AsString = 'N' then
		SearchQuerysettle_yn_nm.AsString := '결제대기중'
	else if SearchQuerySETTLE_YN.AsString = 'R' then
		SearchQuerysettle_yn_nm.AsString := '반려 됨'
	else if SearchQuerySETTLE_YN.AsString = 'T' then
		SearchQuerysettle_yn_nm.AsString := '임시저장';
end;

end.

