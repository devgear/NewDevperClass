object Form9: TForm9
  Left = 0
  Top = 0
  Caption = 'Form9'
  ClientHeight = 509
  ClientWidth = 804
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
    Width = 804
    Height = 90
    Align = alTop
    AutoSize = True
    Padding.Top = 15
    Padding.Right = 20
    Padding.Bottom = 15
    TabOrder = 0
    object Label1: TLabel
      Left = 288
      Top = 24
      Width = 133
      Height = 29
      Align = alCustom
      Caption = #49688#44053' '#49888#52397#54869#51064
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnclose: TButton
      Left = 708
      Top = 16
      Width = 75
      Height = 58
      Align = alRight
      Caption = #45803#44592
      TabOrder = 0
      OnClick = btncloseClick
    end
    object Button1: TButton
      Left = 17
      Top = 16
      Width = 75
      Height = 58
      Caption = #52636#49437#48512#47564#46308#44592
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object Panel2: TPanel
    Left = 535
    Top = 90
    Width = 269
    Height = 419
    Align = alRight
    TabOrder = 1
    object Label2: TLabel
      Left = 1
      Top = 1
      Width = 267
      Height = 13
      Align = alTop
      ExplicitWidth = 3
    end
    object DBGrid2: TDBGrid
      Left = 1
      Top = 14
      Width = 267
      Height = 404
      Align = alClient
      DataSource = DM.signupSource
      Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'SIGN_SDTNUM'
          Title.Caption = #54617#48264
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SIGN_STDNAME'
          Title.Caption = #51060#47492
          Width = 100
          Visible = True
        end>
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 90
    Width = 535
    Height = 419
    Align = alClient
    DataSource = DM.SUBJECTSource
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'SBJT_DIV'
        Title.Caption = #51060#49688#44396#48516
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SBJT_NUM'
        Title.Caption = #54617#49688#48264#54840
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SBJT_NAME'
        Title.Caption = #44284#47785#47749
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SBJT_CLASS'
        Title.Caption = #48516#48152
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SBJT_PROFNAME'
        Title.Caption = #44368#49688#51060#47492
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SBJT_TOTAL'
        Title.Caption = #52572#45824' '#49688#44053#51064#50896
        Width = 80
        Visible = True
      end>
  end
end
