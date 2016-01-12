
                  unit UClacForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, StrUtils, System.Actions,
  Vcl.ActnList, Vcl.ExtCtrls;

type
  Tfmcalc = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button17: TButton;
    Button18: TButton;
    Edit1: TEdit;
    Button19: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmcalc: Tfmcalc;

  //var sum:array of integer;








implementation

 var
  num1, num2, Num3, result:integer;
  mode:byte;
{$R *.dfm}

procedure Tfmcalc.Button10Click(Sender: TObject);
begin
       Num1 := strtoint(edit1.Text);

 edit1.text := '0';
 mode :=2;

end;

procedure Tfmcalc.Button11Click(Sender: TObject); //  + 버튼
begin
  num1 := strtoint(edit1.Text);

 edit1.text := '0';

 mode:= 1;

end;

procedure Tfmcalc.Button12Click(Sender: TObject);  // * 버튼
begin
 num1 := strtoint(edit1.Text);

 edit1.text := '0';

 mode:= 3;
end;

procedure Tfmcalc.Button13Click(Sender: TObject); // "/" 버튼
begin
  num1 := strtoint(edit1.Text);


 edit1.text := '0';

 mode:= 4;
end;

procedure Tfmcalc.Button14Click(Sender: TObject);
begin

 case mode of

    1: result:= num1+num2;
    2: result:= num1-num2;
    3: result:= num1*num2;
    //4: result:= num1/num2;
    end;
    num2 := strtoint(edit1.text);



    edit1.Text := inttostr(result);




end;

procedure Tfmcalc.Button15Click(Sender: TObject);
begin
       edit1.Text := '0' ;

end;

procedure Tfmcalc.Button1Click(Sender: TObject);




begin
  if edit1.Text = '0' then edit1.Text := tbutton(sender).caption

    else
       edit1.Text := edit1.Text + tbutton(sender).Caption



  end;

       initialization
       begin

         //setlength(Sum,8);



       end;
end.
