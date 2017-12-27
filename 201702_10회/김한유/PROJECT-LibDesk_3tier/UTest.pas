unit UTest;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Edit,
  FMX.Objects, FMX.Layouts, FMX.TabControl, FMX.ListBox, FMX.DateTimeCtrls;

type
  TFindForm = class(TForm)
    Panel1: TPanel;
    ToolBar6: TToolBar;
    Text14: TText;
    masterbutton: TButton;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    LayoutFindLIB: TLayout;
    PN_FindLib: TPanel;
    BackGround: TRectangle;
    Text3: TText;
    Text5: TText;
    TabItem2: TTabItem;
    Layout2: TLayout;
    Panel3: TPanel;
    Rectangle2: TRectangle;
    TabItem3: TTabItem;
    Layout3: TLayout;
    Panel4: TPanel;
    Rectangle3: TRectangle;
    Text15: TText;
    Text16: TText;
    Circle3: TCircle;
    Text17: TText;
    Text18: TText;
    Edit3: TEdit;
    LibAddressCombo: TComboBox;
    LibNameCombo: TComboBox;
    Inform: TRectangle;
    LibMenu: TRectangle;
    EditLibName: TEdit;
    EditSTIME: TEdit;
    EditETIME: TEdit;
    Text1: TText;
    Text2: TText;
    EditCLOSE: TEdit;
    btnFind1: TButton;
    LibMenu2: TRectangle;
    btnFind2: TButton;
    Text4: TText;
    Edit1: TEdit;
    DateEdit1: TDateEdit;
    DESK1: TRectangle;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    DESK2: TRectangle;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    DESK3: TRectangle;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    DESK4: TRectangle;
    Button19: TButton;
    Button20: TButton;
    Button21: TButton;
    Button22: TButton;
    Button23: TButton;
    Button24: TButton;
    RentBox: TRectangle;
    Button25: TButton;
    txtSNum: TText;
    EditSeatNum: TEdit;
    EditSTIME2: TTimeEdit;
    EditETIME2: TTimeEdit;
    txtTime: TText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FindForm: TFindForm;

implementation

{$R *.fmx}

end.
