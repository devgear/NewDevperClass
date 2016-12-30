unit ResultForm;

interface

uses
//  DetailViewForm,
  ProgressForm,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, BaseGrid, AdvGrid;

type
  TfrResult = class(TForm)
    btDetailView: TButton;
    btProgress: TButton;
    btPrint: TButton;
    AdvStringGrid1: TAdvStringGrid;
    Edit2: TEdit;
    Edit4: TEdit;
    btSearch: TButton;
    ComboBox1: TComboBox;
    검색조건: TEdit;
    btResultClose: TButton;
    Label1: TLabel;
    procedure btDetailViewClick(Sender: TObject);
    procedure btProgressClick(Sender: TObject);
    procedure btResultCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
//    DetailViewForm : TfrDetail;
    ProgressForm : TfrProgress;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frResult: TfrResult;

implementation

{$R *.dfm}

procedure TfrResult.btDetailViewClick(Sender: TObject);
begin
//  frDetail := TfrDetail.Create(nil);
//  frDetail.Parent := self;
//  frDetail.Show;
end;

procedure TfrResult.btProgressClick(Sender: TObject);
begin
  frProgress := TfrProgress.Create(self);
  frProgress.Parent := self;
  frProgress.Show;
end;

procedure TfrResult.btResultCloseClick(Sender: TObject);
begin
  frResult.close;
end;

procedure TfrResult.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
