unit Web_Main;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, DB, SqlExpr,
  jpeg, Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWExtCtrls, IWCompButton, IWCompEdit, IWDBStdCtrls, IWCompLabel, IWCompListbox,
  IWGrids, IWDBGrids;

type
  TIWMAIN = class(TIWAppForm)
    IWImage1: TIWImage;
    IWLabel1: TIWLabel;
    IWPID: TIWDBEdit;
    IWLabel5: TIWLabel;
    IWPPW: TIWDBEdit;
    IWButton1: TIWButton;
    IWButton2: TIWButton;
    IWDBGrid1: TIWDBGrid;
    procedure IWButton1Click(Sender: TObject);
  public
  end;

implementation

uses Web_Join, ServerController;



{$R *.dfm}


procedure TIWMAIN.IWButton1Click(Sender: TObject);
begin
  TIWJOIN.Create(WebApplication).Show;
end;

initialization
  TIWMAIN.SetAsMainForm;

end.
