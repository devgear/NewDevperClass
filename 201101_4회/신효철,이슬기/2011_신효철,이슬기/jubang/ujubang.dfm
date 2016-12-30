object jubang: Tjubang
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = #51452#48169#54532#47196#44536#47016
  ClientHeight = 719
  ClientWidth = 1018
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1024
    Height = 768
    TabOrder = 0
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 1021
      Height = 585
      TabOrder = 0
      object sgOrderList: TStringGrid
        Left = 8
        Top = 16
        Width = 993
        Height = 553
        ColCount = 3
        FixedCols = 0
        RowCount = 15
        FixedRows = 0
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
        TabOrder = 0
        OnDrawCell = sgOrderListDrawCell
        ColWidths = (
          228
          564
          165)
        RowHeights = (
          46
          47
          48
          50
          48
          49
          49
          49
          49
          49
          49
          58
          24
          24
          24)
      end
    end
    object btnCompleted: TButton
      Left = 26
      Top = 599
      Width = 311
      Height = 98
      Caption = #50756'     '#47308
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btnCompletedClick
    end
    object btnStock: TButton
      Left = 357
      Top = 599
      Width = 311
      Height = 98
      Caption = #51116#44256#50630#51020
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btnStockClick
    end
    object btnClose: TButton
      Left = 688
      Top = 599
      Width = 313
      Height = 98
      Caption = #51333'     '#47308
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = btnCloseClick
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 496
    Top = 32
  end
end
