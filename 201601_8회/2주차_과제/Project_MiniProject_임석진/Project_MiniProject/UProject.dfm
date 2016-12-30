object ProjectForm: TProjectForm
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'ProjectForm'
  ClientHeight = 618
  ClientWidth = 769
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
  object Panel1: TPanel
    Left = 0
    Top = 259
    Width = 769
    Height = 359
    Align = alClient
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 767
      Height = 252
      Align = alClient
      Caption = #54532#47196#51117#53944' '#54788#54889
      TabOrder = 0
      ExplicitHeight = 357
      object DBGrid1: TDBGrid
        Left = 2
        Top = 15
        Width = 763
        Height = 235
        Align = alClient
        DataSource = DM.DSPROJECT
        Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object GroupBox8: TGroupBox
      Left = 1
      Top = 253
      Width = 767
      Height = 105
      Align = alBottom
      Caption = #47604#48260' '#44288#47532
      TabOrder = 1
      ExplicitLeft = 296
      ExplicitTop = 128
      ExplicitWidth = 185
      object DBGrid2: TDBGrid
        Left = 2
        Top = 15
        Width = 763
        Height = 88
        Align = alClient
        DataSource = DM.DSPRO_MEMBER
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 769
    Height = 259
    Align = alTop
    TabOrder = 1
    ExplicitTop = -5
    object GroupBox3: TGroupBox
      Left = 1
      Top = 1
      Width = 767
      Height = 104
      Align = alTop
      Caption = #49888#44508#46321#47197
      TabOrder = 0
      object Label4: TLabel
        Left = 19
        Top = 25
        Width = 51
        Height = 24
        Caption = #51060' '#47492' :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 19
        Top = 64
        Width = 51
        Height = 24
        Caption = #47604' '#48260' :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 243
        Top = 25
        Width = 83
        Height = 24
        Caption = #49884#51089' '#45216#51676' :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 243
        Top = 64
        Width = 83
        Height = 24
        Caption = #47564#44592' '#45216#51676' :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Edit1: TEdit
        Left = 93
        Top = 31
        Width = 121
        Height = 21
        TabOrder = 0
        Text = #54532#47196#51229#53944' '#51060#47492
        OnClick = Edit1Click
      end
      object GroupBox2: TGroupBox
        Left = 464
        Top = 21
        Width = 177
        Height = 68
        Caption = #51652#54665#49345#54889
        TabOrder = 4
        object Label1: TLabel
          Left = 3
          Top = 46
          Width = 22
          Height = 13
          Caption = #51456#48708
        end
        object Label2: TLabel
          Left = 147
          Top = 46
          Width = 22
          Height = 13
          Caption = #51333#47308
        end
        object Label3: TLabel
          Left = 75
          Top = 46
          Width = 22
          Height = 13
          Caption = #51652#54665
        end
        object STATUS: TTrackBar
          Left = 2
          Top = 15
          Width = 173
          Height = 25
          Align = alTop
          Max = 30
          Min = 10
          PageSize = 10
          Frequency = 10
          Position = 10
          TabOrder = 0
        end
      end
      object Button3: TButton
        Left = 645
        Top = 23
        Width = 57
        Height = 64
        Caption = #46321#47197
        TabOrder = 5
        OnClick = Button3Click
      end
      object btn_addmember: TButton
        Left = 93
        Top = 70
        Width = 121
        Height = 23
        Caption = #47604#48260' '#44288#47532
        TabOrder = 1
        OnClick = btn_addmemberClick
      end
      object Startdate: TDateTimePicker
        Left = 344
        Top = 29
        Width = 112
        Height = 21
        Date = 42386.964914050930000000
        Time = 42386.964914050930000000
        TabOrder = 2
      end
      object EndDate: TDateTimePicker
        Left = 344
        Top = 68
        Width = 114
        Height = 21
        Date = 42386.964926956020000000
        Time = 42386.964926956020000000
        TabOrder = 3
      end
    end
    object GroupBox4: TGroupBox
      Left = 1
      Top = 105
      Width = 767
      Height = 153
      Align = alClient
      Caption = #51221#48372#49688#51221
      TabOrder = 1
      ExplicitTop = 101
      object GroupBox5: TGroupBox
        Left = 3
        Top = 24
        Width = 126
        Height = 105
        Caption = #44160#49353
        TabOrder = 0
        object Label9: TLabel
          Left = 3
          Top = 24
          Width = 96
          Height = 24
          Caption = #54532#47196#51229#53944#51060#47492
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Edit2: TEdit
          Left = 3
          Top = 64
          Width = 81
          Height = 21
          TabOrder = 0
          Text = #51060#47492
          OnClick = Edit2Click
          OnKeyDown = Edit2KeyDown
        end
        object Button4: TButton
          Left = 90
          Top = 64
          Width = 29
          Height = 25
          Caption = #54869#51064
          TabOrder = 1
          OnClick = Button4Click
        end
      end
      object GroupBox7: TGroupBox
        Left = 135
        Top = 24
        Width = 570
        Height = 105
        Caption = #49688#51221' '#49325#51228
        TabOrder = 1
        object Label10: TLabel
          Left = 3
          Top = 57
          Width = 51
          Height = 24
          Caption = #47604' '#48260' :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 137
          Top = 21
          Width = 83
          Height = 24
          Caption = #49884#51089' '#45216#51676' :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 137
          Top = 51
          Width = 83
          Height = 24
          Caption = #47564#44592' '#45216#51676' :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 3
          Top = 24
          Width = 51
          Height = 24
          Caption = #51060' '#47492' :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Button5: TButton
          Left = 512
          Top = 21
          Width = 49
          Height = 36
          Caption = #49688#51221
          TabOrder = 0
          OnClick = Button5Click
        end
        object Button6: TButton
          Left = 512
          Top = 69
          Width = 49
          Height = 33
          Caption = #49325#51228
          TabOrder = 1
          OnClick = Button6Click
        end
        object GroupBox6: TGroupBox
          Left = 329
          Top = 21
          Width = 177
          Height = 68
          Caption = #51652#54665#49345#54889
          TabOrder = 2
          object Label13: TLabel
            Left = 3
            Top = 46
            Width = 22
            Height = 13
            Caption = #51456#48708
          end
          object Label14: TLabel
            Left = 147
            Top = 46
            Width = 22
            Height = 13
            Caption = #51333#47308
          end
          object Label15: TLabel
            Left = 75
            Top = 46
            Width = 22
            Height = 13
            Caption = #51652#54665
          end
          object STATUS_1: TTrackBar
            Left = 2
            Top = 15
            Width = 173
            Height = 25
            Align = alTop
            Max = 30
            Min = 10
            PageSize = 10
            Frequency = 10
            Position = 10
            TabOrder = 0
            ExplicitLeft = 3
          end
        end
        object Edit3: TEdit
          Left = 60
          Top = 30
          Width = 71
          Height = 21
          TabOrder = 3
          Text = 'Edit3'
        end
        object Button7: TButton
          Left = 60
          Top = 57
          Width = 71
          Height = 25
          Caption = #47604#48260#44288#47532
          TabOrder = 4
          OnClick = Button7Click
        end
        object startdate_1: TDateTimePicker
          Left = 226
          Top = 32
          Width = 97
          Height = 21
          Date = 42387.070396215280000000
          Time = 42387.070396215280000000
          TabOrder = 5
        end
        object enddate_1: TDateTimePicker
          Left = 226
          Top = 59
          Width = 97
          Height = 21
          Date = 42387.070414270830000000
          Time = 42387.070414270830000000
          TabOrder = 6
        end
      end
    end
  end
end
