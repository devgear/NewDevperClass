object PrjSearchForm: TPrjSearchForm
  Left = 0
  Top = 0
  Anchors = [akLeft, akTop, akRight, akBottom]
  Caption = #54532#47196#51229#53944' '#54200#51665
  ClientHeight = 379
  ClientWidth = 730
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
    Width = 730
    Height = 379
    Align = alClient
    Color = clGradientActiveCaption
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      730
      379)
    object Label4: TLabel
      Left = 85
      Top = 179
      Width = 58
      Height = 13
      Alignment = taCenter
      Caption = #54532#47196#51229#53944' '#47749
      Layout = tlCenter
    end
    object Label5: TLabel
      Left = 63
      Top = 221
      Width = 80
      Height = 13
      Alignment = taCenter
      Caption = #54532#47196#51229#53944' '#49884#51089#51068
      Layout = tlCenter
    end
    object Label6: TLabel
      Left = 63
      Top = 266
      Width = 80
      Height = 13
      Alignment = taCenter
      Caption = #54532#47196#51229#53944' '#51333#47308#51068
      Layout = tlCenter
    end
    object Label7: TLabel
      Left = 289
      Top = 213
      Width = 94
      Height = 13
      Alignment = taCenter
      Caption = #54532#47196#51229#53944' '#44288#47532#51088' '#47749
      Layout = tlCenter
    end
    object Label8: TLabel
      Left = 300
      Top = 266
      Width = 83
      Height = 13
      Alignment = taCenter
      Caption = #52280#50668' '#51473#51064' '#51064#50896#49688
      Layout = tlCenter
    end
    object Label2: TLabel
      Left = 584
      Top = 200
      Width = 22
      Height = 13
      Caption = #51456#48708
    end
    object Label9: TLabel
      Left = 584
      Top = 229
      Width = 33
      Height = 13
      Caption = #51652#54665#51473
    end
    object Label10: TLabel
      Left = 584
      Top = 260
      Width = 22
      Height = 13
      Caption = #51333#47308
    end
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
    object DBNavigator1: TDBNavigator
      Left = 0
      Top = 43
      Width = 724
      Height = 18
      DataSource = Dm.PrjDS
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Anchors = [akLeft, akRight]
      TabOrder = 0
    end
    object DBEdit4: TDBEdit
      Left = 400
      Top = 263
      Width = 121
      Height = 21
      DataField = 'P_MemberCount'
      DataSource = Dm.PrjDS
      TabOrder = 1
    end
    object DBEdit5: TDBEdit
      Left = 160
      Top = 266
      Width = 121
      Height = 21
      DataField = 'P_EndDate'
      DataSource = Dm.PrjDS
      MaxLength = 10
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 160
      Top = 221
      Width = 121
      Height = 21
      DataField = 'P_StartDate'
      DataSource = Dm.PrjDS
      MaxLength = 10
      TabOrder = 3
    end
    object DBEdit1: TDBEdit
      Left = 160
      Top = 176
      Width = 121
      Height = 21
      DataField = 'P_NAME'
      DataSource = Dm.PrjDS
      TabOrder = 4
    end
    object Button1: TButton
      Left = 143
      Top = 300
      Width = 75
      Height = 25
      Caption = #51077#47141
      TabOrder = 5
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 305
      Top = 300
      Width = 75
      Height = 25
      Caption = #49325#51228
      TabOrder = 6
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 224
      Top = 300
      Width = 75
      Height = 25
      Caption = #51077#47141#52712#49548
      TabOrder = 7
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 386
      Top = 300
      Width = 75
      Height = 25
      Caption = #51200#51109
      TabOrder = 8
      OnClick = Button4Click
    end
    object Button6: TButton
      Left = 467
      Top = 300
      Width = 75
      Height = 25
      Caption = #49688#51221
      TabOrder = 9
      OnClick = Button6Click
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 400
      Top = 213
      Width = 121
      Height = 21
      DataField = 'rookup'
      DataSource = Dm.PrjDS
      TabOrder = 10
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 539
      Top = 178
      Width = 185
      Height = 105
      Caption = #51652#54665#49345#53468
      DataField = 'P_STATUS'
      DataSource = Dm.PrjDS
      Items.Strings = (
        '10'
        '20'
        '30')
      TabOrder = 11
    end
    object Button7: TButton
      Left = 305
      Top = 331
      Width = 75
      Height = 25
      Caption = #51312#54924
      TabOrder = 12
      OnClick = Button7Click
    end
    object Edit1: TEdit
      Left = 94
      Top = 13
      Width = 121
      Height = 21
      TabOrder = 13
      OnChange = Edit1Change
    end
    object DBGrid1: TDBGrid
      Left = 0
      Top = 67
      Width = 730
      Height = 106
      DataSource = Dm.PrjDS
      DrawingStyle = gdsGradient
      Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 14
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'P_ID'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'P_NAME'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P_STARTDATE'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P_ENDDATE'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'rookup'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P_MANAGER_ID'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'P_MEMBERCOUNT'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P_STATUS'
          Visible = True
        end>
    end
  end
  object PrjQuery: TFDQuery
    Active = True
    Connection = Dm.FDConnection1
    SQL.Strings = (
      'Select *From PROJECT;')
    Left = 584
    Top = 304
    object PrjQueryP_NAME: TWideStringField
      DisplayLabel = #54532#47196#51229#53944' '#47749
      DisplayWidth = 30
      FieldName = 'P_NAME'
      Origin = 'P_NAME'
      Required = True
      Size = 200
    end
    object PrjQueryP_STARTDATE: TSQLTimeStampField
      DisplayLabel = #54532#47196#51229#53944' '#49884#51089#51068
      DisplayWidth = 30
      FieldName = 'P_STARTDATE'
      Origin = 'P_STARTDATE'
      DisplayFormat = 'yyyy'#45380'mm'#50900'dd'#51068
      EditMask = '!9999/99/00;1;_'
    end
    object PrjQueryP_ENDDATE: TSQLTimeStampField
      DisplayLabel = #54532#47196#51229#53944' '#51333#47308#51068
      DisplayWidth = 30
      FieldName = 'P_ENDDATE'
      Origin = 'P_ENDDATE'
      DisplayFormat = 'yyyy'#45380'mm'#50900'dd'#51068
      EditMask = '!9999/99/00;1;'
    end
    object PrjQueryP_MEMBERCOUNT: TIntegerField
      DisplayLabel = #52280#50668' '#51473#51064' '#51064#50896#49688
      DisplayWidth = 10
      FieldName = 'P_MEMBERCOUNT'
      Origin = 'P_MEMBERCOUNT'
    end
    object PrjQueryP_STATUS: TIntegerField
      DisplayLabel = #51652#54665#49345#53468
      DisplayWidth = 10
      FieldName = 'P_STATUS'
      Origin = 'P_STATUS'
    end
    object PrjQueryP_MANAGER_ID: TIntegerField
      FieldName = 'P_MANAGER_ID'
      Origin = 'P_MANAGER_ID'
      Visible = False
    end
    object PrjQueryP_ID: TIntegerField
      FieldName = 'P_ID'
      Origin = 'P_ID'
      Required = True
    end
  end
  object PrjQueryDataSource: TDataSource
    DataSet = PrjQuery
    Left = 664
    Top = 304
  end
end
