unit RentTime;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.ExtCtrls, Vcl.Mask, AdvTimePickerDropDown;

type
  TRentForm = class(TForm)
    SeatPanel: TPanel;
    Label3: TLabel;
    LibRoomCombo: TDBComboBox;
    Label4: TLabel;
    RentSource: TDataSource;
    STimeCombo: TComboBox;
    LibSource: TDataSource;
    DBEdit1: TDBEdit;
    Button1: TButton;
    ETimeCombo: TComboBox;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RentForm: TRentForm;

implementation

{$R *.dfm}

uses DataAccessModule, RentSeat, Main;

procedure TRentForm.Button1Click(Sender: TObject);
begin
 if not Assigned(SeatForm) then
    SeatForm := SeatForm.Create(Self);
  SeatForm.Parent := MainForm.MainPanel;
  SeatForm.BorderStyle := bsNone;
  SeatForm.Align := alClient;
  SeatForm.Show;
end;

end.
