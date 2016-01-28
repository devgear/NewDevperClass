unit PhotoFrame;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.MediaLibrary.Actions, System.Actions, FMX.ActnList,
  FMX.StdActns, FMX.MediaLibrary, FMX.Ani, FMX.Layouts, FMX.Styles.Objects;

type
  TfrPhoto = class(TFrame)
    Background: TRectangle;
    ActionList1: TActionList;
    TakePhotoFromCameraAction1: TTakePhotoFromCameraAction;
    TakePhotoFromLibraryAction1: TTakePhotoFromLibraryAction;
    ButtonLayout: TLayout;
    btnCamera: TCornerButton;
    btnAlbum: TCornerButton;
    btnClear: TCornerButton;
    btnCancel: TCornerButton;
    FloatAnimation1: TFloatAnimation;
    StyleBook1: TStyleBook;
    procedure btnClearClick(Sender: TObject);
    procedure TakePhotoFromCameraAction1DidFinishTaking(Image: TBitmap);
    procedure TakePhotoFromLibraryAction1DidFinishTaking(Image: TBitmap);
    procedure btnCancelClick(Sender: TObject);
    procedure BackgroundClick(Sender: TObject);
    procedure TakePhotoFromCameraAction1DidCancelTaking;
    procedure TakePhotoFromLibraryAction1DidCancelTaking;
    procedure FloatAnimation1Finish(Sender: TObject);
  private
    FOnDidFinishTaking: TProc<TBitmap>;
    FOnClose: TProc<TObject>;

    procedure DoDidFinishTaking(Image: TBitmap);
    procedure ShowFrame;
    { Private declarations }
  public
    { Public declarations }
    property OnDidFinishTaking: TProc<TBitmap> read FOnDidFinishTaking write FOnDidFinishTaking;
    property OnClose: TProc<TObject> read FOnClose write FOnClose;

    procedure CloseFrame;

    class procedure CreateAndShow(AOwner: TComponent; ADidFinishEvent: TProc<TBitmap>; ACloseEvnet: TProc<TObject>);
  end;

var
  frPhoto: TfrPhoto;

implementation

{$R *.fmx}

class procedure TfrPhoto.CreateAndShow(AOwner: TComponent; ADidFinishEvent: TProc<TBitmap>;
  ACloseEvnet: TProc<TObject>);
begin
  if not Assigned(frPhoto) then
    frPhoto := TfrPhoto.Create(AOwner);

  if AOwner is TFmxObject then
    frPhoto.Parent := AOwner as TFmxObject
  else
    frPhoto.Parent := Application.MainForm as TFmxObject
  ;
  frPhoto.Align := TAlignLayout.Client;
  frPhoto.OnDidFinishTaking := ADidFinishEvent;
  frPhoto.OnClose := ACloseEvnet;
  frPhoto.ShowFrame;
end;

procedure TfrPhoto.btnClearClick(Sender: TObject);
begin
  DoDidFinishTaking(nil);
end;

procedure TfrPhoto.btnCancelClick(Sender: TObject);
begin
  CloseFrame;
end;

procedure TfrPhoto.DoDidFinishTaking(Image: TBitmap);
begin
  if Assigned(FOnDidFinishTaking) then
    FOnDidFinishTaking(Image);
  CloseFrame;
end;

procedure TfrPhoto.FloatAnimation1Finish(Sender: TObject);
begin
  if Assigned(frPhoto) then
    frPhoto.DisposeOf;
  frPhoto := nil;
end;

procedure TfrPhoto.ShowFrame;
  procedure SetButtonStyle(AButton: TCornerButton; AStyle: string; AHeight: Single);
  begin
    AButton.StyleLookup := AStyle;
    AButton.Height := AHeight;
  end;
begin
  Visible := True;
  BringToFront;

{$IFDEF ANDROID}
  ButtonLayout.Opacity := 0;
  ButtonLayout.Align := TAlignLayout.VertCenter;
  ButtonLayout.AnimateFloat('Opacity', 1, 0.2);

  SetButtonStyle(btnCamera, 'CornerButtonAndroid', 55);
  SetButtonStyle(btnAlbum, 'CornerButtonAndroid', 55);
  SetButtonStyle(btnClear, 'CornerButtonAndroid', 55);
  SetButtonStyle(btnCancel, 'CornerButtonAndroid', 55);

  // 안드로이드는 백버튼으로
  btnCancel.Visible := False;
  ButtonLayout.Height := btnCancel.Position.Y;
{$ELSEIF IOS}
  ButtonLayout.Align := TAlignLayout.Bottom;
  ButtonLayout.AnimateFloat('Position.Y', Self.Height - ButtonLayout.Height, 0.2);

  SetButtonStyle(btnCamera, 'CornerButtoniOS', 44);
  SetButtonStyle(btnAlbum, 'CornerButtoniOS', 44);
  SetButtonStyle(btnClear, 'CornerButtoniOS', 44);
  SetButtonStyle(btnCancel, 'CornerButtoniOS', 44);
{$ENDIF}
end;

// AnimateFloatWait 이후에 해제(DisposOf)하면 문제
//  (안드로이드에서 Rectangle1 클릭 시 이상종료)
procedure TfrPhoto.CloseFrame;
begin
  if Assigned(FOnClose) then
    FOnClose(Self);
{$IFDEF ANDROID}
//  ButtonLayout.AnimateFloatWait('Opacity', 0, 0.2);
  FloatAnimation1.PropertyName := 'Opacity';
  FloatAnimation1.StopValue := 0;
  FloatAnimation1.Start;
{$ELSEIF IOS}
//  ButtonLayout.AnimateFloatWait('Position.Y', Self.Height, 0.2);
  FloatAnimation1.PropertyName := 'Position.Y';
  FloatAnimation1.StopValue := 0;
  FloatAnimation1.Start;
{$ELSE}
  if Assigned(frPhoto) then
    frPhoto.DisposeOf;
  frPhoto := nil;
{$ENDIF}
end;

procedure TfrPhoto.BackgroundClick(Sender: TObject);
begin
  CloseFrame;
end;

procedure TfrPhoto.TakePhotoFromCameraAction1DidCancelTaking;
begin
  CloseFrame;
end;

procedure TfrPhoto.TakePhotoFromCameraAction1DidFinishTaking(Image: TBitmap);
begin
  DoDidFinishTaking(Image);
end;

procedure TfrPhoto.TakePhotoFromLibraryAction1DidCancelTaking;
begin
  CloseFrame;
end;

procedure TfrPhoto.TakePhotoFromLibraryAction1DidFinishTaking(Image: TBitmap);
begin
  DoDidFinishTaking(Image);
end;

end.
