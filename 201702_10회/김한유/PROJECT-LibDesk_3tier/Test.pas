unit Test;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, System.Rtti, FMX.Grid.Style, FMX.ScrollBox, FMX.Grid,
  FMX.Controls.Presentation, FMX.StdCtrls, Data.DBXDataSnap, Data.DBXCommon, IPPeerClient, Data.SqlExpr, Data.DB,
  Datasnap.DBClient, Datasnap.DSConnect, Data.Bind.EngExt, FMX.Bind.DBEngExt, FMX.Bind.Grid, System.Bindings.Outputs,
  FMX.Bind.Editors, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope, FMX.Edit, FMX.Objects, FMX.Layouts;

type
  TForm6 = class(TForm)
    DSProviderConnection1: TDSProviderConnection;
    ClientDataSet1: TClientDataSet;
    SQLConnection1: TSQLConnection;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    ClientDataSet1USER_SEQ: TIntegerField;
    ClientDataSet1USER_NAME: TWideStringField;
    ClientDataSet1USER_ID: TStringField;
    ClientDataSet1USER_PW: TStringField;
    ClientDataSet1USER_PHONE: TStringField;
    ClientDataSet1USER_MAIL: TWideStringField;
    ClientDataSet1USER_OUT_YN: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.fmx}

end.
