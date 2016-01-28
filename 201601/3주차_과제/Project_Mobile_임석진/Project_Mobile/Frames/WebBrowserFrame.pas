unit WebBrowserFrame;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.WebBrowser;

type
  TfrWebBrowser = class(TFrame)
    ToolBar2: TToolBar;
    lblURL: TLabel;
    WebBrowser1: TWebBrowser;
    Button1: TButton;
    procedure btnDetailModifyClick(Sender: TObject);
    procedure WebBrowser1DidStartLoad(ASender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure ShowFrame;
  public
    { Public declarations }
    procedure CloseFrame;
    procedure OpenUrl(const AUrl: string);

    class procedure CreateAndShow(AOwner: TComponent; const AUrl: string);
  end;

var
  frWebBrowser: TfrWebBrowser;

implementation

{$R *.fmx}

{ TFrame1 }

procedure TfrWebBrowser.btnDetailModifyClick(Sender: TObject);
begin
  CloseFrame;
end;

procedure TfrWebBrowser.Button1Click(Sender: TObject);
begin
  CloseFrame;
end;

procedure TfrWebBrowser.CloseFrame;
begin
  if Assigned(frWebBrowser) then
    frWebBrowser.DisposeOf;
  frWebBrowser := nil;
end;

class procedure TfrWebBrowser.CreateAndShow(AOwner: TComponent; const AUrl: string);
begin
  if not Assigned(frWebBrowser) then
    frWebBrowser := TfrWebBrowser.Create(AOwner);

  if AOwner is TFmxObject then
    frWebBrowser.Parent := AOwner as TFmxObject
  else
    frWebBrowser.Parent := Application.MainForm as TFmxObject
  ;
  frWebBrowser.Align := TAlignLayout.Client;
  frWebBrowser.OpenUrl(AUrl);
  frWebBrowser.ShowFrame;
end;

procedure TfrWebBrowser.OpenUrl(const AUrl: string);
begin
  WebBrowser1.URL := AUrl;
  WebBrowser1.Navigate;
end;

procedure TfrWebBrowser.ShowFrame;
begin
  Visible := True;
  BringToFront;
end;

procedure TfrWebBrowser.WebBrowser1DidStartLoad(ASender: TObject);
begin
  lblURL.Text := WebBrowser1.URL;
end;

end.
