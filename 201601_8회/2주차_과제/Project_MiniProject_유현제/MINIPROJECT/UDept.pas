unit UDept;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls;

type
  TUDeptForm = class(TForm)
    PageControl1: TPageControl;
    Á¶È¸: TTabSheet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UDeptForm: TUDeptForm;

implementation

{$R *.dfm}

procedure TUDeptForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

end.
