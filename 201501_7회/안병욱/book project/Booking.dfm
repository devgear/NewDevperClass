object BookingForm: TBookingForm
  Left = 0
  Top = 0
  Caption = #50696#50557
  ClientHeight = 590
  ClientWidth = 925
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 48
    Top = 48
    Width = 38
    Height = 13
    Caption = #54924#50896' ID'
  end
  object Label3: TLabel
    Left = 48
    Top = 88
    Width = 51
    Height = 13
    Caption = #46020#49436' '#48264#54840
  end
  object Label4: TLabel
    Left = 48
    Top = 128
    Width = 42
    Height = 13
    Caption = #46020' '#49436' '#47749
  end
  object Label5: TLabel
    Left = 48
    Top = 168
    Width = 48
    Height = 13
    Caption = #50696#50557#45216#51676
  end
  object DBEdit2: TDBEdit
    Left = 105
    Top = 45
    Width = 216
    Height = 21
    DataField = 'ID'
    DataSource = DataModule1.BookingSource
    ImeName = 'Microsoft IME 2010'
    TabOrder = 0
  end
  object DBEdit3: TDBEdit
    Left = 105
    Top = 85
    Width = 216
    Height = 21
    DataField = 'BookNum'
    DataSource = DataModule1.BookingSource
    ImeName = 'Microsoft IME 2010'
    TabOrder = 1
  end
  object DBEdit4: TDBEdit
    Left = 105
    Top = 125
    Width = 216
    Height = 21
    DataField = 'BookingName'
    DataSource = DataModule1.BookingSource
    ImeName = 'Microsoft IME 2010'
    TabOrder = 2
  end
  object DBEdit5: TDBEdit
    Left = 105
    Top = 165
    Width = 216
    Height = 21
    DataField = 'BookingDate'
    DataSource = DataModule1.BookingSource
    ImeName = 'Microsoft IME 2010'
    TabOrder = 3
  end
  object Button1: TButton
    Left = 360
    Top = 83
    Width = 75
    Height = 25
    Caption = #50696#50557#46321#47197
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 360
    Top = 163
    Width = 75
    Height = 25
    Caption = #50696#50557' '#52712#49548
    TabOrder = 5
    OnClick = Button2Click
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 315
    Width = 453
    Height = 262
    Caption = #46020#49436' '#47785#47197
    TabOrder = 6
    object StringGrid1: TStringGrid
      Tag = 10
      Left = 2
      Top = 15
      Width = 449
      Height = 245
      Align = alClient
      ColCount = 10
      FixedCols = 0
      RowCount = 9
      TabOrder = 0
      ColWidths = (
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64)
    end
  end
  object Panel1: TPanel
    Left = 8
    Top = 267
    Width = 375
    Height = 41
    Color = clGrayText
    ParentBackground = False
    TabOrder = 7
    object Panel2: TPanel
      Left = 10
      Top = 8
      Width = 81
      Height = 23
      Caption = #46020#49436' '#44160#49353
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
    end
  end
  object GroupBox2: TGroupBox
    Left = 467
    Top = 315
    Width = 453
    Height = 262
    Caption = #50696#50557' '#47785#47197
    TabOrder = 8
    object StringGrid2: TStringGrid
      Tag = 5
      Left = 2
      Top = 15
      Width = 449
      Height = 245
      Align = alClient
      FixedCols = 0
      RowCount = 2
      TabOrder = 0
      ColWidths = (
        64
        64
        64
        64
        64)
    end
  end
  object Panel3: TPanel
    Left = 469
    Top = 264
    Width = 375
    Height = 41
    Color = clGrayText
    ParentBackground = False
    TabOrder = 9
    object Panel4: TPanel
      Left = 10
      Top = 8
      Width = 81
      Height = 23
      Caption = #50696#50557' '#44160#49353
      Color = clSilver
      ParentBackground = False
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 89
      Top = 8
      Width = 280
      Height = 21
      ImeName = 'Microsoft IME 2010'
      TabOrder = 1
    end
  end
  object Button3: TButton
    Left = 360
    Top = 43
    Width = 75
    Height = 25
    Caption = #50696#50557
    TabOrder = 10
    OnClick = Button3Click
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = DataModule1.BookDataSet
    ScopeMappings = <>
    Left = 568
    Top = 392
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
    object LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      GridControl = StringGrid2
      Columns = <>
    end
  end
  object BindSourceDB2: TBindSourceDB
    DataSet = DataModule1.BookingDataSet
    ScopeMappings = <>
    Left = 504
    Top = 408
  end
end
