object saleform: Tsaleform
  Left = 0
  Top = 0
  Caption = #54032#47588#54788#54889
  ClientHeight = 400
  ClientWidth = 621
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 434
    Top = 84
    Width = 51
    Height = 13
    Caption = #50900#48324' '#44160#49353
  end
  object Label2: TLabel
    Left = 390
    Top = 379
    Width = 63
    Height = 13
    Caption = #52509' '#54032#47588#44552#50529
  end
  object Label3: TLabel
    Left = 570
    Top = 379
    Width = 12
    Height = 13
    Caption = #50896
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 621
    Height = 73
    Align = alTop
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 0
    object Panel1: TPanel
      Left = 224
      Top = 14
      Width = 177
      Height = 41
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Caption = #52509' '#54032#47588#54788#54889
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = #46027#50880#52404
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 544
      Top = 33
      Width = 57
      Height = 30
      Caption = #45803' '#44592
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 106
    Width = 621
    Height = 255
    DataSource = dm.salequerysource
    ImeName = 'Microsoft Office IME 2007'
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object monthComboBox: TComboBox
    Left = 496
    Top = 79
    Width = 65
    Height = 21
    ImeName = 'Microsoft Office IME 2007'
    ItemIndex = 0
    TabOrder = 2
    Text = '1'#50900
    OnChange = monthComboBoxChange
    Items.Strings = (
      '1'#50900
      '2'#50900
      '3'#50900
      '4'#50900
      '5'#50900
      '6'#50900
      '7'#50900
      '8'#50900
      '9'#50900
      '10'#50900
      '11'#50900
      '12'#50900)
  end
  object Edit1: TEdit
    Left = 459
    Top = 371
    Width = 105
    Height = 21
    Alignment = taRightJustify
    ImeName = 'Microsoft Office IME 2007'
    TabOrder = 3
  end
  object sumquery: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFixedChar
        Name = 's_price'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select sum("s_price") as total from "sales"'
      'where "s_price" like :"s_price"'
      ' ')
    SQLConnection = dm.SQLConnection1
    Left = 680
    Top = 328
  end
  object totalpricequery: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dm.SQLConnection1
    Left = 40
    Top = 16
  end
end
