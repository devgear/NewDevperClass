{ $HDR$}
{**********************************************************************}
{ Unit archived using Team Coherence                                   }
{ Team Coherence is Copyright 2002 by Quality Software Components      }
{                                                                      }
{ For further information / comments, visit our WEB site at            }
{ http://www.TeamCoherence.com                                         }
{**********************************************************************}
{}
{ $Log:  29588: Main.pas 
{
{   Rev 1.1    2003.11.29 10:35:18 AM  czhower
{ Update
}
{
{   Rev 1.0    2003.11.28 4:15:52 PM  czhower
{ Initial checkin
}
{
{   Rev 1.2    2003.06.15 6:57:46 PM  czhower
{ Update
}
{
{   Rev 1.1    2003.06.15 12:48:36 PM  czhower
{ Changes to methods
}
{
{   Rev 1.0    2003.06.15 12:10:46 PM  czhower
{ Initial checkin
}
unit MailForm;

interface

uses
  Graphics, Controls, Forms, Dialogs, StdCtrls, ExtCtrls,
  SysUtils, Classes, IdMessage, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase,
  IdMessageClient, IdSMTPBase, IdSMTP;

type
  TMail_Form = class(TForm)
    memoMsg: TMemo;
    Panel1: TPanel;
    Label1: TLabel;
    editFrom: TEdit;
    Label2: TLabel;
    editTo: TEdit;
    Label3: TLabel;
    editSubject: TEdit;
    Label4: TLabel;
    editSMTPServer: TEdit;
    butnSendMail: TButton;
    lboxStatus: TListBox;
    smtpSendMail: TIdSMTP;
    mesgMessage: TIdMessage;
    procedure butnSendMailClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure smtpSendMailStatus(ASender: TObject;
      const AStatus: TIdStatus; const AStatusText: String);
  private
  public
    procedure Status(AMsg: string);
  end;

var
  Mail_Form: TMail_Form;

implementation
{$R *.dfm}

uses
  INIFiles;

procedure TMail_Form.butnSendMailClick(Sender: TObject);
begin
  butnSendMail.Enabled := False; try
    with mesgMessage do begin
      Clear;
      From.Text := Trim(editFrom.Text);
      Recipients.Add.Text := Trim(editTo.Text);
      Subject := Trim(editSubject.Text);
      Body.Assign(memoMsg.Lines);
    end;
    with smtpSendMail do begin
      Host := Trim(editSMTPServer.Text);
      Connect; try
        Send(mesgMessage);
      finally Disconnect; end;
    end;
    Status('Completed');
  finally butnSendMail.Enabled := True; end;
end;

procedure TMail_Form.Status(AMsg: string);
begin
  lboxStatus.ItemIndex := lboxStatus.Items.Add(AMsg);
  // Allow the listbox to repaint
  Application.ProcessMessages;
  Application.ProcessMessages;
  Application.ProcessMessages;
end;

procedure TMail_Form.FormCreate(Sender: TObject);
var
  LINIFile: string;
begin
  // This routine can be ignored, it is not a functional part of the demo.
  //
  // This is used to load default values during presentations at conferences
  // so attendees do not have to wait for values to be entered each time.
  LINIFile := 'c:\SMTP.ini';
  if FileExists(LINIFile) then begin
    with TINIFile.Create(LINIFile) do try
      editFrom.Text := ReadString('Main', 'From', '');
      editTo.Text := ReadString('Main', 'To', '');
      editSubject.Text := ReadString('Main', 'Subject', '');
      editSMTPServer.Text := ReadString('Main', 'SMTP Server', '');
      memoMsg.Lines.Text := ReadString('Main', 'Message', '');
    finally Free; end;
  end;
end;

procedure TMail_Form.smtpSendMailStatus(ASender: TObject;
  const AStatus: TIdStatus; const AStatusText: String);
begin
  Status(AStatusText);
end;

end.

