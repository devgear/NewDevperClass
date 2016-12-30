unit uReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons, jpeg, StdCtrls;

type
  TfmReport = class(TForm)
    Image_report: TImage;
    Panel1: TPanel;
    RadioGroup1: TRadioGroup;
    procedure Panel1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Image_reportMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image_reportMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmReport: TfmReport;
    pPrePOS  : TPoint;
implementation

{$R *.dfm}


procedure TfmReport.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := Cafree;
end;

procedure TfmReport.Image_reportMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin

  if (Sender is TImage) then
  begin
    // 마우스 왼쪽 버튼을 이용하여 그림  [ssLeft] 집합형등 여러 키 있음
    if Shift = [ssLeft] then
    begin
      (Sender as TImage).Picture.Bitmap.Canvas.Pen.Width := 2;
      if RadioGroup1.ItemIndex = 0 then
      (Sender as TImage).Picture.Bitmap.Canvas.Pen.Color := Clred
      else (Sender as TImage).Picture.Bitmap.Canvas.Pen.Color := clBlue;
      //(Sender as TImage).Picture.Bitmap.Canvas.LineTo(x, y);
    end;
  end;
end;

procedure TfmReport.Image_reportMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  if (Sender is TImage) then
  begin
     //마우스 버튼이 클릭되어졌을때만 그림
     if Shift = [ssLeft] then
     begin
        (Sender as TImage).Canvas.MoveTo(pPrePOS.X, pPrePOS.Y);
        (Sender as TImage).Canvas.LineTo(X, Y);
        pPrePOS := Point(x, y);
     end;
  end;
end;

procedure TfmReport.Panel1Click(Sender: TObject);
begin
  Close;
end;


end.
