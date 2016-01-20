unit UCalcForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList, Vcl.StdActns,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, Vcl.ToolWin, Vcl.ActnCtrls,
  Vcl.ActnMenus, Vcl.ComCtrls;

type
  TFrmCalc = class(TForm)
    ActionMainMenuBar1: TActionMainMenuBar;
    ActionManager1: TActionManager;
    FileExit1: TFileExit;
    ImageList1: TImageList;
    Timer1: TTimer;
    Panel1: TPanel;
    Num7: TButton;
    Num8: TButton;
    Num9: TButton;
    CDivision: TButton;
    CBackspace: TButton;
    Num4: TButton;
    Num5: TButton;
    Num6: TButton;
    CMultiplication: TButton;
    CClear: TButton;
    Num1: TButton;
    Num2: TButton;
    Num3: TButton;
    CResult: TButton;
    Num0: TButton;
    Cdot: TButton;
    CPlus: TButton;
    StatusBar1: TStatusBar;
    CMinus: TButton;
    Edit1: TEdit;
    procedure Timer1Timer(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure CClearClick(Sender: TObject);
    procedure Num0Click(Sender: TObject);
    procedure CBackspaceClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CdotClick(Sender: TObject);
    procedure CPlusClick(Sender: TObject);
    procedure CResultClick(Sender: TObject);
    procedure CDivisionClick(Sender: TObject);
    procedure CMinusClick(Sender: TObject);
    procedure CMultiplicationClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCalc: TFrmCalc;

implementation

{$R *.dfm}
uses USplash;

var
 NumberCalc : array [0..9] of integer;
 Dot : Boolean;
 Result : Extended;
 FourArithmetical : integer;
 Bol, Btre : Boolean;


procedure TfrmCalc.Action1Execute(Sender: TObject);
begin
  SplashForm.ShowModal;
end;


procedure TfrmCalc.FormShow(Sender: TObject);
begin
  Dot := True;
  Bol := False;
  Btre := True;
  Result := 0;
  FourArithmetical := 1;
end;

procedure TfrmCalc.Num0Click(Sender: TObject);
begin
  if (Sender is Tbutton) then
    begin
      if Btre then
        begin
          Edit1.Text := Edit1.Text+(Sender as TButton).caption;
          Bol := True;
        end;
    end;
end;

procedure TfrmCalc.CBackspaceClick(Sender: TObject);
 begin
  Edit1.Text := LeftStr(Edit1.Text, Length(Edit1.Text)-1);


 end;


procedure TfrmCalc.CClearClick(Sender: TObject);
 begin
  Edit1.Clear;
  Edit1.Text := '';
  Edit1.Text:= '';
  Result := 0;
  FourArithmetical := 1;
  Btre := True;
 end;


procedure TfrmCalc.CDivisionClick(Sender: TObject);
begin
  if Bol then
   begin
     case FourArithmetical of
      1 : Result := Result + StrToFloat(Edit1.Text);
      2 : Result := Result - StrToFloat(Edit1.Text);
      3 : Result := Result * StrToFloat(Edit1.Text);
      4 : Result := Result / StrToFloat(Edit1.Text);
     end;
    Edit1.Text := Edit1.Text + Edit1.Text + '/';
    Edit1.Text := '';
    FourArithmetical := 4;
    Bol := False;
    Btre := True;
   end;
end;

procedure TfrmCalc.CdotClick(Sender: TObject);
begin
  if Dot then
  begin
  Dot := False;
  Edit1.Text := Edit1.Text+'.';
  end;
end;


procedure TfrmCalc.CMinusClick(Sender: TObject);
begin
  if Bol then
   begin
     case FourArithmetical of
      1 : Result := Result + StrToFloat(Edit1.Text);
      2 : Result := Result - StrToFloat(Edit1.Text);
      3 : Result := Result * StrToFloat(Edit1.Text);
      4 : Result := Result / StrToFloat(Edit1.Text);
     end;
    Edit1.Text := Edit1.Text + Edit1.Text + '-';
    Edit1.Text := '';
    FourArithmetical := 2;
    Bol := False;
    Btre := True;
   end;
end;

procedure TfrmCalc.CMultiplicationClick(Sender: TObject);
begin
  if Bol then
  begin
  case FourArithmetical of
  1 : Result := Result + StrToFloat(Edit1.Text);
  2 : Result := Result - StrToFloat(Edit1.Text);
  3 : Result := Result * StrToFloat(Edit1.Text);
  4 : Result := Result / StrToFloat(Edit1.Text);
  end;
  Edit1.Text := Edit1.Text + Edit1.Text + '*';
  Edit1.Text := '';
  FourArithmetical := 3;
  Bol := False;
  Btre := True;
  end;
end;

procedure TfrmCalc.CPlusClick(Sender: TObject);
begin
  if Bol then
   begin
     case FourArithmetical of
      1 : Result := Result + StrToFloat(Edit1.Text);
      2 : Result := Result - StrToFloat(Edit1.Text);
      3 : Result := Result * StrToFloat(Edit1.Text);
      4 : Result := Result / StrToFloat(Edit1.Text);
     end;
    Edit1.Text := Edit1.Text + Edit1.Text + '+';
    Edit1.Text := '';
    FourArithmetical := 1;
    Bol := False;
    Btre := True;
   end;
end;


procedure TfrmCalc.CResultClick(Sender: TObject);
begin
  if Bol then
  begin
  case FourArithmetical of
  1 : Result := Result + StrToFloat(Edit1.Text);
  2 : Result := Result - StrToFloat(Edit1.Text);
  3 : Result := Result * StrToFloat(Edit1.Text);
  4 : Result := Result / StrToFloat(Edit1.Text);
  end;
  Edit1.Text := FloatToStr(Result);
  Edit1.Text := '';
  Result := 0;
  Bol := True;
  Btre := False;
  FourArithmetical := 1;
  end;
end;

procedure TfrmCalc.Timer1Timer(Sender: TObject);
begin
 Statusbar1.Panels[1].Text := FormatDateTime('yyyy-mm-dd dddd ampm hh:mm:ss', now);
end;

Initialization

begin
  NumberCalc[0] := 0;
  NumberCalc[1] := 1;
  NumberCalc[2] := 2;
  NumberCalc[3] := 3;
  NumberCalc[4] := 4;
  NumberCalc[5] := 5;
  NumberCalc[6] := 6;
  NumberCalc[7] := 7;
  NumberCalc[8] := 8;
  NumberCalc[9] := 9;

end;

Finalization

end.
