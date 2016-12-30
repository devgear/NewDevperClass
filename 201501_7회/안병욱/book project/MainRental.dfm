object MainRentelForm: TMainRentelForm
  Left = 0
  Top = 0
  Caption = #45824#50668' '
  ClientHeight = 583
  ClientWidth = 867
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
  object Label1: TLabel
    Left = 40
    Top = 22
    Width = 36
    Height = 13
    Caption = #45824#50668#51068
  end
  object Label2: TLabel
    Left = 40
    Top = 70
    Width = 38
    Height = 13
    Caption = #54924#50896' ID'
  end
  object Label3: TLabel
    Left = 40
    Top = 128
    Width = 48
    Height = 13
    Caption = #46020#49436#48264#54840
  end
  object Label4: TLabel
    Left = 40
    Top = 168
    Width = 48
    Height = 13
    Caption = #45824#50668#51068#49688
  end
  object DBEdit1: TDBEdit
    Left = 112
    Top = 19
    Width = 185
    Height = 21
    DataField = 'RentalDay'
    DataSource = DataModule1.RentalSource
    Enabled = False
    ImeName = 'Microsoft IME 2010'
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 112
    Top = 67
    Width = 185
    Height = 21
    DataField = 'ID'
    DataSource = DataModule1.RentalSource
    ImeName = 'Microsoft IME 2010'
    TabOrder = 1
  end
  object Button2: TButton
    Left = 312
    Top = 123
    Width = 75
    Height = 25
    Caption = #45824#50668
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 18
    Top = 239
    Width = 75
    Height = 25
    Caption = #54869#51064
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 112
    Top = 239
    Width = 75
    Height = 25
    Caption = #45803#44592
    TabOrder = 4
    OnClick = Button4Click
  end
  object GroupBox1: TGroupBox
    Left = 440
    Top = 56
    Width = 411
    Height = 209
    Caption = #54924#50896
    TabOrder = 5
    object StringGrid1: TStringGrid
      Tag = 6
      Left = 2
      Top = 15
      Width = 407
      Height = 192
      Align = alClient
      ColCount = 6
      FixedCols = 0
      RowCount = 6
      TabOrder = 0
      OnMouseDown = StringGrid1MouseDown
      ColWidths = (
        64
        64
        64
        64
        64
        64)
    end
  end
  object Panel1: TPanel
    Left = 442
    Top = 9
    Width = 407
    Height = 41
    Color = clGrayText
    ParentBackground = False
    TabOrder = 6
    object Panel2: TPanel
      Left = 10
      Top = 8
      Width = 81
      Height = 23
      Caption = #54924#50896' '#44160#49353
      Color = clSilver
      ParentBackground = False
      TabOrder = 0
    end
    object Edit1: TEdit
      Left = 89
      Top = 10
      Width = 280
      Height = 21
      ImeName = 'Microsoft IME 2010'
      TabOrder = 1
    end
  end
  object Panel3: TPanel
    Left = 444
    Top = 271
    Width = 407
    Height = 41
    Color = clGrayText
    ParentBackground = False
    TabOrder = 7
    object Panel4: TPanel
      Left = 10
      Top = 8
      Width = 81
      Height = 23
      Caption = #46020#49436' '#44160#49353
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
  object GroupBox2: TGroupBox
    Left = 442
    Top = 318
    Width = 409
    Height = 247
    Caption = #46020#49436
    TabOrder = 8
    object StringGrid2: TStringGrid
      Tag = 10
      Left = 2
      Top = 15
      Width = 405
      Height = 230
      Align = alClient
      ColCount = 10
      FixedCols = 0
      RowCount = 9
      TabOrder = 0
      OnMouseDown = StringGrid2MouseDown
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
  object GroupBox3: TGroupBox
    Left = 16
    Top = 333
    Width = 409
    Height = 230
    Caption = #45824#50668#47785#47197
    TabOrder = 9
    object StringGrid3: TStringGrid
      Tag = 5
      Left = 2
      Top = 15
      Width = 405
      Height = 213
      Align = alClient
      FixedCols = 0
      RowCount = 10
      TabOrder = 0
      ColWidths = (
        64
        64
        64
        64
        64)
    end
  end
  object DBEdit3: TDBEdit
    Left = 112
    Top = 125
    Width = 185
    Height = 21
    DataField = 'BOOKNUM'
    DataSource = DataModule1.RentalBookDataSource
    ImeName = 'Microsoft IME 2010'
    TabOrder = 10
  end
  object DBComboBox1: TDBComboBox
    Left = 112
    Top = 165
    Width = 185
    Height = 21
    DataField = 'Period'
    DataSource = DataModule1.RentalBookDataSource
    ImeName = 'Microsoft IME 2010'
    Items.Strings = (
      '1'#48149'2'#51068
      '2'#48149'3'#51068
      '3'#48149'4'#51068
      '4'#48149'5'#51068
      '5'#48149'6'#51068
      '6'#48149'7'#51068
      '7'#48149'8'#51068
      '8'#48149'9'#51068
      '9'#48149'10'#51068)
    TabOrder = 11
  end
  object Panel5: TPanel
    Left = 18
    Top = 270
    Width = 407
    Height = 41
    Color = clGrayText
    ParentBackground = False
    TabOrder = 12
    object Panel6: TPanel
      Left = 10
      Top = 8
      Width = 81
      Height = 23
      Caption = #46020#49436' '#44160#49353
      Color = clSilver
      ParentBackground = False
      TabOrder = 0
    end
    object Edit3: TEdit
      Left = 89
      Top = 8
      Width = 280
      Height = 21
      ImeName = 'Microsoft IME 2010'
      TabOrder = 1
    end
  end
  object Button5: TButton
    Left = 312
    Top = 65
    Width = 75
    Height = 25
    Caption = #46321#47197
    TabOrder = 13
    OnClick = Button5Click
  end
  object Edit4: TEdit
    Left = 112
    Top = 98
    Width = 121
    Height = 21
    ImeName = 'Microsoft IME 2010'
    TabOrder = 14
    Visible = False
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = DataModule1.MemberDataSet
    ScopeMappings = <>
    Left = 728
    Top = 536
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 788
    Top = 533
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
    object LinkGridToDataSourceBindSourceDB3: TLinkGridToDataSource
      Category = 'Quick Bindings'
      DataSource = BindSourceDB3
      GridControl = StringGrid3
      Columns = <>
    end
  end
  object BindSourceDB2: TBindSourceDB
    DataSet = DataModule1.BookDataSet
    ScopeMappings = <>
    Left = 832
    Top = 544
  end
  object BindSourceDB3: TBindSourceDB
    DataSet = DataModule1.MemberjoinDataSet
    ScopeMappings = <>
    Left = 424
    Top = 296
  end
end
