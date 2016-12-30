object movies: Tmovies
  Left = 0
  Top = 0
  Caption = 'Movies'
  ClientHeight = 477
  ClientWidth = 680
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label14: TLabel
    Left = 341
    Top = 182
    Width = 45
    Height = 13
    Caption = #51109'       '#47476
  end
  object PageControl1: TPageControl
    Left = 23
    Top = 8
    Width = 633
    Height = 461
    ActivePage = TabSheet5
    TabOrder = 0
    object TabSheet2: TTabSheet
      Caption = #46321#47197'/'#49688#51221'/'#51312#54924
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label30: TLabel
        Left = 49
        Top = 16
        Width = 48
        Height = 13
        Caption = #53580#51086#48264#54840
      end
      object Label31: TLabel
        Left = 249
        Top = 19
        Width = 48
        Height = 13
        Caption = #53580#51086#51228#47785
      end
      object Button3: TButton
        Left = 349
        Top = 375
        Width = 75
        Height = 25
        Caption = #49688#51221
        TabOrder = 0
        Visible = False
        OnClick = Button3Click
      end
      object Button4: TButton
        Left = 511
        Top = 375
        Width = 75
        Height = 25
        Caption = #45803#44592
        TabOrder = 1
        OnClick = Button4Click
      end
      object Button5: TButton
        Left = 430
        Top = 375
        Width = 75
        Height = 25
        Caption = #46321#47197
        TabOrder = 2
        Visible = False
        OnClick = Button5Click
      end
      object DBNavigator3: TDBNavigator
        Left = 32
        Top = 223
        Width = 550
        Height = 25
        DataSource = udm.moviesSource
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
      end
      object TGroupBox
        Left = 32
        Top = 38
        Width = 552
        Height = 179
        TabOrder = 4
        object Label10: TLabel
          Left = 23
          Top = 11
          Width = 48
          Height = 13
          Caption = #53580#51077#48264#54840
        end
        object Label11: TLabel
          Left = 21
          Top = 45
          Width = 52
          Height = 13
          Caption = #53580#51077'/'#51228#47785
        end
        object Label12: TLabel
          Left = 21
          Top = 77
          Width = 51
          Height = 13
          Caption = #44048'         '#46021
        end
        object Label13: TLabel
          Left = 21
          Top = 107
          Width = 51
          Height = 13
          Caption = #51452'   '#51064'  '#44277
        end
        object Label15: TLabel
          Left = 285
          Top = 9
          Width = 48
          Height = 13
          Caption = #44396#51077#44032#44201
        end
        object Label16: TLabel
          Left = 285
          Top = 44
          Width = 45
          Height = 13
          Caption = #44396'       '#48516
        end
        object Label17: TLabel
          Left = 285
          Top = 84
          Width = 45
          Height = 13
          Caption = #51109'       '#47476
        end
        object Label23: TLabel
          Left = 285
          Top = 116
          Width = 45
          Height = 13
          Caption = #46321'       '#44553
        end
        object Label33: TLabel
          Left = 21
          Top = 146
          Width = 48
          Height = 13
          Caption = #44396#51077#45216#51676
        end
        object DBEdit10: TDBEdit
          Left = 96
          Top = 8
          Width = 121
          Height = 21
          DataField = 'M_NUM'
          DataSource = udm.moviesSource
          ImeName = 'Microsoft IME 2003'
          TabOrder = 0
        end
        object DBEdit11: TDBEdit
          Left = 96
          Top = 40
          Width = 121
          Height = 21
          DataField = 'M_TITLE'
          DataSource = udm.moviesSource
          ImeName = 'Microsoft IME 2003'
          TabOrder = 1
        end
        object DBEdit12: TDBEdit
          Left = 96
          Top = 73
          Width = 121
          Height = 21
          DataField = 'M_SUPER'
          DataSource = udm.moviesSource
          ImeName = 'Microsoft IME 2003'
          TabOrder = 2
        end
        object DBEdit13: TDBEdit
          Left = 96
          Top = 105
          Width = 121
          Height = 21
          DataField = 'M_MASTER'
          DataSource = udm.moviesSource
          ImeName = 'Microsoft IME 2003'
          TabOrder = 3
        end
        object DBEdit14: TDBEdit
          Left = 360
          Top = 9
          Width = 121
          Height = 21
          DataField = 'M_GPRICE'
          DataSource = udm.moviesSource
          ImeName = 'Microsoft IME 2003'
          TabOrder = 4
        end
        object DBEdit15: TDBEdit
          Left = 360
          Top = 113
          Width = 121
          Height = 21
          DataField = 'M_DIVI'
          DataSource = udm.moviesSource
          ImeName = 'Microsoft IME 2003'
          TabOrder = 5
        end
        object DBEdit16: TDBEdit
          Left = 360
          Top = 40
          Width = 121
          Height = 21
          DataField = 'M_GENRE'
          DataSource = udm.moviesSource
          ImeName = 'Microsoft IME 2003'
          TabOrder = 6
        end
        object DBEdit17: TDBEdit
          Left = 360
          Top = 78
          Width = 121
          Height = 21
          DataField = 'M_GRADE'
          DataSource = udm.moviesSource
          ImeName = 'Microsoft IME 2003'
          TabOrder = 7
        end
        object DBEdit22: TDBEdit
          Left = 96
          Top = 142
          Width = 121
          Height = 21
          DataField = 'M_GDATE'
          DataSource = udm.moviesSource
          ImeName = 'Microsoft IME 2003'
          TabOrder = 8
        end
      end
      object DBGrid1: TDBGrid
        Left = 34
        Top = 254
        Width = 552
        Height = 115
        DataSource = udm.moviesSource
        ImeName = 'Microsoft IME 2003'
        Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 5
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object Button1: TButton
        Left = 268
        Top = 375
        Width = 75
        Height = 25
        Caption = #49888' '#44508
        TabOrder = 6
        Visible = False
        OnClick = Button1Click
      end
      object Edit1: TEdit
        Left = 103
        Top = 13
        Width = 121
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 7
        OnChange = Edit1Change
      end
      object Edit7: TEdit
        Left = 303
        Top = 11
        Width = 121
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 8
        OnChange = Edit7Change
      end
    end
    object TabSheet5: TTabSheet
      Caption = #44396#48516' '#48324#51312#54924
      ImageIndex = 4
      object GroupBox4: TGroupBox
        Left = 16
        Top = 3
        Width = 606
        Height = 427
        TabOrder = 0
        object GroupBox5: TGroupBox
          Left = 3
          Top = 11
          Width = 600
          Height = 54
          TabOrder = 0
          object Label1: TLabel
            Left = 16
            Top = 24
            Width = 48
            Height = 13
            Caption = #51312#54924#48169#48277
          end
          object ComboBox1: TComboBox
            Left = 70
            Top = 19
            Width = 145
            Height = 22
            Style = csOwnerDrawFixed
            ImeName = 'Microsoft Office IME 2007'
            ItemIndex = 0
            TabOrder = 0
            Text = #51109#47476#48324' '#51312#54924
            OnChange = ComboBox1Change
            Items.Strings = (
              #51109#47476#48324' '#51312#54924
              #46321#44553#48324' '#51312#54924
              #44396#48516#48324' '#51312#54924)
          end
          object ComboBox2: TComboBox
            Left = 232
            Top = 20
            Width = 145
            Height = 22
            Style = csOwnerDrawFixed
            ImeName = 'Microsoft Office IME 2007'
            ItemIndex = 0
            TabOrder = 1
            Text = #44277#54252
            Items.Strings = (
              #44277#54252
              #46300#46972#47560
              #47708#47196
              #53076#48121
              #48276#51396
              #49828#47540#47084
              #50529#49496
              #47784#54744
              #54032#53440#51648)
          end
          object ComboBox3: TComboBox
            Left = 353
            Top = 33
            Width = 145
            Height = 21
            ImeName = 'Microsoft Office IME 2007'
            ItemIndex = 0
            TabOrder = 2
            Text = '19'#49464
            Visible = False
            Items.Strings = (
              '19'#49464
              '15'#49464
              '12'#49464
              #51204#52404
              #50612#47536#51060)
          end
          object ComboBox4: TComboBox
            Left = 456
            Top = 33
            Width = 145
            Height = 21
            ImeName = 'Microsoft Office IME 2007'
            ItemIndex = 0
            TabOrder = 3
            Text = #44397#45236
            Visible = False
            Items.Strings = (
              #44397#45236
              #44397#50808)
          end
          object Button2: TButton
            Left = 383
            Top = 19
            Width = 75
            Height = 25
            Caption = #51312#54924
            TabOrder = 4
            OnClick = Button2Click
          end
        end
        object StringGrid1: TStringGrid
          Left = 3
          Top = 71
          Width = 600
          Height = 353
          TabOrder = 1
        end
      end
    end
    object TabSheet7: TTabSheet
      Caption = #49888'/'#44396#51648#51221
      ImageIndex = 6
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label51: TLabel
        Left = 86
        Top = 26
        Width = 374
        Height = 13
        Caption = #50668#44592#49436#45716' '#52572#49888'/'#49888'/'#44396' '#54532#47196#51032' '#49444#51221#44592#44036#51012' '#49688#51221#54616#45716' '#51089#50629#51012' '#54633#45768#45796'..'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label47: TLabel
        Left = 24
        Top = 255
        Width = 39
        Height = 13
        Caption = #50724#45720#51008' '
      end
      object Label48: TLabel
        Left = 196
        Top = 255
        Width = 40
        Height = 13
        Caption = #51077#45768#45796'.'
      end
      object Edit2: TEdit
        Left = 69
        Top = 252
        Width = 121
        Height = 21
        ImeName = 'Microsoft IME 2003'
        TabOrder = 0
        Text = 'Edit2'
      end
      object Button17: TButton
        Left = 69
        Top = 291
        Width = 86
        Height = 42
        Caption = #49688#51221#49884#51089
        TabOrder = 1
      end
      object GroupBox6: TGroupBox
        Left = 242
        Top = 240
        Width = 343
        Height = 169
        TabOrder = 2
        object Label52: TLabel
          Left = 7
          Top = 17
          Width = 162
          Height = 13
          Caption = #52572#49888#44036' '#49444#51221' -- '#52636#49884#51068#47196#48512#53552
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label53: TLabel
          Left = 6
          Top = 42
          Width = 164
          Height = 13
          Caption = #49888'  '#44036'  '#49444'  '#51221' -- '#52636#49884#51068#47196#48512#53552
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label54: TLabel
          Left = 5
          Top = 88
          Width = 164
          Height = 13
          Caption = #44396'  '#44036'  '#49444'  '#51221' -- '#52636#49884#51068#47196#48512#53552
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label55: TLabel
          Left = 269
          Top = 17
          Width = 36
          Height = 13
          Caption = #51068#44620#51648
        end
        object Label56: TLabel
          Left = 88
          Top = 61
          Width = 36
          Height = 13
          Caption = #51068#48512#53552
        end
        object Label57: TLabel
          Left = 204
          Top = 61
          Width = 36
          Height = 13
          Caption = #51068#44620#51648
        end
        object Label58: TLabel
          Left = 264
          Top = 88
          Width = 36
          Height = 13
          Caption = #51068#51060#49345
        end
        object DBEdit30: TDBEdit
          Left = 170
          Top = 14
          Width = 88
          Height = 21
          ImeName = 'Microsoft IME 2003'
          TabOrder = 0
        end
        object DBEdit31: TDBEdit
          Left = 7
          Top = 58
          Width = 76
          Height = 21
          ImeName = 'Microsoft IME 2003'
          TabOrder = 1
        end
        object DBEdit32: TDBEdit
          Left = 129
          Top = 58
          Width = 70
          Height = 21
          ImeName = 'Microsoft IME 2003'
          TabOrder = 2
        end
        object DBEdit33: TDBEdit
          Left = 174
          Top = 84
          Width = 79
          Height = 21
          ImeName = 'Microsoft IME 2003'
          TabOrder = 3
        end
        object Edit3: TEdit
          Left = 8
          Top = 126
          Width = 210
          Height = 21
          ImeName = 'Microsoft IME 2003'
          TabOrder = 4
          Text = '                               0%'
        end
        object Button19: TButton
          Left = 223
          Top = 123
          Width = 51
          Height = 25
          Caption = #51200#51109
          TabOrder = 5
        end
        object Button20: TButton
          Left = 280
          Top = 123
          Width = 51
          Height = 25
          Caption = #52712#49548
          TabOrder = 6
        end
      end
      object Button18: TButton
        Left = 498
        Top = 14
        Width = 75
        Height = 25
        Caption = #45803#44592
        TabOrder = 3
        OnClick = Button18Click
      end
      object DBNavigator6: TDBNavigator
        Left = 32
        Top = 45
        Width = 550
        Height = 25
        TabOrder = 4
      end
      object DBGrid5: TDBGrid
        Left = 32
        Top = 80
        Width = 541
        Height = 137
        DataSource = udm.moviesSource
        ImeName = 'Microsoft IME 2003'
        Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 5
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object TabSheet8: TTabSheet
      Caption = #52572#49888'/'#49888'/'#44396' '#54532#47196#49688#51221
      ImageIndex = 7
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label59: TLabel
        Left = 33
        Top = 46
        Width = 510
        Height = 13
        Caption = #50668#44592#49436#45716' '#49884#44036#51060' '#44221#44284#54616#50668' '#52572#49888#54532#47196' -->'#49888#54532#47196'-->'#44396' '#54532#47196#47196' '#48320#44221#49884#53020#51452#45716' '#51089#50629#51012' '#54633#45768#45796'..'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label60: TLabel
        Left = 280
        Top = 81
        Width = 194
        Height = 13
        Caption = #52572#49888#54532#47196' ('#52636#49884#51068#47196#48512#53552'    90 '#51068#44620#51648')'
      end
      object Label61: TLabel
        Left = 280
        Top = 105
        Width = 257
        Height = 13
        Caption = #49888'  '#54532'  '#47196' ('#52636#49884#51068#47196#48512#53552'    91'#51068' '#48512#53552' 300'#51068#44620#51648')  '
      end
      object Label62: TLabel
        Left = 280
        Top = 133
        Width = 194
        Height = 13
        Caption = #44396'  '#54532'  '#47196' ('#52636#49884#51068#47196#48512#53552'    30'#51068' '#51060#49345')'
      end
      object Label63: TLabel
        Left = 278
        Top = 191
        Width = 51
        Height = 13
        Caption = #52572#49888#54532#47196' '
      end
      object Label64: TLabel
        Left = 280
        Top = 217
        Width = 45
        Height = 13
        Caption = '   '#49888#54532#47196
      end
      object Label65: TLabel
        Left = 275
        Top = 243
        Width = 48
        Height = 13
        Caption = '    '#44396#54532#47196
      end
      object Label66: TLabel
        Left = 341
        Top = 173
        Width = 36
        Height = 13
        Caption = #45824#50668#47308
      end
      object Label67: TLabel
        Left = 400
        Top = 173
        Width = 48
        Height = 13
        Caption = #45824#50668#44592#44036
      end
      object Label68: TLabel
        Left = 466
        Top = 173
        Width = 78
        Height = 13
        Caption = '1'#51068#52488#44284#50672#52404#47308
      end
      object Label69: TLabel
        Left = 557
        Top = 173
        Width = 60
        Height = 13
        Caption = #54924#50896#45824#50668#47308
      end
      object Label70: TLabel
        Left = 351
        Top = 193
        Width = 24
        Height = 13
        Caption = '1000'
        Color = 1000
        ParentColor = False
      end
      object Label71: TLabel
        Left = 438
        Top = 193
        Width = 6
        Height = 13
        Caption = '1'
      end
      object Label72: TLabel
        Left = 517
        Top = 193
        Width = 18
        Height = 13
        Caption = '500'
      end
      object Label73: TLabel
        Left = 582
        Top = 193
        Width = 24
        Height = 13
        Caption = '1000'
      end
      object Label74: TLabel
        Left = 351
        Top = 216
        Width = 24
        Height = 13
        Caption = '1000'
      end
      object Label75: TLabel
        Left = 438
        Top = 216
        Width = 6
        Height = 13
        Caption = '1'
      end
      object Label76: TLabel
        Left = 517
        Top = 217
        Width = 18
        Height = 13
        Caption = '500'
      end
      object Label77: TLabel
        Left = 582
        Top = 216
        Width = 24
        Height = 13
        Caption = '1000'
      end
      object Label78: TLabel
        Left = 357
        Top = 241
        Width = 18
        Height = 13
        Caption = '500'
      end
      object Label79: TLabel
        Left = 438
        Top = 238
        Width = 6
        Height = 13
        Caption = '5'
      end
      object Label80: TLabel
        Left = 517
        Top = 240
        Width = 18
        Height = 13
        Caption = '500'
      end
      object Label81: TLabel
        Left = 588
        Top = 240
        Width = 18
        Height = 13
        Caption = '500'
      end
      object Label82: TLabel
        Left = 24
        Top = 363
        Width = 39
        Height = 13
        Caption = #50724#45720#51008' '
      end
      object Label83: TLabel
        Left = 193
        Top = 361
        Width = 40
        Height = 13
        Caption = #51077#45768#45796'.'
      end
      object GroupBox7: TGroupBox
        Left = 269
        Top = 152
        Width = 353
        Height = 113
        TabOrder = 0
      end
      object Edit4: TEdit
        Left = 65
        Top = 358
        Width = 121
        Height = 21
        ImeName = 'Microsoft IME 2003'
        TabOrder = 1
        Text = 'Edit4'
      end
      object Button21: TButton
        Left = 24
        Top = 385
        Width = 209
        Height = 33
        Caption = #49440#53469#54620' '#51088#47308' '#51116#51312#51221#51089#50629' '#49892#49884
        TabOrder = 2
      end
      object Edit5: TEdit
        Left = 288
        Top = 304
        Width = 318
        Height = 21
        ImeName = 'Microsoft IME 2003'
        TabOrder = 3
        Text = '                                                0%'
      end
      object Edit6: TEdit
        Left = 288
        Top = 344
        Width = 318
        Height = 21
        ImeName = 'Microsoft IME 2003'
        TabOrder = 4
        Text = '                                                0%'
      end
      object Button22: TButton
        Left = 505
        Top = 12
        Width = 75
        Height = 25
        Caption = #45803#44592
        TabOrder = 5
        OnClick = Button22Click
      end
      object DBNavigator7: TDBNavigator
        Left = 3
        Top = 69
        Width = 260
        Height = 25
        TabOrder = 6
      end
      object DBGrid6: TDBGrid
        Left = 3
        Top = 100
        Width = 247
        Height = 233
        DataSource = udm.moviesSource
        ImeName = 'Microsoft IME 2003'
        Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 7
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
  end
  object SQLQuery1: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'genre%'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from movies'
      'where M_GENRE  like %:genre%')
    SQLConnection = udm.shopConnection
    Left = 232
    Top = 208
  end
end
