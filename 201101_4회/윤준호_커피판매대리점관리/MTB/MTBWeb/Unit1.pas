unit Unit1;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, DB, SqlExpr,
  jpeg, Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWExtCtrls;

type
  TIWForm1 = class(TIWAppForm)
    IWImage1: TIWImage;
    SQLConnection1: TSQLConnection;
  public
  end;

implementation

{$R *.dfm}


initialization
  TIWForm1.SetAsMainForm;

end.
