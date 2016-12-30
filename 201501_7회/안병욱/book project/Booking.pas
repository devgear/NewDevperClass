unit Booking;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls, Data.Bind.EngExt, Vcl.Bind.DBEngExt,
  Vcl.Bind.Grid, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope;

type
  TBookingForm = class(TForm)
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Button1: TButton;
    Button2: TButton;
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    Panel2: TPanel;
    Edit1: TEdit;
    GroupBox2: TGroupBox;
    Panel3: TPanel;
    Panel4: TPanel;
    Edit2: TEdit;
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
    Button3: TButton;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindSourceDB2: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BookingForm: TBookingForm;

implementation

{$R *.dfm}

uses BookDm;

procedure TBookingForm.Button1Click(Sender: TObject);
begin
  DataModule1.BookingDataset.Post;
  DataModule1.BookingDataset.ApplyUpdates(-1);
  DataModule1.BookingDataset.Refresh;
  ShowMessage('예약 되었습니다.');
end;

procedure TBookingForm.Button2Click(Sender: TObject);
begin
    if Messagedlg('예약 취소하시겠습니까?', mtConfirmation, [mbok, mbcancel], 0) = mrok then
  begin
    try
      begin
        DataModule1.BookingDataset.Delete;
        DataModule1.BookingDataset.ApplyUpdates(-1);
        ShowMessage('예약 취소되었습니다.');
      end
    Except
      On e: Exception do
        ShowMessage('예약취소  오류');
    end;
  end;
end;

procedure TBookingForm.Button3Click(Sender: TObject);
begin
  DataModule1.BookingDataSet.Append;
  DataModule1.BookingDataSet.FieldByName('BookingNum').AsInteger := 0;
  DBEdit5.Text := DateToStr(now);
end;

procedure TBookingForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := caFree;
end;

procedure TBookingForm.FormCreate(Sender: TObject);
begin
  DBEdit5.Text := DateToStr(now);
end;

end.
