unit UFindLib;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls, FMX.ListBox, FMX.Edit, FMX.Objects,
  FMX.Controls.Presentation, FMX.Layouts, Data.Bind.EngExt, FMX.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope,
  System.Rtti, System.Bindings.Outputs, FMX.Bind.Editors, Data.DB;

type
  TFindForm = class(TForm)
    LayoutFindLIB: TLayout;
    PN_FindLib: TPanel;
    BackGround: TRectangle;
    Text3: TText;
    Inform: TRectangle;
    Text5: TText;
    EditLibName: TEdit;
    EditSTIME: TEdit;
    EditETIME: TEdit;
    Text1: TText;
    Text2: TText;
    EditCLOSE: TEdit;
    LibMenu: TRectangle;
    LibAddressCombo: TComboBox;
    LibNameCombo: TComboBox;
    ToolBar6: TToolBar;
    Text14: TText;
    masterbutton: TButton;
    Rectangle1: TRectangle;
    LibSource: TDataSource;
    BindingsList1: TBindingsList;
    BindSourceDB1: TBindSourceDB;
    LinkListControlToField1: TLinkListControlToField;
    BindSourceDB2: TBindSourceDB;
    LinkListControlToField2: TLinkListControlToField;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    Button1: TButton;
    procedure masterbuttonClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FindForm: TFindForm;

implementation

{$R *.fmx}
{$R *.LgXhdpiPh.fmx ANDROID}

uses UDm, UReserve;

procedure TFindForm.Button1Click(Sender: TObject);
begin
  if not Assigned(ReserveForm) then
    ReserveForm := tReserveform.Create(self);

  ReserveForm.SHOW;

end;

procedure TFindForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := TCloseAction.caFree;
  FindForm := nil;
end;

procedure TFindForm.masterbuttonClick(Sender: TObject);
begin
  FindForm.Close;
end;

end.
