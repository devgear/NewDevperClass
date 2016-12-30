object RentalBookForm: TRentalBookForm
  Left = 0
  Top = 0
  Caption = #45824#50668' '#46020#49436
  ClientHeight = 329
  ClientWidth = 833
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 28
    Top = 90
    Width = 51
    Height = 13
    Caption = #45824#50668' '#48264#54840
  end
  object Label5: TLabel
    Left = 28
    Top = 128
    Width = 51
    Height = 13
    Caption = #46020#49436' '#48264#54840
  end
  object Label6: TLabel
    Left = 28
    Top = 168
    Width = 51
    Height = 13
    Caption = #45824#50668' '#44592#44036
  end
  object DBEdit2: TDBEdit
    Left = 112
    Top = 87
    Width = 121
    Height = 21
    DataField = 'RentalNum'
    DataSource = DataModule1.RentalBookDataSource
    Enabled = False
    ImeName = 'Microsoft IME 2010'
    TabOrder = 0
  end
  object DBEdit3: TDBEdit
    Left = 112
    Top = 125
    Width = 121
    Height = 21
    DataField = 'BookNum'
    DataSource = DataModule1.RentalBookDataSource
    ImeName = 'Microsoft IME 2010'
    TabOrder = 1
  end
  object GroupBox1: TGroupBox
    Left = 282
    Top = 90
    Width = 535
    Height = 209
    Caption = #46020#49436
    TabOrder = 2
    object StringGrid1: TStringGrid
      Left = 2
      Top = 15
      Width = 531
      Height = 192
      Align = alClient
      ColCount = 1
      Enabled = False
      FixedCols = 0
      RowCount = 2
      TabOrder = 0
      ColWidths = (
        64)
    end
  end
  object Panel1: TPanel
    Left = 284
    Top = 43
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
    end
  end
  object Button1: TButton
    Left = 32
    Top = 272
    Width = 75
    Height = 25
    Caption = #45824#50668
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 158
    Top = 272
    Width = 75
    Height = 25
    Caption = #45803' '#44592
    TabOrder = 5
    OnClick = Button2Click
  end
  object DBComboBox1: TDBComboBox
    Left = 112
    Top = 165
    Width = 121
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
    TabOrder = 6
  end
end
