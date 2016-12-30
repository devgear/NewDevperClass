unit Unit4;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes,
  IWCompProgressBar, jpeg, Controls, IWVCLBaseControl, IWBaseControl,
  IWBaseHTMLControl, IWControl, IWExtCtrls;

type
  TIWForm4 = class(TIWAppForm)
    IWImage1: TIWImage;
    IWProgressBar1: TIWProgressBar;
    IWProgressBar2: TIWProgressBar;
  public
  end;

implementation

{$R *.dfm}


end.
