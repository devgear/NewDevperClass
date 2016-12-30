object ReturnForm: TReturnForm
  Left = 0
  Top = 0
  Caption = #48152#45225
  ClientHeight = 499
  ClientWidth = 603
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
    Left = 39
    Top = 91
    Width = 51
    Height = 13
    Caption = #46020#49436' '#48264#54840
  end
  object Label3: TLabel
    Left = 39
    Top = 43
    Width = 75
    Height = 13
    Caption = #45824#50668' '#46020#49436#48264#54840
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 224
    Width = 587
    Height = 267
    Caption = #45824#50668#47785#47197
    TabOrder = 0
    object StringGrid1: TStringGrid
      Left = 2
      Top = 15
      Width = 583
      Height = 250
      Align = alClient
      ColCount = 1
      FixedCols = 0
      RowCount = 2
      TabOrder = 0
      ExplicitLeft = 0
      ColWidths = (
        64)
    end
  end
  object Button1: TButton
    Left = 368
    Top = 43
    Width = 75
    Height = 47
    Caption = #48152#45225
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 494
    Top = 43
    Width = 75
    Height = 47
    Caption = #45803#44592
    TabOrder = 2
    OnClick = Button2Click
  end
  object Panel1: TPanel
    Left = 8
    Top = 161
    Width = 587
    Height = 41
    Color = clGrayText
    ParentBackground = False
    TabOrder = 3
    object Panel2: TPanel
      Left = 10
      Top = 8
      Width = 81
      Height = 23
      Caption = #50500#51060#46356' '#44160#49353
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
  object Edit2: TEdit
    Left = 128
    Top = 40
    Width = 153
    Height = 21
    ImeName = 'Microsoft IME 2010'
    TabOrder = 4
  end
  object Edit3: TEdit
    Left = 128
    Top = 88
    Width = 153
    Height = 21
    ImeName = 'Microsoft IME 2010'
    TabOrder = 5
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = DataModule1.MemberjoinDataSet
    ScopeMappings = <>
    Left = 296
    Top = 256
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 20
    Top = 5
    object LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      GridControl = StringGrid1
      Columns = <>
    end
  end
end
