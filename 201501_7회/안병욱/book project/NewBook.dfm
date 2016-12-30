object NewBookForm: TNewBookForm
  Left = 0
  Top = 0
  Caption = #46020#49436' '#46321#47197
  ClientHeight = 433
  ClientWidth = 619
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
    Top = 60
    Width = 42
    Height = 13
    Caption = #46321' '#47197' '#51068
  end
  object Label3: TLabel
    Left = 48
    Top = 103
    Width = 42
    Height = 13
    Caption = #46020' '#49436' '#47749
  end
  object Label4: TLabel
    Left = 48
    Top = 143
    Width = 30
    Height = 13
    Caption = #51089'  '#44032
  end
  object Label5: TLabel
    Left = 48
    Top = 183
    Width = 30
    Height = 13
    Caption = #48516'  '#47448
  end
  object Label6: TLabel
    Left = 48
    Top = 223
    Width = 42
    Height = 13
    Caption = #52636' '#54032' '#49324
  end
  object Label7: TLabel
    Left = 48
    Top = 263
    Width = 48
    Height = 13
    Caption = #52636#54032#45380#46020
  end
  object Label8: TLabel
    Left = 48
    Top = 303
    Width = 39
    Height = 13
    Caption = #52509' '#51116#44256
  end
  object Button1: TButton
    Left = 390
    Top = 368
    Width = 75
    Height = 25
    Caption = #46321'  '#47197
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 500
    Top = 368
    Width = 75
    Height = 25
    Caption = #45803'  '#51020
    TabOrder = 1
    OnClick = Button2Click
  end
  object DBEdit2: TDBEdit
    Left = 144
    Top = 57
    Width = 225
    Height = 21
    DataField = 'RegDay'
    DataSource = DataModule1.BookSource
    Enabled = False
    ImeName = 'Microsoft IME 2010'
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 144
    Top = 100
    Width = 225
    Height = 21
    DataField = 'BookName'
    DataSource = DataModule1.BookSource
    ImeName = 'Microsoft IME 2010'
    TabOrder = 3
  end
  object DBEdit4: TDBEdit
    Left = 144
    Top = 140
    Width = 225
    Height = 21
    DataField = 'Author'
    DataSource = DataModule1.BookSource
    ImeName = 'Microsoft IME 2010'
    TabOrder = 4
  end
  object DBEdit6: TDBEdit
    Left = 144
    Top = 220
    Width = 225
    Height = 21
    DataField = 'Publish'
    DataSource = DataModule1.BookSource
    ImeName = 'Microsoft IME 2010'
    TabOrder = 5
  end
  object DBEdit7: TDBEdit
    Left = 144
    Top = 260
    Width = 225
    Height = 21
    DataField = 'PublishYear'
    DataSource = DataModule1.BookSource
    ImeName = 'Microsoft IME 2010'
    TabOrder = 6
  end
  object DBComboBox1: TDBComboBox
    Left = 144
    Top = 180
    Width = 225
    Height = 21
    DataField = 'Category'
    DataSource = DataModule1.BookSource
    ImeName = 'Microsoft IME 2010'
    Items.Strings = (
      #52509#47448
      #52384#54617
      #51333#44368
      #49324#54924#44284#54617
      #49692#49688#44284#54617
      #44592#49696#44284#54617
      #50696#49696
      #50616#50612
      #47928#54617
      #50669#49324)
    TabOrder = 7
  end
  object GroupBox1: TGroupBox
    Left = 390
    Top = 45
    Width = 185
    Height = 264
    Caption = #51060#48120#51648' '#46321#47197
    TabOrder = 8
    object DBImage1: TDBImage
      Left = 2
      Top = 15
      Width = 181
      Height = 247
      Align = alClient
      DataField = 'BookImage'
      DataSource = DataModule1.BookSource
      Stretch = True
      TabOrder = 0
      OnClick = DBImage1Click
    end
  end
  object DBEdit5: TDBEdit
    Left = 144
    Top = 300
    Width = 225
    Height = 21
    DataField = 'TOTAL'
    DataSource = DataModule1.BookSource
    ImeName = 'Microsoft IME 2010'
    TabOrder = 9
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 560
    Top = 8
  end
end
