object frResultList: TfrResultList
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'frResultList'
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
    Left = 0
    Top = 0
    Width = 170
    Height = 33
    Caption = #49884#54744#44208#44284' '#47785#47197
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object ListView1: TListView
    Left = 8
    Top = 70
    Width = 177
    Height = 249
    Columns = <>
    TabOrder = 0
  end
  object btResultView: TButton
    Left = 8
    Top = 39
    Width = 75
    Height = 25
    Caption = 'btResultView'
    TabOrder = 1
    OnClick = btResultViewClick
  end
end
