unit UCalender;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.DBCtrls;

type
  TCalForm = class(TForm)
    Calender: TMonthCalendar;
    Button1: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
   // FEditType: Integer;
    { Private declarations }
  public
    { Public declarations }
//    EditType: Integer;
   // property EditType: Integer read FEditType write FEditType;
  end;

var
  CalForm: TCalForm;

implementation

{$R *.dfm}

uses UPorject;

procedure TCalForm.Button1Click(Sender: TObject);
var
  str:string;
begin
//  i := DBEdit.Tag;
  case Tag of
    1:
      begin
        str := DateToStr(Calender.Date);
        ProForm.DBEdit3.Text := str;
        close;
      end;
    2:
      begin
        str := DateToStr(Calender.Date);
        ProForm.DBEdit4.Text := str;
        close;
      end;
  end;
end;

procedure TCalForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
