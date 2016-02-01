object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Main_Sin'
  ClientHeight = 757
  ClientWidth = 1024
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 1024
    Height = 757
    Align = alClient
    TabOrder = 0
    object GridPanel1: TGridPanel
      Left = 1
      Top = 1
      Width = 1022
      Height = 257
      Align = alTop
      BorderWidth = 1
      ColumnCollection = <
        item
          SizeStyle = ssAbsolute
          Value = 340.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 340.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 340.000000000000000000
        end>
      ControlCollection = <
        item
          Column = 0
          Control = Panel1
          Row = 0
        end
        item
          Column = 1
          Control = Panel2
          Row = 0
        end
        item
          Column = 2
          Control = Panel3
          Row = 0
        end>
      RowCollection = <
        item
          Value = 100.000000000000000000
        end
        item
          SizeStyle = ssAuto
        end>
      TabOrder = 0
      object Panel1: TPanel
        Left = 2
        Top = 2
        Width = 340
        Height = 253
        Align = alClient
        TabOrder = 0
        object Label1: TLabel
          Left = 49
          Top = 46
          Width = 36
          Height = 13
          Caption = #49888#52397#52376
          Color = clNone
          ParentColor = False
        end
        object Label2: TLabel
          Left = 34
          Top = 102
          Width = 51
          Height = 13
          Caption = #51204#54868' '#48264#54840
        end
        object Label3: TLabel
          Left = 61
          Top = 73
          Width = 24
          Height = 13
          Caption = #49548#49549
        end
        object Label4: TLabel
          Left = 34
          Top = 129
          Width = 51
          Height = 13
          Caption = #55092#45824' '#48264#54840
        end
        object Label6: TLabel
          Left = 61
          Top = 155
          Width = 24
          Height = 13
          Caption = #51452#49548
        end
        object Label20: TLabel
          Left = 57
          Top = 183
          Width = 28
          Height = 13
          Caption = 'E-Mail'
        end
        object Label19: TLabel
          Left = 180
          Top = 102
          Width = 21
          Height = 14
          Caption = 'FAX'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 34
          Top = 208
          Width = 51
          Height = 13
          Caption = #44592#53440' '#45236#50857
        end
        object Edit1: TEdit
          Left = 91
          Top = 43
          Width = 109
          Height = 21
          TabOrder = 0
        end
        object Edit2: TEdit
          Left = 206
          Top = 43
          Width = 89
          Height = 21
          TabOrder = 1
        end
        object Edit3: TEdit
          Left = 91
          Top = 70
          Width = 109
          Height = 21
          TabOrder = 2
        end
        object Edit4: TEdit
          Left = 206
          Top = 70
          Width = 89
          Height = 21
          TabOrder = 3
        end
        object Edit5: TEdit
          Left = 91
          Top = 99
          Width = 84
          Height = 21
          TabOrder = 4
        end
        object Edit6: TEdit
          Left = 91
          Top = 126
          Width = 84
          Height = 21
          TabOrder = 5
        end
        object Edit7: TEdit
          Left = 91
          Top = 179
          Width = 203
          Height = 21
          TabOrder = 6
        end
        object Button1: TButton
          Left = 39
          Top = 2
          Width = 257
          Height = 37
          Caption = #49888#52397#51088' '#51221#48372' '#44160#49353
          TabOrder = 7
          OnClick = Button1Click
        end
        object Edit18: TEdit
          Left = 91
          Top = 152
          Width = 203
          Height = 21
          TabOrder = 8
        end
        object Edit22: TEdit
          Left = 206
          Top = 99
          Width = 88
          Height = 21
          TabOrder = 9
        end
        object Edit17: TEdit
          Left = 91
          Top = 206
          Width = 204
          Height = 21
          TabOrder = 10
        end
      end
      object Panel2: TPanel
        Left = 342
        Top = 2
        Width = 340
        Height = 253
        Align = alClient
        TabOrder = 1
        object Label5: TLabel
          Left = 63
          Top = 46
          Width = 24
          Height = 13
          Caption = #51648#49324
        end
        object Label7: TLabel
          Left = 53
          Top = 71
          Width = 36
          Height = 13
          Caption = #54924#51032#49892
        end
        object Label8: TLabel
          Left = 144
          Top = 101
          Width = 12
          Height = 13
          Caption = #52789
        end
        object Label9: TLabel
          Left = 224
          Top = 101
          Width = 24
          Height = 13
          Caption = #54840#49892
        end
        object Label10: TLabel
          Left = 144
          Top = 128
          Width = 24
          Height = 13
          Caption = #51340#49437
        end
        object Label12: TLabel
          Left = 41
          Top = 152
          Width = 48
          Height = 13
          Caption = #49324#50857#51068#49884
        end
        object Label13: TLabel
          Left = 63
          Top = 179
          Width = 24
          Height = 13
          Caption = #50857#46020
        end
        object Label14: TLabel
          Left = 39
          Top = 206
          Width = 48
          Height = 13
          Caption = #52280#50668#51064#50896
        end
        object Label21: TLabel
          Left = 174
          Top = 206
          Width = 12
          Height = 13
          Caption = #47749
        end
        object Label22: TLabel
          Left = 182
          Top = 46
          Width = 24
          Height = 13
          Caption = #49436#50872
        end
        object ComboBox1: TComboBox
          Left = 103
          Top = 43
          Width = 72
          Height = 21
          TabOrder = 0
          Text = 'J001'
          OnChange = ComboBox1Change
          Items.Strings = (
            'J001'
            'J002 '
            'J003'
            'J004')
        end
        object Edit8: TEdit
          Left = 103
          Top = 70
          Width = 145
          Height = 21
          TabOrder = 1
        end
        object Edit9: TEdit
          Left = 103
          Top = 98
          Width = 35
          Height = 21
          TabOrder = 2
        end
        object Edit10: TEdit
          Left = 170
          Top = 98
          Width = 48
          Height = 21
          TabOrder = 3
        end
        object Edit11: TEdit
          Left = 103
          Top = 125
          Width = 35
          Height = 21
          TabOrder = 4
        end
        object Edit16: TEdit
          Left = 103
          Top = 203
          Width = 65
          Height = 21
          TabOrder = 5
        end
        object Button4: TButton
          Left = 34
          Top = 2
          Width = 266
          Height = 37
          Caption = #54924#51032#49892' '#51221#48372' '#44160#49353
          TabOrder = 6
          OnClick = Button4Click
        end
        object Edit21: TEdit
          Left = 103
          Top = 176
          Width = 169
          Height = 21
          TabOrder = 7
        end
        object DateTimePicker2: TDateTimePicker
          Left = 103
          Top = 149
          Width = 169
          Height = 21
          Align = alCustom
          Date = 42398.713063148150000000
          Time = 42398.713063148150000000
          TabOrder = 8
        end
      end
      object Panel3: TPanel
        Left = 682
        Top = 2
        Width = 340
        Height = 253
        Align = alClient
        TabOrder = 2
        object Label15: TLabel
          Left = 18
          Top = 97
          Width = 75
          Height = 13
          Caption = #54924#51032#49892' '#49324#50857#47308
        end
        object Label16: TLabel
          Left = 18
          Top = 129
          Width = 75
          Height = 13
          Caption = #44592#51088#51116' '#49324#50857#47308
        end
        object Label17: TLabel
          Left = 30
          Top = 162
          Width = 63
          Height = 13
          Caption = #49324#50857#47308' '#54633#44228
        end
        object Label11: TLabel
          Left = 27
          Top = 46
          Width = 63
          Height = 13
          Caption = #44592#51088#51116' '#49324#50857
        end
        object Edit13: TEdit
          Left = 99
          Top = 94
          Width = 222
          Height = 21
          Alignment = taRightJustify
          TabOrder = 0
        end
        object Edit15: TEdit
          Left = 99
          Top = 126
          Width = 222
          Height = 21
          Alignment = taRightJustify
          TabOrder = 1
          Text = '0'
        end
        object Edit20: TEdit
          Left = 99
          Top = 159
          Width = 224
          Height = 21
          Alignment = taRightJustify
          TabOrder = 2
        end
        object Button12: TButton
          Left = 96
          Top = 186
          Width = 98
          Height = 50
          Caption = #54924#51032#49892' '#50696#50557
          TabOrder = 3
          OnClick = Button12Click
        end
        object Button13: TButton
          Left = 224
          Top = 188
          Width = 98
          Height = 50
          Caption = #50696#50557' '#52712#49548
          TabOrder = 4
          OnClick = Button13Click
        end
        object Edit23: TEdit
          Left = 99
          Top = 46
          Width = 222
          Height = 21
          TabOrder = 5
        end
      end
    end
    object Panel5: TPanel
      Left = 1
      Top = 258
      Width = 1022
      Height = 498
      Align = alClient
      Caption = 'Panel5'
      TabOrder = 1
      object PageControl1: TPageControl
        Left = 1
        Top = 74
        Width = 1020
        Height = 423
        ActivePage = TabSheet1
        Align = alClient
        TabOrder = 0
        object TabSheet1: TTabSheet
          Caption = #54924#51032#49892' '#50696#50557' '#54788#54889
          object Panel6: TPanel
            Left = 0
            Top = 0
            Width = 1012
            Height = 41
            Align = alTop
            TabOrder = 0
          end
          object DBGrid1: TDBGrid
            Left = 0
            Top = 35
            Width = 1012
            Height = 360
            Align = alBottom
            DataSource = DM.RESERVE_Q_DS
            Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'RECORD_NUM'
                Title.Alignment = taCenter
                Title.Caption = #49692#48264
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 40
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'SIN_NAME'
                Title.Alignment = taCenter
                Title.Caption = #49888#52397#51088#47749
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 65
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'SIN_CODE'
                Title.Alignment = taCenter
                Title.Caption = #49888#52397#51088#48264#54840
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 75
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'SIN_SONAME'
                Title.Alignment = taCenter
                Title.Caption = #49548#49549#47749
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 80
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'SIN_SOKIND'
                Title.Alignment = taCenter
                Title.Caption = #49548#49549#44396#48516
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 85
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'SIN_TEL'
                Title.Alignment = taCenter
                Title.Caption = #51204#54868#48264#54840
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 90
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'SIN_FAX'
                Title.Alignment = taCenter
                Title.Caption = #54057#49828#48264#54840
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 95
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'SIN_MOBILE'
                Title.Alignment = taCenter
                Title.Caption = #55092#45824#51204#54868
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 95
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'SIN_ADD'
                Title.Alignment = taCenter
                Title.Caption = #51452#49548
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 180
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'SIN_MAIL'
                Title.Alignment = taCenter
                Title.Caption = #47700#51068#51452#49548
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 150
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'SIN_ROOMNAME'
                Title.Alignment = taCenter
                Title.Caption = #54924#51032#49892#47749
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 80
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'SIN_FL'
                Title.Alignment = taCenter
                Title.Caption = #52789' '#51221#48372
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 50
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'SIN_HOSIL'
                Title.Alignment = taCenter
                Title.Caption = #54924#51032#49892#48264#54840
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 80
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'SIN_CHAIR'
                Title.Alignment = taCenter
                Title.Caption = #51340#49437#49688
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 50
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'SIN_DATE'
                Title.Alignment = taCenter
                Title.Caption = #49888#52397#51068#51088
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 80
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'SIN_KIND'
                Title.Alignment = taCenter
                Title.Caption = #49324#50857#50857#46020
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 70
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'SIN_COUNT'
                Title.Alignment = taCenter
                Title.Caption = #52280#50668#51064#50896
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 70
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'SIN_USEJAJE'
                Title.Alignment = taCenter
                Title.Caption = #49324#50857#44592#51088#51116
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 90
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'SIN_ROOMCOST'
                Title.Alignment = taCenter
                Title.Caption = #54924#51032#49892' '#49324#50857#47308
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 90
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'SIN_JAJECOST'
                Title.Alignment = taCenter
                Title.Caption = #44592#51088#51116' '#49324#50857#47308
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 90
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'SIN_TOTALCOST'
                Title.Alignment = taCenter
                Title.Caption = #49324#50857#47308' '#54633#44228
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 90
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'SIN_GITA'
                Title.Alignment = taCenter
                Title.Caption = #44592#53440#49324#54637
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 140
                Visible = True
              end>
          end
        end
        object TabSheet3: TTabSheet
          Caption = #51648#49324#48324' '#54924#51032#49892' '#49324#50857#54788#54889
          ImageIndex = 2
        end
      end
      object Panel8: TPanel
        Left = 1
        Top = 1
        Width = 1020
        Height = 73
        Align = alTop
        Caption = 'Panel8'
        TabOrder = 1
        object GroupBox1: TGroupBox
          Left = 441
          Top = 7
          Width = 558
          Height = 62
          Caption = #50689#49688#51613' '#51221#48372
          TabOrder = 0
          object Button5: TButton
            Left = 16
            Top = 18
            Width = 129
            Height = 33
            Caption = #44204#51201#49436' '#47700#51068#51204#49569
            TabOrder = 0
          end
          object Button6: TButton
            Left = 416
            Top = 18
            Width = 127
            Height = 32
            Caption = #49464#44552#44228#49328#49436' '#48156#54665
            TabOrder = 1
          end
          object Button7: TButton
            Left = 284
            Top = 18
            Width = 127
            Height = 32
            Caption = #49464#44552#44228#49328#49436' '#52636#47141
            TabOrder = 2
          end
          object Button2: TButton
            Left = 151
            Top = 19
            Width = 127
            Height = 32
            Caption = #44204#51201#49436' '#52636#47141
            TabOrder = 3
          end
        end
        object GroupBox2: TGroupBox
          Left = 33
          Top = 5
          Width = 402
          Height = 61
          Caption = #54924#51032#49892' '#50696#50557' '#51221#48372' '#52968#53944#47204
          TabOrder = 1
          object Button8: TButton
            Left = 15
            Top = 19
            Width = 61
            Height = 32
            Caption = #51204#52404' '#51312#54924
            TabOrder = 0
            OnClick = Button8Click
          end
          object Button10: TButton
            Left = 252
            Top = 19
            Width = 54
            Height = 32
            Caption = #49688#51221
            TabOrder = 1
            OnClick = Button10Click
          end
          object Button11: TButton
            Left = 315
            Top = 19
            Width = 59
            Height = 32
            Caption = #49325#51228
            TabOrder = 2
            OnClick = Button11Click
          end
          object Button3: TButton
            Left = 192
            Top = 19
            Width = 48
            Height = 32
            Caption = #51312#54924
            TabOrder = 3
            OnClick = Button3Click
          end
          object DateTimePicker1: TDateTimePicker
            Left = 82
            Top = 19
            Width = 104
            Height = 32
            Date = 42397.473805914350000000
            Time = 42397.473805914350000000
            TabOrder = 4
          end
        end
      end
    end
  end
end
