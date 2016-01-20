object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #48120#45768' '#54532#47196#51229#53944
  ClientHeight = 421
  ClientWidth = 431
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 402
    Width = 431
    Height = 19
    Panels = <
      item
        Width = 10
      end
      item
        Width = 250
      end
      item
        Width = 90
      end>
    ExplicitWidth = 300
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 431
    Height = 29
    ButtonHeight = 21
    ButtonWidth = 51
    Caption = 'ToolBar1'
    ShowCaptions = True
    TabOrder = 1
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Caption = #54532#47196#51229#53944
      ImageIndex = 0
      OnClick = ToolButton1Click
    end
    object ToolButton2: TToolButton
      Left = 51
      Top = 0
      Caption = #49324#50896#51221#48372
      ImageIndex = 1
      OnClick = ToolButton2Click
    end
    object ToolButton3: TToolButton
      Left = 102
      Top = 0
      Caption = #48512#49436#51221#48372
      ImageIndex = 2
      OnClick = ToolButton3Click
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 29
    Width = 431
    Height = 373
    Align = alClient
    DoubleBuffered = False
    ParentDoubleBuffered = False
    TabOrder = 2
    ExplicitHeight = 372
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 392
    Top = 352
  end
end
