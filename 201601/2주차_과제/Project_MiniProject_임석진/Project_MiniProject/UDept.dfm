object DeptForm: TDeptForm
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = #48512#49436#44288#47532
  ClientHeight = 593
  ClientWidth = 803
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
    Top = 0
    Width = 803
    Height = 201
    Align = alTop
    TabOrder = 0
    object GroupBox3: TGroupBox
      Left = 1
      Top = 89
      Width = 801
      Height = 111
      Align = alClient
      Caption = #51221#48372' '#49688#51221
      TabOrder = 0
      object GroupBox4: TGroupBox
        Left = 21
        Top = 18
        Width = 308
        Height = 88
        Caption = #44160#49353
        TabOrder = 0
        object Label1: TLabel
          Left = 19
          Top = 18
          Width = 64
          Height = 23
          Caption = #48512#49436#47749' :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 18
          Top = 47
          Width = 65
          Height = 23
          Caption = #54016'   '#47749' :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Button1: TButton
          Left = 216
          Top = 25
          Width = 45
          Height = 49
          Caption = #44160#49353
          TabOrder = 0
          OnClick = Button1Click
        end
        object Edit1: TEdit
          Left = 89
          Top = 27
          Width = 121
          Height = 21
          TabOrder = 1
          Text = #48512#49436#47484' '#51077#47141#54616#49464#50836
          OnClick = Edit1Click
        end
        object Edit4: TEdit
          Left = 89
          Top = 54
          Width = 121
          Height = 21
          TabOrder = 2
          Text = #54016#47749#51012' '#51077#47141#54616#49464#50836
          OnClick = Edit4Click
        end
      end
      object GroupBox5: TGroupBox
        Left = 351
        Top = 18
        Width = 324
        Height = 89
        Caption = #49325#51228' & '#49688#51221
        TabOrder = 1
        object Label5: TLabel
          Left = 12
          Top = 22
          Width = 64
          Height = 23
          Caption = #48512#49436#47749' :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 11
          Top = 51
          Width = 65
          Height = 23
          Caption = #54016'   '#47749' :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object btn_del: TButton
          Left = 227
          Top = 32
          Width = 42
          Height = 49
          Caption = #49325#51228
          Enabled = False
          TabOrder = 0
          OnClick = btn_delClick
        end
        object btn_ins: TButton
          Left = 275
          Top = 32
          Width = 41
          Height = 49
          Caption = #49688#51221
          Enabled = False
          TabOrder = 1
          OnClick = btn_insClick
        end
        object Edit5: TEdit
          Left = 100
          Top = 32
          Width = 121
          Height = 21
          TabOrder = 2
        end
        object Edit6: TEdit
          Left = 100
          Top = 59
          Width = 121
          Height = 21
          TabOrder = 3
        end
      end
    end
    object GroupBox2: TGroupBox
      Left = 1
      Top = 1
      Width = 801
      Height = 88
      Align = alTop
      Caption = #49888#44508#46321#47197
      TabOrder = 1
      object Label2: TLabel
        Left = 40
        Top = 40
        Width = 64
        Height = 23
        Caption = #48512#49436#47749' :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 372
        Top = 40
        Width = 65
        Height = 23
        Caption = #54016'   '#47749' :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Edit2: TEdit
        Left = 110
        Top = 45
        Width = 121
        Height = 21
        TabOrder = 0
        Text = #48512#49436#47749' '#51077#47141
        OnClick = Edit2Click
      end
      object Edit3: TEdit
        Left = 459
        Top = 45
        Width = 121
        Height = 21
        TabOrder = 1
        Text = #54016#47749' '#51077#47141
        OnClick = Edit3Click
      end
      object Button2: TButton
        Left = 586
        Top = 43
        Width = 89
        Height = 25
        Caption = #49888#44508#46321#47197
        TabOrder = 2
        OnClick = Button2Click
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 201
    Width = 803
    Height = 392
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 1
    ExplicitHeight = 363
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 801
      Height = 390
      Align = alClient
      Caption = #48512#49436#54788#54889
      TabOrder = 0
      ExplicitHeight = 361
      object DBGrid1: TDBGrid
        Left = 2
        Top = 15
        Width = 797
        Height = 373
        Align = alClient
        DataSource = DM.DSDEPT
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
