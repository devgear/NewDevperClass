unit UProject;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls;

type
  TProjectForm = class(TForm)
    PageControl1: TPageControl;
    Á¶È¸: TTabSheet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProjectForm: TProjectForm;

implementation

{$R *.dfm}

procedure TProjectForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

end.
