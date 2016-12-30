object frProgress: TfrProgress
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frProgress'
  ClientHeight = 600
  ClientWidth = 800
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 37
    Width = 235
    Height = 13
    Caption = #51068#51088#48324' '#51216#49688#52628#51060' '#47561#45824' '#44536#47000#54532#44032' '#46308#50612#44040' '#44163#51076'.'
  end
  object Label2: TLabel
    Left = 0
    Top = 0
    Width = 108
    Height = 33
    Caption = #51216#49688#52628#51060
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object btPrint: TButton
    Left = 480
    Top = 32
    Width = 75
    Height = 25
    Caption = #51064#49604
    TabOrder = 0
  end
  object btProgressClose: TButton
    Left = 574
    Top = 32
    Width = 75
    Height = 25
    Caption = #51333#47308
    TabOrder = 1
    OnClick = btProgressCloseClick
  end
  object Chart1: TChart
    Left = 40
    Top = 104
    Width = 697
    Height = 465
    Title.Text.Strings = (
      'TChart')
    TabOrder = 2
  end
end
