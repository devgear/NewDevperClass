unit usearch;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls;

type
  Tsearchform = class(TForm)
    Panel1: TPanel;
    namelabel: TLabel;
    telLabel: TLabel;
    suibLabel: TLabel;
    boLabel: TLabel;
    indateLabel: TLabel;
    outdateLabel9: TLabel;
    nameEdit: TEdit;
    telEdit: TEdit;
    suibEdit: TEdit;
    boEdit: TEdit;
    inDateTimePicker: TDateTimePicker;
    outDateTimePicker: TDateTimePicker;
    searchroomedit: TEdit;
    searchroomlabel: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  searchform: Tsearchform;

implementation

{$R *.dfm}

end.
