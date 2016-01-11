unit unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TCALC = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel5: TPanel;
    BT0: TButton;
    BT1: TButton;
    BT2: TButton;
    BT3: TButton;
    BT4: TButton;
    BT5: TButton;
    BT6: TButton;
    BT7: TButton;
    BT8: TButton;
    BT9: TButton;
    BT_빼기: TButton;
    BT_곱하기: TButton;
    BT_나누기: TButton;
    BT_더하기: TButton;
    BT_초기화: TButton;
    Edit_화면: TEdit;
    BT_RESULE: TButton;
    procedure BT_초기화Click(Sender: TObject);
    procedure BT0Click(Sender: TObject);
    procedure BT1Click(Sender: TObject);
    procedure BT2Click(Sender: TObject);
    procedure BT3Click(Sender: TObject);
    procedure BT4Click(Sender: TObject);
    procedure BT5Click(Sender: TObject);
    procedure BT6Click(Sender: TObject);
    procedure BT7Click(Sender: TObject);
    procedure BT8Click(Sender: TObject);
    procedure BT9Click(Sender: TObject);
    procedure BT_RESULEClick(Sender: TObject);
    procedure BT_더하기Click(Sender: TObject);
    procedure BT_빼기Click(Sender: TObject);
    procedure BT_곱하기Click(Sender: TObject);
    procedure BT_나누기Click(Sender: TObject);







  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CALC: TCALC;
  I , RESULT , TOTAL ,ADD, DIVI ,MUL , SUB : REAL;
  CHECK : INTEGER ;

implementation

{$R *.dfm}




procedure TCALC.BT0Click(Sender: TObject);
begin
 i := 0;
    result := 0;

    i := StrToFloat(Edit_화면.Text);

    if( i <> 0) then
    begin
    result := i*10
    end
    else if( i = 0) then
    begin
    result := 0;
    end;

    Edit_화면.Text := FloatToStr(result);
end;

procedure TCALC.BT1Click(Sender: TObject);
begin
    i := 0;
    result := 0;

   i := StrToFloat(Edit_화면.Text);

    if( i <> 0) then
    begin
    result := i*10 + STRTOFLOAT(BT1.Caption) ;
    end
    else if( i = 0) then
    begin
    result :=STRTOFLOAT(BT1.Caption);
    end;

   Edit_화면.Text := FloatToStr(result);

end;






procedure TCALC.BT2Click(Sender: TObject);
begin
 i := 0;
    result := 0;

   i := StrToFloat(Edit_화면.Text);

    if( i <> 0) then
    begin
    result := i*10 +  STRTOFLOAT(BT2.Caption);
    end
    else if( i = 0) then
    begin
    result := STRTOFLOAT(BT2.Caption);
    end;

   Edit_화면.Text := FloatToStr(result);
end;

procedure TCALC.BT3Click(Sender: TObject);
begin
 i := 0;
    result := 0;

   i := StrToFloat(Edit_화면.Text);

    if( i <> 0) then
    begin
    result := i*10 + STRTOFLOAT(BT3.Caption);
    end
    else if( i = 0) then
    begin
    result := STRTOFLOAT(BT3.Caption);
    end;

   Edit_화면.Text := FloatToStr(result);
end;

procedure TCALC.BT4Click(Sender: TObject);
begin
 i := 0;
    result := 0;

   i := StrToFloat(Edit_화면.Text);

    if( i <> 0) then
    begin
    result := i*10 +STRTOFLOAT(BT4.Caption);
    end
    else if( i = 0) then
    begin
    result := STRTOFLOAT(BT4.Caption);
    end;

   Edit_화면.Text := FloatToStr(result);
end;

procedure TCALC.BT5Click(Sender: TObject);
begin
 i := 0;
    result := 0;

   i := StrToFloat(Edit_화면.Text);

    if( i <> 0) then
    begin
    result := i*10 + STRTOFLOAT(BT5.Caption);
    end
    else if( i = 0) then
    begin
    result := STRTOFLOAT(BT5.Caption);
    end;

   Edit_화면.Text := FloatToStr(result);
end;

procedure TCALC.BT6Click(Sender: TObject);
begin
    i := 0;
    result := 0;

   i := StrToFloat(Edit_화면.Text);

    if( i <> 0) then
    begin
    result := i*10 + STRTOFLOAT(BT6.Caption);
    end
    else if( i = 0) then
    begin
    result := STRTOFLOAT(BT6.Caption);
    end;

   Edit_화면.Text := FloatToStr(result);
end;

procedure TCALC.BT7Click(Sender: TObject);
begin
 i := 0;
    result := 0;

   i := StrToFloat(Edit_화면.Text);

    if( i <> 0) then
    begin
    result := i*10 + STRTOFLOAT(BT7.Caption);
    end
    else if( i = 0) then
    begin
    result := STRTOFLOAT(BT7.Caption);
    end;

   Edit_화면.Text := FloatToStr(result);
end;

procedure TCALC.BT8Click(Sender: TObject);
begin
 i := 0;
    result := 0;

   i := StrToFloat(Edit_화면.Text);

    if( i <> 0) then
    begin
    result := i*10 + STRTOFLOAT(BT8.Caption);
    end
    else if( i = 0) then
    begin
    result := STRTOFLOAT(BT8.Caption);
    end;

   Edit_화면.Text := FloatToStr(result);
end;

procedure TCALC.BT9Click(Sender: TObject);
begin
 i := 0;
    result := 0;

   i := StrToFloat(Edit_화면.Text);

    if( i <> 0) then
    begin
    result := i*10 + STRTOFLOAT(BT9.Caption);
    end
    else if( i = 0) then
    begin
    result := STRTOFLOAT(BT9.Caption);
    end;

   Edit_화면.Text := FloatToStr(result);
end;

procedure TCALC.BT_RESULEClick(Sender: TObject);
begin
  case check of
        1 : begin
            result := add + result;
            end;
        2 : begin
            result := sub - result;
            end;
        3 : begin
            result := mul * result;
            end;
        4 : begin
            result := divi / result;
            end;
    end;

    Edit_화면.Text := floattostr(result);
end;


procedure TCALC.BT_곱하기Click(Sender: TObject);
begin
     check := 3;
     mul := result;
     Edit_화면.Text := '0';
end;

procedure TCALC.BT_나누기Click(Sender: TObject);
begin
    check := 4;
    divi := result;
    Edit_화면.Text := '0';
end;

procedure TCALC.BT_더하기Click(Sender: TObject);
  var
    addfirst, addsecond : real;

begin

    {addfirst := 0;
    addsecond := 0;
    sum := 0;

    edtResult.text := '0';

    //addfirst := strtofloat(edtResult.text);

    addfirst := result;
    addsecond := addfirst + addsecond;

    total := addsecond;


    //addsecond := result;

    //result := sum;

    //edtResult.text := FloatToStr(result);
    //edtResult.text := '0';
    }
    check := 1;
    add := result;
   Edit_화면.Text:= '0';
    //showmessage(floattostr(result));

end;

procedure TCALC.BT_빼기Click(Sender: TObject);
begin
    check := 2;
    sub := result;
    Edit_화면.Text := '0';
end;

procedure TCALC.BT_초기화Click(Sender: TObject);
begin
       Edit_화면.Text :='0';
end;



end.
