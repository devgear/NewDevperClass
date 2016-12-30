object ListEditForm: TListEditForm
  Left = 0
  Top = 0
  Caption = #51204#52404' '#51068#51221' '#44288#47532
  ClientHeight = 552
  ClientWidth = 485
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object 제목: TLabel
    Left = 24
    Top = 299
    Width = 24
    Height = 13
    Caption = #51228#47785
  end
  object 시작: TLabel
    Left = 24
    Top = 331
    Width = 24
    Height = 13
    Caption = #51068#51088
  end
  object Label7: TLabel
    Left = 24
    Top = 395
    Width = 24
    Height = 13
    Caption = #45236#50857
  end
  object Label1: TLabel
    Left = 231
    Top = 331
    Width = 12
    Height = 13
    Caption = #49884
  end
  object Label2: TLabel
    Left = 292
    Top = 331
    Width = 12
    Height = 13
    Caption = #48516
  end
  object Label3: TLabel
    Left = 24
    Top = 362
    Width = 24
    Height = 13
    Caption = #46321#44553
  end
  object Label4: TLabel
    Left = 95
    Top = 362
    Width = 140
    Height = 13
    Caption = '(1:'#48372#53685' 2:'#45458#51020' 3:'#50500#51452#45458#51020')'
  end
  object DBGridList: TDBGrid
    Left = 24
    Top = 28
    Width = 441
    Height = 209
    Color = clBtnFace
    DataSource = DM.ListTableSource
    ImeName = 'Microsoft IME 2010'
    Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnColumnMoved = DBGridListColumnMoved
  end
  object bbtnOk: TBitBtn
    Left = 371
    Top = 443
    Width = 75
    Height = 25
    Caption = #49688#51221
    Default = True
    DoubleBuffered = True
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = bbtnOkClick
  end
  object bbtnCancle: TBitBtn
    Left = 371
    Top = 493
    Width = 75
    Height = 25
    Caption = #51333#47308
    DoubleBuffered = True
    Kind = bkCancel
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = bbtnCancleClick
  end
  object bbtnDelete: TBitBtn
    Left = 371
    Top = 395
    Width = 75
    Height = 25
    Caption = #49325#51228
    DoubleBuffered = True
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333336633
      3333333333333FF3333333330000333333364463333333333333388F33333333
      00003333333E66433333333333338F38F3333333000033333333E66333333333
      33338FF8F3333333000033333333333333333333333338833333333300003333
      3333446333333333333333FF3333333300003333333666433333333333333888
      F333333300003333333E66433333333333338F38F333333300003333333E6664
      3333333333338F38F3333333000033333333E6664333333333338F338F333333
      0000333333333E6664333333333338F338F3333300003333344333E666433333
      333F338F338F3333000033336664333E664333333388F338F338F33300003333
      E66644466643333338F38FFF8338F333000033333E6666666663333338F33888
      3338F3330000333333EE666666333333338FF33333383333000033333333EEEE
      E333333333388FFFFF8333330000333333333333333333333333388888333333
      0000}
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 3
    OnClick = bbtnDeleteClick
  end
  object DBEdit1: TDBEdit
    Left = 54
    Top = 296
    Width = 281
    Height = 21
    DataField = 'Title'
    DataSource = DM.ListTableSource
    ImeName = 'Microsoft IME 2010'
    TabOrder = 4
    OnChange = DBEdit1Change
  end
  object DBRichEdit1: TDBRichEdit
    Left = 54
    Top = 395
    Width = 281
    Height = 127
    DataField = 'Text'
    DataSource = DM.ListTableSource
    Font.Charset = HANGEUL_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ImeName = 'Microsoft IME 2010'
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 5
  end
  object DBNavigator1: TDBNavigator
    Left = 245
    Top = 257
    Width = 220
    Height = 25
    DataSource = DM.ListTableSource
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
    TabOrder = 6
  end
  object DBEdit2: TDBEdit
    Left = 55
    Top = 328
    Width = 126
    Height = 21
    DataField = 'Day_data'
    DataSource = DM.ListTableSource
    ImeName = 'Microsoft IME 2010'
    TabOrder = 7
    OnKeyPress = DBEdit2KeyPress
  end
  object DBComboBox1: TDBComboBox
    Left = 187
    Top = 328
    Width = 38
    Height = 21
    DataField = 'TimeH_data'
    DataSource = DM.ListTableSource
    ImeName = 'Microsoft IME 2010'
    Items.Strings = (
      '01'
      '02'
      '03'
      '04'
      '05'
      '06'
      '07'
      '08'
      '09'
      '10'
      '11'
      '12'
      '13'
      '14'
      '15'
      '16'
      '17'
      '18'
      '19'
      '20'
      '21'
      '22'
      '23')
    TabOrder = 8
  end
  object DBCheckBox1: TDBCheckBox
    Left = 266
    Top = 361
    Width = 97
    Height = 17
    Caption = #50508#46988' '#49324#50857
    DataField = 'Alarm_data'
    DataSource = DM.ListTableSource
    TabOrder = 9
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
  object DBComboBox2: TDBComboBox
    Left = 249
    Top = 328
    Width = 37
    Height = 21
    DataField = 'TimeM_data'
    DataSource = DM.ListTableSource
    ImeName = 'Microsoft IME 2010'
    Items.Strings = (
      '00'
      '01'
      '02'
      '03'
      '04'
      '05'
      '06'
      '07'
      '08'
      '09'
      '10'
      '11'
      '12'
      '13'
      '14'
      '15'
      '16'
      '17'
      '18'
      '19'
      '20'
      '21'
      '22'
      '23'
      '24'
      '25'
      '26'
      '27'
      '28'
      '29'
      '30'
      '31'
      '32'
      '33'
      '34'
      '35'
      '36'
      '37'
      '38'
      '39'
      '40'
      '41'
      '42'
      '43'
      '44'
      '45'
      '46'
      '47'
      '48'
      '49'
      '50'
      '51'
      '52'
      '53'
      '54'
      '55'
      '56'
      '57'
      '58'
      '59')
    TabOrder = 10
  end
  object DBComboBox3: TDBComboBox
    Left = 53
    Top = 359
    Width = 36
    Height = 21
    DataField = 'Grade'
    DataSource = DM.ListTableSource
    ImeName = 'Microsoft IME 2010'
    Items.Strings = (
      '1'
      '2'
      '3')
    TabOrder = 11
  end
end
