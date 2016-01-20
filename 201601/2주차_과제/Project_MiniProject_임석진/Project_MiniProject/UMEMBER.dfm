object MEMBERForm: TMEMBERForm
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = #51064#49324#44288#47532
  ClientHeight = 659
  ClientWidth = 849
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 849
    Height = 659
    Align = alClient
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 847
      Height = 240
      Align = alTop
      TabOrder = 0
      object GroupBox2: TGroupBox
        Left = 1
        Top = 65
        Width = 845
        Height = 174
        Align = alClient
        Caption = #51221#48372#49688#51221
        TabOrder = 0
        object GroupBox4: TGroupBox
          Left = 16
          Top = 32
          Width = 297
          Height = 121
          Caption = #44160#49353
          TabOrder = 0
          object Label1: TLabel
            Left = 16
            Top = 18
            Width = 63
            Height = 24
            Caption = #51060'  '#47492'  :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -20
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            Left = 16
            Top = 66
            Width = 63
            Height = 24
            Caption = #54016'  '#47749'  :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -20
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Button1: TButton
            Left = 230
            Top = 18
            Width = 59
            Height = 71
            Caption = #44160#49353
            TabOrder = 2
            OnClick = Button1Click
          end
          object Edit2: TEdit
            Left = 93
            Top = 18
            Width = 121
            Height = 21
            TabOrder = 0
            Text = #51060#47492#51012' '#51077#47141#54616#49464#50836
            OnClick = Edit2Click
          end
          object DBLookupComboBox2: TDBLookupComboBox
            Left = 93
            Top = 72
            Width = 121
            Height = 21
            KeyField = 'D_ID'
            ListField = 'D_TEAM'
            ListSource = DM.DSDEPT
            TabOrder = 1
          end
        end
        object GroupBox5: TGroupBox
          Left = 319
          Top = 32
          Width = 337
          Height = 121
          Caption = #49325#51228' & '#49688#51221
          TabOrder = 1
          object Label5: TLabel
            Left = 24
            Top = 44
            Width = 63
            Height = 24
            Caption = #51060'  '#47492'  :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -20
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 24
            Top = 74
            Width = 63
            Height = 24
            Caption = #54016'  '#47749'  :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -20
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label7: TLabel
            Left = 24
            Top = 18
            Width = 63
            Height = 24
            Caption = #49324'  '#48264'  :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -20
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Edit3: TEdit
            Left = 120
            Top = 53
            Width = 121
            Height = 21
            TabOrder = 1
          end
          object Edit4: TEdit
            Left = 120
            Top = 80
            Width = 121
            Height = 21
            TabOrder = 2
          end
          object Edit5: TEdit
            Left = 120
            Top = 26
            Width = 121
            Height = 21
            Enabled = False
            TabOrder = 0
          end
          object Button2: TButton
            Left = 247
            Top = 22
            Width = 75
            Height = 35
            Caption = #49688#51221
            TabOrder = 3
            OnClick = Button2Click
          end
          object Button4: TButton
            Left = 247
            Top = 63
            Width = 75
            Height = 34
            Caption = #49325#51228
            TabOrder = 4
            OnClick = Button4Click
          end
        end
      end
      object GroupBox3: TGroupBox
        Left = 1
        Top = 1
        Width = 845
        Height = 64
        Align = alTop
        Caption = #49888#44508#46321#47197
        TabOrder = 1
        object Label3: TLabel
          Left = 343
          Top = 18
          Width = 57
          Height = 24
          Caption = #54016#47749'   :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 32
          Top = 18
          Width = 63
          Height = 24
          Caption = #51060'  '#47492'  :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 439
          Top = 24
          Width = 121
          Height = 21
          DataField = 'M_M_Name'
          DataSource = DM.DSMEMBER
          ListField = 'D_TEAM'
          TabOrder = 2
        end
        object Button3: TButton
          Left = 566
          Top = 18
          Width = 74
          Height = 33
          Caption = #49888#44508#46321#47197
          TabOrder = 1
          OnClick = Button3Click
        end
        object Edit1: TEdit
          Left = 109
          Top = 24
          Width = 121
          Height = 21
          TabOrder = 0
          Text = #51060#47492#51012' '#51077#47141#54616#49464#50836
          OnClick = Edit1Click
        end
      end
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 241
      Width = 847
      Height = 417
      Align = alClient
      Caption = #49324#50896' '#47785#47197
      TabOrder = 1
      object DBGrid1: TDBGrid
        Left = 2
        Top = 15
        Width = 843
        Height = 400
        Align = alClient
        DataSource = DM.DSMEMBER
        Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
  end
end
