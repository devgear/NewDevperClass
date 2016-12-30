unit Main_home;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ButtonGroup, Vcl.ExtCtrls;

type
  TForm6 = class(TForm)
    CategoryPanelGroup1: TCategoryPanelGroup;
    CategoryPanel1: TCategoryPanel;
    CategoryPanel2: TCategoryPanel;
    CategoryPanel3: TCategoryPanel;
    CategoryPanel4: TCategoryPanel;
    ButtonGroup1: TButtonGroup;
    ButtonGroup2: TButtonGroup;
    Panel1: TPanel;
    procedure ButtonGroup2Items0Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

uses Main_Client;



procedure TForm6.ButtonGroup2Items0Click(Sender: TObject);
begin
  Form3 := TForm3.Create(nil);
  Form3.Parent := Panel1;
  Form3.BorderStyle := bsNone;
  Form3.Align := alClient;
  Form3.Show;
end;

end.
