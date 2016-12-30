Unit Cmain;

Interface

Uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, ActnMan, ActnCtrls, ToolWin, ComCtrls,
  PlatformDefaultStyleActnCtrls, ImgList, ActnMenus, ExtCtrls, jpeg, Grids,
  DBGrids;

Type
  TMainForm = Class(TForm)
    StatusBar1: TStatusBar;
    ImageList1: TImageList;
    CoolBar1: TCoolBar;
    ActionToolBar1: TActionToolBar;
    ActionMainMenuBar1: TActionMainMenuBar;
    ActionToolBar2: TActionToolBar;
    Image1: TImage;
    Timer1: TTimer;
    ActionManager1: TActionManager;
    Action1: TAction;
    Action4: TAction;
    Action2: TAction;
    Action5: TAction;
    Action7: TAction;
    Action3: TAction;
    Procedure Timer1Timer(Sender: TObject);
    Procedure Action1Execute(Sender: TObject);
    Procedure Action2Execute(Sender: TObject);
    Procedure Action4Execute(Sender: TObject);
    Procedure Action7Execute(Sender: TObject);
    procedure Action3Execute(Sender: TObject);
  Private
    { Private declarations }
  Public
    { Public declarations }
  End;

Var
  MainForm: TMainForm;

Implementation

Uses Ucus, URental, UReturn, UReservation, RecError, Usearch, Udisrent;

{$R *.dfm}

Procedure TMainForm.Action1Execute(Sender: TObject);
Begin
  cusform := Tcusform.Create(Nil);
  cusform.Show;
End;

Procedure TMainForm.Action2Execute(Sender: TObject);
Begin
  rentalform := TRentalForm.Create(application);
  rentalform.Show;
End;

procedure TMainForm.Action3Execute(Sender: TObject);
begin
  disform := Tdisform.create(application);
  disform.Show;

end;

Procedure TMainForm.Action4Execute(Sender: TObject);
Begin
  RevForm := TRevForm.Create(application);
  RevForm.Show;
End;

Procedure TMainForm.Action7Execute(Sender: TObject);
Begin
  ReturnForm := TReturnForm.Create(application);
  ReturnForm.Show;
End;

Procedure TMainForm.Timer1Timer(Sender: TObject);
Begin
  StatusBar1.Panels[1].Text :=
    FormatdateTime('yyyy-mm-dd ddd hh:nn:ss am/pm', now);
End;

End.
