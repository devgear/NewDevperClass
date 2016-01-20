object MemSearchForm: TMemSearchForm
  Left = 0
  Top = 0
  Anchors = [akLeft, akTop, akRight, akBottom]
  Caption = #47716#48260#51312#54924
  ClientHeight = 294
  ClientWidth = 659
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 659
    Height = 294
    Align = alClient
    Anchors = [akLeft, akRight]
    Color = clGradientActiveCaption
    ParentBackground = False
    TabOrder = 0
    object Label3: TLabel
      Left = 55
      Top = 13
      Width = 33
      Height = 13
      Alignment = taCenter
      Caption = #44160#49353#47749
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
    object Label4: TLabel
      Left = 441
      Top = 104
      Width = 22
      Height = 13
      Alignment = taCenter
      Caption = #49457#54632
      Layout = tlCenter
    end
    object Label5: TLabel
      Left = 430
      Top = 144
      Width = 33
      Height = 13
      Alignment = taCenter
      Caption = #50672#46973#52376
      Layout = tlCenter
    end
    object Label6: TLabel
      Left = 430
      Top = 179
      Width = 33
      Height = 13
      Alignment = taCenter
      Caption = #49548#49549#54016
      Layout = tlCenter
    end
    object DBGrid1: TDBGrid
      Left = 32
      Top = 105
      Width = 289
      Height = 136
      DataSource = Dm.MemDS
      DrawingStyle = gdsGradient
      Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'M_NAME'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M_PH'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'rookup'
          Width = 100
          Visible = True
        end>
    end
    object Edit1: TEdit
      Left = 94
      Top = 13
      Width = 121
      Height = 21
      TabOrder = 1
      OnChange = Edit1Change
    end
    object DBEdit1: TDBEdit
      Left = 469
      Top = 101
      Width = 138
      Height = 21
      DataField = 'M_NAME'
      DataSource = Dm.MemDS
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 469
      Top = 141
      Width = 138
      Height = 21
      DataField = 'M_PH'
      DataSource = Dm.MemDS
      TabOrder = 3
    end
    object Button1: TButton
      Left = 408
      Top = 228
      Width = 75
      Height = 25
      Caption = #51077#47141
      TabOrder = 4
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 489
      Top = 228
      Width = 75
      Height = 25
      Caption = #49325#51228
      TabOrder = 5
      OnClick = Button2Click
    end
    object Button4: TButton
      Left = 489
      Top = 259
      Width = 75
      Height = 25
      Caption = #51200#51109
      TabOrder = 6
      OnClick = Button4Click
    end
    object Button3: TButton
      Left = 408
      Top = 259
      Width = 75
      Height = 25
      Caption = #51077#47141' '#52712#49548
      TabOrder = 7
      OnClick = Button3Click
    end
    object Button6: TButton
      Left = 570
      Top = 228
      Width = 75
      Height = 25
      Caption = #49688#51221
      TabOrder = 8
      OnClick = Button6Click
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 469
      Top = 179
      Width = 145
      Height = 21
      DataField = 'rookup'
      DataSource = Dm.MemDS
      TabOrder = 9
    end
    object Button5: TButton
      Left = 570
      Top = 259
      Width = 75
      Height = 25
      Caption = #51312#54924
      TabOrder = 10
      OnClick = Button5Click
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 32
    Top = 74
    Width = 288
    Height = 25
    DataSource = Dm.MemDS
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 1
  end
  object MEMQuery: TFDQuery
    Active = True
    Connection = Dm.FDConnection1
    SQL.Strings = (
      'SELECT * FROM MEMBER;')
    Left = 528
    Top = 40
    object MEMQueryM_ID: TIntegerField
      FieldName = 'M_ID'
      Origin = 'M_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object MEMQueryM_NAME: TWideStringField
      DisplayLabel = #49457#47749
      DisplayWidth = 30
      FieldName = 'M_NAME'
      Origin = 'M_NAME'
      Size = 120
    end
    object MEMQueryM_PH: TWideStringField
      DisplayLabel = #50672#46973#52376
      DisplayWidth = 30
      FieldName = 'M_PH'
      Origin = 'M_PH'
      Size = 200
    end
    object MEMQueryM_TEAM: TIntegerField
      DisplayLabel = #49548#49549#54016
      DisplayWidth = 20
      FieldName = 'M_TEAM'
      Origin = 'M_TEAM'
    end
  end
  object MemQuerySource: TDataSource
    DataSet = MEMQuery
    Left = 592
    Top = 40
  end
end
