unit Intro;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, jpeg, Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWExtCtrls,
  IWCompLabel, IWCompButton, IWCompEdit;

type
  TIWForm1 = class(TIWAppForm)
    IWImage1: TIWImage;
    IWLabel1: TIWLabel;
    IWEdit1: TIWEdit;
    IWEdit2: TIWEdit;
    IWButton1: TIWButton;
    IWButton2: TIWButton;
    IWLabel2: TIWLabel;
    IWLabel3: TIWLabel;
    procedure IWImage1Click(Sender: TObject);
  public
  end;

implementation

uses Main;

{$R *.dfm}


procedure TIWForm1.IWImage1Click(Sender: TObject);
begin
  TIWForm2.Create(WebApplication).Show;
end;

initialization
  TIWForm1.SetAsMainForm;

end.
