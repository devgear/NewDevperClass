unit Pc_counter_History_Viwe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, PC_counter_dm;

type
  TForm_History = class(TForm)
    PageControl_login: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    DBGrid2: TDBGrid;
    ComboBox2: TComboBox;
    Edit2: TEdit;
    TabSheet3: TTabSheet;
    DBGrid3: TDBGrid;
    label1: TLabel;
    Edit3: TEdit;
    Label2: TLabel;
    Edit4: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Edit4Change(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_History: TForm_History;

implementation

{$R *.dfm}



procedure TForm_History.Edit1Change(Sender: TObject);
var
  fiter:string;
  point:string;

begin
  if ComboBox1.Text = '사용자' then
  begin
    fiter:= '' ;
    point := Edit1.Text;

    if point <> '' then
    begin
      fiter := 'USER_ID like ''%'+point+'%''';

    end;
    clientmodule.ClientDataset_login_history.Filter := fiter ;
    clientmodule.ClientDataset_login_history.Filtered := (fiter <> '') ;
  end
  else if ComboBox1.Text = '접속날자' then
  begin
    fiter:= '' ;
    point := Edit1.Text;

    if point <> '' then
    begin
      fiter := 'LOGIN_DAY like ''%'+point+'%''';

    end;
    clientmodule.ClientDataset_login_history.Filter := fiter ;
    clientmodule.ClientDataset_login_history.Filtered := (fiter <> '') ;
  end
  else if ComboBox1.Text = '로그아웃 날자' then
  begin
    fiter:= '' ;
    point := Edit1.Text;

    if point <> '' then
    begin
      fiter := 'END_DAY like ''%'+point+'%''';

    end;
    clientmodule.ClientDataset_login_history.Filter := fiter ;
    clientmodule.ClientDataset_login_history.Filtered := (fiter <> '') ;
  end;



end;

procedure TForm_History.Edit2Change(Sender: TObject);
var
  fiter:string;
  point:string;

begin
  if ComboBox2.Text = '사용자' then
  begin
    fiter:= '' ;
    point := Edit2.Text;

    if point <> '' then
    begin
      fiter := 'USER_ID like ''%'+point+'%''';

    end;
    clientmodule.ClientDataSet_addtime.Filter := fiter ;
    clientmodule.ClientDataSet_addtime.Filtered := (fiter <> '') ;
  end
  else if ComboBox2.Text = '충전 날자' then
  begin
    fiter:= '' ;
    point := Edit2.Text;

    if point <> '' then
    begin
      fiter := 'add_DAY like ''%'+point+'%''';

    end;
    clientmodule.ClientDataSet_addtime.Filter := fiter ;
    clientmodule.ClientDataSet_addtime.Filtered := (fiter <> '') ;
  end

end;


procedure TForm_History.Edit3Change(Sender: TObject);
var
  fiter,point:string;
begin

    fiter:= '' ;
    point := Edit3.Text;

    if point <> '' then
    begin
      fiter := 'add_day like ''________%'+point+'%''';

    end;
    clientmodule.ClientDataSet_day_day.Filter := fiter ;
    clientmodule.ClientDataSet_day_day.Filtered := (fiter <> '') ;

end;

procedure TForm_History.Edit4Change(Sender: TObject);
var
  fiter,point:string;
begin

    fiter:= '' ;
    point := Edit4.Text;

    if point <> '' then
    begin
      fiter := 'add_day like ''_____%'+point+'___%''';

    end;
    clientmodule.ClientDataSet_day_day.Filter := fiter ;
    clientmodule.ClientDataSet_day_day.Filtered := (fiter <> '') ;

end;


procedure TForm_History.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  Form_History := nil;
end;

procedure TForm_History.FormCreate(Sender: TObject);
begin
  clientmodule.ClientDataSet_addtime.Refresh;
  clientmodule.ClientDataSet_login_history.Refresh;


end;

end.
