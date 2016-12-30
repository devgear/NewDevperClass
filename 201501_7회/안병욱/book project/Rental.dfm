object RentalForm: TRentalForm
  Left = 0
  Top = 0
  Caption = #45824#50668' '#54924#50896
  ClientHeight = 470
  ClientWidth = 506
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 318
    Top = 403
    Width = 75
    Height = 25
    Caption = #54869'  '#51064
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 418
    Top = 403
    Width = 75
    Height = 25
    Caption = #52712'  '#49548
    TabOrder = 1
    OnClick = Button2Click
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 115
    Width = 485
    Height = 262
    Caption = #54924#50896' '#47785#47197
    TabOrder = 2
    object StringGrid1: TStringGrid
      Left = 2
      Top = 15
      Width = 481
      Height = 245
      Align = alClient
      ColCount = 1
      FixedCols = 0
      RowCount = 2
      TabOrder = 0
      ColWidths = (
        64)
      RowHeights = (
        24
        24)
    end
  end
  object Panel1: TPanel
    Left = 8
    Top = 52
    Width = 375
    Height = 41
    Color = clGrayText
    ParentBackground = False
    TabOrder = 3
    object Panel2: TPanel
      Left = 10
      Top = 8
      Width = 81
      Height = 23
      Caption = #44160#49353
      Color = clSilver
      ParentBackground = False
      TabOrder = 0
    end
    object Edit1: TEdit
      Left = 89
      Top = 8
      Width = 280
      Height = 21
      ImeName = 'Microsoft IME 2010'
      TabOrder = 1
      OnChange = Edit1Change
    end
  end
end
