unit Unit3;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCompListbox,
  IWDBStdCtrls, IWHTMLControls, jpeg, IWExtCtrls, Controls, IWVCLBaseControl,
  IWBaseControl, IWBaseHTMLControl, IWControl, IWCompProgressBar, IWCompText;

type
  TIWForm3 = class(TIWAppForm)
    IWProgressBar2: TIWProgressBar;
    IWImage1: TIWImage;
    IWProgressBar1: TIWProgressBar;
    IWDBText1: TIWDBText;
  public
  end;

implementation

uses Main;

{$R *.dfm}


end.
