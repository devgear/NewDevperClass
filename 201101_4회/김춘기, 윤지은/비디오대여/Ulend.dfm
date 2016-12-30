object lendForm: TlendForm
  Left = 0
  Top = 0
  Caption = #45824#50668#44288#47532
  ClientHeight = 333
  ClientWidth = 720
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
    Left = 32
    Top = 16
    Width = 36
    Height = 13
    Caption = #55092#45824#54256
  end
  object Label2: TLabel
    Left = 230
    Top = 16
    Width = 48
    Height = 13
    Caption = #53580#51077#48264#54840
  end
  object Edit1: TEdit
    Left = 74
    Top = 13
    Width = 121
    Height = 21
    ImeName = 'Microsoft IME 2003'
    TabOrder = 0
    OnChange = Edit1Change
  end
  object GroupBox4: TGroupBox
    Left = 6
    Top = 48
    Width = 693
    Height = 73
    Caption = #44256#44061#51221#48372
    TabOrder = 1
    object Label29: TLabel
      Left = 10
      Top = 23
      Width = 48
      Height = 13
      Caption = #44256#44061#48264#54840
    end
    object Label30: TLabel
      Left = 10
      Top = 51
      Width = 48
      Height = 13
      Caption = #49457'        '#47749
    end
    object Label31: TLabel
      Left = 490
      Top = 47
      Width = 48
      Height = 13
      Caption = #51452#48124#48264#54840
    end
    object Label32: TLabel
      Left = 258
      Top = 23
      Width = 48
      Height = 13
      Caption = #55092'  '#45824'  '#54256
    end
    object Label33: TLabel
      Left = 259
      Top = 47
      Width = 45
      Height = 13
      Caption = #51452'       '#49548
    end
    object Label35: TLabel
      Left = 490
      Top = 23
      Width = 48
      Height = 13
      Caption = #51060'  '#47700'  '#51068
    end
    object DBEdit17: TDBEdit
      Left = 64
      Top = 47
      Width = 176
      Height = 21
      DataField = 'P_NAME'
      DataSource = udm.customerSource
      ImeName = 'Microsoft IME 2003'
      TabOrder = 0
    end
    object DBEdit18: TDBEdit
      Left = 546
      Top = 44
      Width = 136
      Height = 21
      DataField = 'P_NUM'
      DataSource = udm.customerSource
      ImeName = 'Microsoft IME 2003'
      TabOrder = 1
    end
    object DBEdit19: TDBEdit
      Left = 310
      Top = 17
      Width = 154
      Height = 21
      DataField = 'P_PHONE'
      DataSource = udm.customerSource
      ImeName = 'Microsoft IME 2003'
      TabOrder = 2
    end
    object DBEdit20: TDBEdit
      Left = 310
      Top = 44
      Width = 154
      Height = 21
      DataField = 'P_ADDRESS'
      DataSource = udm.customerSource
      ImeName = 'Microsoft IME 2003'
      TabOrder = 3
    end
    object DBEdit22: TDBEdit
      Left = 544
      Top = 17
      Width = 138
      Height = 21
      DataField = 'P_EMAIL'
      DataSource = udm.customerSource
      ImeName = 'Microsoft IME 2003'
      TabOrder = 4
    end
    object DBEdit13: TDBEdit
      Left = 64
      Top = 20
      Width = 176
      Height = 21
      DataField = 'P_ID'
      DataSource = udm.customerSource
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 5
    end
  end
  object Edit2: TEdit
    Left = 284
    Top = 13
    Width = 135
    Height = 21
    ImeName = 'Microsoft IME 2003'
    TabOrder = 2
    OnChange = Edit2Change
  end
  object TGroupBox
    Left = 6
    Top = 127
    Width = 693
    Height = 117
    Caption = #53580#51077#51221#48372
    TabOrder = 3
    object Label3: TLabel
      Left = 23
      Top = 17
      Width = 48
      Height = 13
      Caption = #53580#51077#48264#54840
    end
    object Label4: TLabel
      Left = 21
      Top = 50
      Width = 52
      Height = 13
      Caption = #53580#51077'/'#51228#47785
    end
    object Label5: TLabel
      Left = 21
      Top = 83
      Width = 51
      Height = 13
      Caption = #44048'         '#46021
    end
    object Label6: TLabel
      Left = 239
      Top = 15
      Width = 51
      Height = 13
      Caption = #51452'   '#51064'  '#44277
    end
    object Label7: TLabel
      Left = 236
      Top = 83
      Width = 57
      Height = 13
      Caption = #44396' '#51077' '#44032' '#44201
    end
    object Label8: TLabel
      Left = 429
      Top = 15
      Width = 45
      Height = 13
      Caption = #44396'       '#48516
    end
    object Label9: TLabel
      Left = 429
      Top = 51
      Width = 45
      Height = 13
      Caption = #51109'       '#47476
    end
    object Label10: TLabel
      Left = 429
      Top = 83
      Width = 45
      Height = 13
      Caption = #46321'       '#44553
    end
    object Label12: TLabel
      Left = 235
      Top = 50
      Width = 57
      Height = 13
      Caption = #44396' '#51077' '#51096' '#51676
    end
    object DBEdit1: TDBEdit
      Left = 96
      Top = 14
      Width = 121
      Height = 21
      DataField = 'M_NUM'
      DataSource = udm.moviesSource
      ImeName = 'Microsoft IME 2003'
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 96
      Top = 45
      Width = 121
      Height = 21
      DataField = 'M_TITLE'
      DataSource = udm.moviesSource
      ImeName = 'Microsoft IME 2003'
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 95
      Top = 79
      Width = 121
      Height = 21
      DataField = 'M_SUPER'
      DataSource = udm.moviesSource
      ImeName = 'Microsoft IME 2003'
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 296
      Top = 14
      Width = 121
      Height = 21
      DataField = 'M_MASTER'
      DataSource = udm.moviesSource
      ImeName = 'Microsoft IME 2003'
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 296
      Top = 79
      Width = 121
      Height = 21
      DataField = 'M_GPRICE'
      DataSource = udm.moviesSource
      ImeName = 'Microsoft IME 2003'
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 483
      Top = 11
      Width = 121
      Height = 21
      DataField = 'M_DIVI'
      DataSource = udm.moviesSource
      ImeName = 'Microsoft IME 2003'
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 483
      Top = 45
      Width = 121
      Height = 21
      DataField = 'M_GENRE'
      DataSource = udm.moviesSource
      ImeName = 'Microsoft IME 2003'
      TabOrder = 6
    end
    object DBEdit8: TDBEdit
      Left = 483
      Top = 79
      Width = 121
      Height = 21
      DataField = 'M_GRADE'
      DataSource = udm.moviesSource
      ImeName = 'Microsoft IME 2003'
      TabOrder = 7
    end
    object DBEdit9: TDBEdit
      Left = 296
      Top = 46
      Width = 121
      Height = 21
      DataField = 'M_GDATE'
      DataSource = udm.moviesSource
      ImeName = 'Microsoft IME 2003'
      TabOrder = 8
    end
  end
  object Button1: TButton
    Left = 469
    Top = 302
    Width = 75
    Height = 25
    Caption = #46321#47197
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 550
    Top = 302
    Width = 75
    Height = 25
    Caption = #52712#49548
    TabOrder = 5
  end
  object Button3: TButton
    Left = 631
    Top = 302
    Width = 75
    Height = 25
    Caption = #51333#47308
    TabOrder = 6
    OnClick = Button3Click
  end
  object GroupBox1: TGroupBox
    Left = 6
    Top = 250
    Width = 693
    Height = 46
    Caption = #45824#50668#44592#44036
    TabOrder = 7
    object Label16: TLabel
      Left = 17
      Top = 24
      Width = 48
      Height = 13
      Caption = #45824#50668#49884#44036
    end
    object Label17: TLabel
      Left = 303
      Top = 20
      Width = 48
      Height = 13
      Caption = #45824#50668#50976#47924
    end
    object Label11: TLabel
      Left = 181
      Top = 21
      Width = 48
      Height = 13
      Caption = #45824#50668#44592#44036
    end
    object Label13: TLabel
      Left = 489
      Top = 21
      Width = 48
      Height = 13
      Caption = #45824#50668#44032#44201
    end
    object Label14: TLabel
      Left = 268
      Top = 21
      Width = 12
      Height = 13
      Caption = #51068
    end
    object Edit3: TEdit
      Left = 81
      Top = 17
      Width = 82
      Height = 21
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 0
      OnClick = Edit3Click
    end
    object ComboBox2: TComboBox
      Left = 358
      Top = 17
      Width = 121
      Height = 21
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 1
      Items.Strings = (
        #45824#50668)
    end
    object Edit4: TEdit
      Left = 234
      Top = 16
      Width = 28
      Height = 21
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 2
    end
    object DBEdit10: TDBEdit
      Left = 546
      Top = 16
      Width = 121
      Height = 21
      DataField = 'M_LPRICE'
      DataSource = udm.moviesSource
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 3
    end
  end
  object SQLQuery1: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = udm.shopConnection
    Left = 640
    Top = 136
  end
end
