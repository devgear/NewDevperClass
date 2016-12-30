object frSelect: TfrSelect
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'frSelect'
  ClientHeight = 600
  ClientWidth = 800
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 0
    Width = 143
    Height = 33
    Caption = #53580#49828#53944' '#47785#47197
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lvTest: TListView
    Left = 8
    Top = 70
    Width = 273
    Height = 499
    Columns = <>
    TabOrder = 0
  end
  object btTestStart: TButton
    Left = 700
    Top = 544
    Width = 75
    Height = 25
    Caption = 'btTestStart'
    TabOrder = 1
    OnClick = btTestStartClick
  end
end
