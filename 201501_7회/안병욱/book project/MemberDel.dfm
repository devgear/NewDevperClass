object MemberDelForm: TMemberDelForm
  Left = 0
  Top = 0
  Caption = #54924#50896#53448#53748
  ClientHeight = 417
  ClientWidth = 527
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
    Left = 12
    Top = 59
    Width = 38
    Height = 13
    Caption = #54924#50896' ID'
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 180
    Width = 511
    Height = 231
    Caption = #54924#50896
    TabOrder = 0
    object StringGrid1: TStringGrid
      Tag = 6
      Left = 2
      Top = 15
      Width = 507
      Height = 214
      Align = alClient
      ColCount = 6
      FixedCols = 0
      RowCount = 6
      TabOrder = 0
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
    Left = 10
    Top = 133
    Width = 332
    Height = 41
    Color = clGrayText
    ParentBackground = False
    TabOrder = 1
    object Panel2: TPanel
      Left = 6
      Top = 8
      Width = 87
      Height = 25
      Caption = #54924#50896' '#44160#49353
      Color = clSilver
      ParentBackground = False
      TabOrder = 0
    end
    object Edit1: TEdit
      Left = 93
      Top = 9
      Width = 232
      Height = 21
      ImeName = 'Microsoft IME 2010'
      TabOrder = 1
      OnChange = Edit1Change
    end
  end
  object DBEdit1: TDBEdit
    Left = 56
    Top = 56
    Width = 156
    Height = 21
    DataField = 'ID'
    DataSource = DataModule1.MemberSource
    ImeName = 'Microsoft IME 2010'
    TabOrder = 2
  end
  object Button1: TButton
    Left = 218
    Top = 54
    Width = 66
    Height = 25
    Caption = #53448#53748
    TabOrder = 3
    OnClick = Button1Click
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = DataModule1.MemberDataSet
    ScopeMappings = <>
    Left = 256
    Top = 216
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
