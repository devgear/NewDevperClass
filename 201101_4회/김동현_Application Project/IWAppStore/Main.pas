unit Main;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes,
  IWCompTabControl, IWGrids, IWDBGrids, Controls, Forms, IWVCLBaseContainer,
  IWContainer, IWHTMLContainer, IWHTML40Container, IWRegion, IWVCLBaseControl,
  IWBaseControl, IWBaseHTMLControl, IWControl, IWExtCtrls, DBXInterBase, FMTBcd,
  SqlExpr, DB, DBClient, Provider, IWDBStdCtrls, IWCompProgressBar, jpeg,
  IWCompButton, IWCompEdit, IWCompLabel, IWCompListbox;

type
  TIWForm2 = class(TIWAppForm)
    SQLConnection1: TSQLConnection;
    SQLTable1: TSQLTable;
    DataSource1: TDataSource;
    IWDBGrid1: TIWDBGrid;
    IWDBNavigator1: TIWDBNavigator;
    IWImage1: TIWImage;
    IWProgressBar1: TIWProgressBar;
    IWProgressBar2: TIWProgressBar;
    IWButton1: TIWButton;
    IWDBLookupListBox1: TIWDBLookupListBox;
    IWDBLookupComboBox1: TIWDBLookupComboBox;
    IWDBLabel1: TIWDBLabel;
    IWDBEdit1: TIWDBEdit;
    IWDBComboBox1: TIWDBComboBox;
    IWFile1: TIWFile;
    procedure IWButton1Click(Sender: TObject);
  public
  end;

implementation

uses Unit3;

{$R *.dfm}


procedure TIWForm2.IWButton1Click(Sender: TObject);
begin
  TiwForm3.Create(WebApplication).Show;
end;

end.
