object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 512
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 784
    Height = 512
    Align = alClient
    TabOrder = 0
    ExplicitTop = 8
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 102
      Height = 16
      Caption = 'Flower of Songs'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Panel2: TPanel
      Left = 1
      Top = 42
      Width = 784
      Height = 433
      TabOrder = 0
      object GridPanel1: TGridPanel
        Left = 1
        Top = 1
        Width = 782
        Height = 431
        Align = alClient
        ColumnCollection = <
          item
            SizeStyle = ssAbsolute
            Value = 200.000000000000000000
          end
          item
            Value = 100.000000000000000000
          end>
        ControlCollection = <>
        RowCollection = <
          item
            Value = 50.000000000000000000
          end
          item
            Value = 50.000000000000000000
          end>
        TabOrder = 0
      end
    end
    object StatusBar1: TStatusBar
      Left = 1
      Top = 481
      Width = 782
      Height = 30
      Panels = <
        item
          Alignment = taCenter
          Width = 50
        end>
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 744
    Top = 8
  end
end
