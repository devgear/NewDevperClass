unit Udept;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components,
  Data.Bind.DBScope, Vcl.ComCtrls, Udept_1, Vcl.Mask, Vcl.DBCtrls, Utreeview;

type
  Tdept = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    btn_dept_cancel: TButton;
    btn_dept_insert: TButton;
    edit_dname: TDBEdit;
    btn_dept_post: TButton;
    lb_dteam: TLabel;
    lb_dname: TLabel;
    TabSheet4: TTabSheet;
    btn_dept_delete: TButton;
    combo_dteam: TDBComboBox;
    Frame11: TFrame1;
    procedure btn_dept_deleteClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn_dept_cancelClick(Sender: TObject);
    procedure btn_dept_postClick(Sender: TObject);
    procedure btn_dept_insertClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dept: Tdept;
  a: byte;
  t: TTabSheet;

implementation

{$R *.dfm}

uses ClientModuleUnit1;

procedure Tdept.btn_dept_insertClick(Sender: TObject);
begin
  // try
  // begin
  // dm.SQLQuery1.Close;
  // dm.SQLQuery1.SQL.Text:=
  // 'insert into dept values (:ename, :eteam)';
  // dm.SQLQuery1.ParamByName('ename').AsString:=edit_dname;
  // dm.SQLQuery1.ParamByName('eteam')
  // end;
  // finally
  //
  // end;
  dm.dept.Insert;
end;

procedure Tdept.btn_dept_deleteClick(Sender: TObject);
begin
  if messagedlg('삭제', mtconfirmation, [mbyes, mbno], 0) = mryes then
  begin
    try
      dm.dept.delete;
      dm.dept.ApplyUpdates(-1);
    except
      showmessage('오류');

    end;
  end;

end;

procedure Tdept.btn_dept_cancelClick(Sender: TObject);
begin
  dm.dept.cancel;
end;

procedure Tdept.btn_dept_postClick(Sender: TObject);
begin
  dm.dept.Post;
end;

procedure Tdept.FormCreate(Sender: TObject);
begin

  DBGrid1.columns[0].title.Caption := '부서 명';
  DBGrid1.columns[1].title.Caption := '소속 팀 명';

  DBGrid1.columns[0].width := 88;
  DBGrid1.columns[1].width := 88;

end;

end.
