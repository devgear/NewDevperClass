unit UMypage;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls, FMX.Edit, FMX.Objects,
  FMX.Controls.Presentation, FMX.Layouts, UClientClass, UDm, Data.Bind.Components, Data.Bind.DBScope,
  System.Rtti, System.Bindings.Outputs, FMX.Bind.Editors, Data.Bind.EngExt, FMX.Bind.DBEngExt;

type
  TMypageForm = class(TForm)
    Layout3: TLayout;
    Panel4: TPanel;
    Rectangle3: TRectangle;
    Text15: TText;
    Circle3: TCircle;
    Text17: TText;
    ToolBar6: TToolBar;
    Text14: TText;
    masterbutton: TButton;
    LayoutID: TLayout;
    LayoutDuplicteID: TLayout;
    RoundRect9: TRoundRect;
    Text7: TText;
    LayoutINSERT: TLayout;
    RoundRect10: TRoundRect;
    Text4: TText;
    Layout1: TLayout;
    Layout2: TLayout;
    RoundRect1: TRoundRect;
    Text1: TText;
    Layout4: TLayout;
    RoundRect2: TRoundRect;
    EditLibName: TEdit;
    Layout5: TLayout;
    Layout8: TLayout;
    RoundRect3: TRoundRect;
    Text2: TText;
    Layout9: TLayout;
    RoundRect4: TRoundRect;
    EditRentSTIME: TEdit;
    Layout10: TLayout;
    Layout11: TLayout;
    RoundRect7: TRoundRect;
    Text3: TText;
    Layout12: TLayout;
    RoundRect8: TRoundRect;
    EditRentDate: TEdit;
    Layout16: TLayout;
    Layout17: TLayout;
    RoundRect13: TRoundRect;
    Text8: TText;
    Layout18: TLayout;
    RoundRect14: TRoundRect;
    EditSeatNum: TEdit;
    RoundRect15: TRoundRect;
    EditRentETIME: TEdit;
    Image1: TImage;
    Bind_Rent: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    LinkControlToField5: TLinkControlToField;
    LinkControlToField6: TLinkControlToField;
    BindSourceDB1: TBindSourceDB;
    LinkControlToField1: TLinkControlToField;
    procedure CloseClick(Sender: TObject);
    procedure Text7Click(Sender: TObject);
    procedure masterbuttonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MypageForm: TMypageForm;

implementation

{$R *.fmx}

uses UMain2, UFindLib;
{$R *.LgXhdpiPh.fmx ANDROID}

procedure TMypageForm.CloseClick(Sender: TObject);
begin
  if not Assigned(FindForm) then
    FindForm := TFindForm.Create(self);

  FindForm.SHOW;
end;

procedure TMypageForm.masterbuttonClick(Sender: TObject);
begin
  MypageForm.Close;
end;

procedure TMypageForm.Text7Click(Sender: TObject);
begin
  if not Assigned(MainForm2) then
    MainForm2 := TMainForm2.Create(self);

  MainForm2.SHOW;
end;

end.
