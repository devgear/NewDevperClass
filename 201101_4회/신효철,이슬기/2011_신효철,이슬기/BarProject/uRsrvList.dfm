object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #50696#50557#47532#49828#53944
  ClientHeight = 469
  ClientWidth = 626
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 48
    Top = 70
    Width = 52
    Height = 17
    Caption = #50689#50629#51068#51088
    Font.Charset = HANGEUL_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 120
    Top = 66
    Width = 146
    Height = 21
    Caption = '2011-01-25  '#54868#50836#51068
    Font.Charset = HANGEUL_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = []
    ParentFont = False
  end
  inline CounterFrame1: TCounterFrame
    Left = 0
    Top = 379
    Width = 626
    Height = 90
    Align = alBottom
    Color = cl3DLight
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    ExplicitTop = 368
    ExplicitWidth = 626
    ExplicitHeight = 90
  end
  inline CounterFrame2: TCounterFrame
    Left = 0
    Top = 0
    Width = 626
    Height = 60
    Align = alTop
    Color = cl3DLight
    ParentBackground = False
    ParentColor = False
    TabOrder = 1
    ExplicitWidth = 626
    ExplicitHeight = 60
  end
  object Panel21: TPanel
    Left = 48
    Top = 395
    Width = 185
    Height = 60
    Caption = #50696#50557' '#49325#51228
    TabOrder = 2
  end
  object Panel2: TPanel
    Left = 392
    Top = 395
    Width = 185
    Height = 60
    Caption = #45803#44592
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 48
    Top = 93
    Width = 529
    Height = 268
    ImeName = 'Microsoft Office IME 2007'
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
end
