object DeptSearchForm: TDeptSearchForm
  Left = 0
  Top = 0
  Caption = #48512#49436#51312#54924
  ClientHeight = 236
  ClientWidth = 659
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
    Width = 659
    Height = 236
    Align = alClient
    Color = clGradientActiveCaption
    ParentBackground = False
    TabOrder = 0
    ExplicitHeight = 372
    object Label3: TLabel
      Left = 47
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
      Left = 310
      Top = 52
      Width = 36
      Height = 13
      Alignment = taCenter
      Caption = #48512#49436' '#47749
      Layout = tlCenter
    end
    object Label5: TLabel
      Left = 310
      Top = 109
      Width = 47
      Height = 13
      Alignment = taCenter
      Caption = #49548#49549' '#54016#47749
      Layout = tlCenter
    end
    object DBGrid1: TDBGrid
      Left = 64
      Top = 74
      Width = 217
      Height = 138
      DataSource = Dm.DeptDS
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
          FieldName = 'D_DEPT'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'D_TEAM'
          Width = 100
          Visible = True
        end>
    end
    object DBNavigator1: TDBNavigator
      Left = 64
      Top = 50
      Width = 216
      Height = 18
      DataSource = Dm.DeptDS
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 86
      Top = 13
      Width = 121
      Height = 21
      TabOrder = 2
      OnChange = Edit1Change
    end
    object DBEdit1: TDBEdit
      Left = 385
      Top = 49
      Width = 121
      Height = 21
      DataField = 'D_DEPT'
      DataSource = Dm.DeptDS
      TabOrder = 3
    end
    object DBEdit2: TDBEdit
      Left = 385
      Top = 106
      Width = 121
      Height = 21
      DataField = 'D_TEAM'
      DataSource = Dm.DeptDS
      TabOrder = 4
    end
    object Button1: TButton
      Left = 304
      Top = 174
      Width = 75
      Height = 25
      Caption = #51077#47141
      TabOrder = 5
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 385
      Top = 174
      Width = 75
      Height = 25
      Caption = #49325#51228
      TabOrder = 6
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 466
      Top = 174
      Width = 75
      Height = 25
      Caption = #51077#47141#52712#49548
      TabOrder = 7
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 547
      Top = 174
      Width = 75
      Height = 25
      Caption = #51200#51109
      TabOrder = 8
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 466
      Top = 205
      Width = 75
      Height = 25
      Caption = #51312#54924
      TabOrder = 9
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 385
      Top = 205
      Width = 75
      Height = 25
      Caption = #49688#51221
      TabOrder = 10
      OnClick = Button6Click
    end
  end
  object DeptQuery: TFDQuery
    Active = True
    Connection = Dm.FDConnection1
    SQL.Strings = (
      'SELECT * FROM DEPT;')
    Left = 528
    Top = 112
    object DeptQueryD_ID: TIntegerField
      FieldName = 'D_ID'
      Origin = 'D_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object DeptQueryD_DEPT: TWideStringField
      DisplayLabel = #48512#49436' '#47749
      DisplayWidth = 80
      FieldName = 'D_DEPT'
      Origin = 'D_DEPT'
      Size = 120
    end
    object DeptQueryD_TEAM: TWideStringField
      DisplayLabel = #49548#49549' '#54016
      DisplayWidth = 80
      FieldName = 'D_TEAM'
      Origin = 'D_TEAM'
      Size = 120
    end
  end
  object DeptQuerySource: TDataSource
    DataSet = DeptQuery
    Left = 600
    Top = 112
  end
end
