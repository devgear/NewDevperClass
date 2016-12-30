object SearchForm: TSearchForm
  Left = 0
  Top = 0
  Caption = #51312#54924#54616#44592
  ClientHeight = 454
  ClientWidth = 713
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 713
    Height = 57
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 79
      Top = 11
      Width = 12
      Height = 13
      Caption = #50900
    end
    object SearchEdit: TEdit
      Left = 448
      Top = 8
      Width = 121
      Height = 21
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 0
    end
    object SearchCombo: TComboBox
      Left = 336
      Top = 8
      Width = 106
      Height = 21
      ImeName = 'Microsoft Office IME 2007'
      ItemIndex = 0
      TabOrder = 1
      Text = #47928#49436' '#47749
      Items.Strings = (
        #47928#49436' '#47749)
    end
    object SearchButton: TButton
      Left = 584
      Top = 6
      Width = 121
      Height = 25
      Caption = #44160#49353
      TabOrder = 2
      OnClick = SearchButtonClick
    end
    object Check_access: TCheckBox
      Left = 16
      Top = 35
      Width = 97
      Height = 17
      Caption = #44208#51228' '#50756#47308
      Checked = True
      State = cbChecked
      TabOrder = 3
    end
    object Check_wait: TCheckBox
      Left = 111
      Top = 35
      Width = 97
      Height = 17
      Caption = #44208#51228' '#45824#44592#51473
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
    object Check_Return: TCheckBox
      Left = 208
      Top = 35
      Width = 97
      Height = 17
      Caption = #48152#47140
      Checked = True
      State = cbChecked
      TabOrder = 5
    end
    object MonthCombo: TComboBox
      Left = 16
      Top = 8
      Width = 57
      Height = 21
      ImeName = 'Microsoft Office IME 2007'
      ItemIndex = 0
      TabOrder = 6
      Text = '1'
      Items.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '10'
        '11'
        '12')
    end
  end
  object ComboBox1: TComboBox
    Left = 160
    Top = 456
    Width = 145
    Height = 21
    ImeName = 'Microsoft Office IME 2007'
    TabOrder = 1
    Text = 'ComboBox1'
  end
  object SearchGrid: TDBGrid
    Left = 0
    Top = 57
    Width = 713
    Height = 397
    Align = alClient
    DataSource = SearchSource
    ImeName = 'Microsoft Office IME 2007'
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object SearchSource: TDataSource
    DataSet = SearchQuery
    Left = 648
    Top = 128
  end
  object SearchQuery: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = dm.DSDConnection
    DataSet.CommandText = 'select * from settle'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SearchQueryCalcFields
    Left = 648
    Top = 72
    object SearchQuerySETTLE_NO: TIntegerField
      Alignment = taCenter
      DisplayLabel = #47928#49436#48264#54840
      FieldName = 'SETTLE_NO'
      Required = True
    end
    object SearchQuerySETTLE_NM: TStringField
      Alignment = taCenter
      DisplayLabel = #47928#49436#47749
      DisplayWidth = 30
      FieldName = 'SETTLE_NM'
      Size = 100
    end
    object SearchQuerySETTLE_CONT: TStringField
      Alignment = taCenter
      FieldName = 'SETTLE_CONT'
      Visible = False
      Size = 8000
    end
    object SearchQuerySETTLE_WRITE_DT: TDateField
      Alignment = taCenter
      DisplayLabel = #51089#49457#51068
      FieldName = 'SETTLE_WRITE_DT'
    end
    object SearchQuerysender_nm: TStringField
      Alignment = taCenter
      DisplayLabel = #49688'    '#49888
      FieldKind = fkLookup
      FieldName = 'sender_nm'
      LookupDataSet = dm.UserTable
      LookupKeyFields = 'EMP_NO'
      LookupResultField = 'EMP_NM'
      KeyFields = 'SETTLE_SENDER'
      Lookup = True
    end
    object SearchQueryrecver_nm: TStringField
      Alignment = taCenter
      DisplayLabel = #48156'    '#49888
      FieldKind = fkLookup
      FieldName = 'recver_nm'
      LookupDataSet = dm.UserTable
      LookupKeyFields = 'EMP_NO'
      LookupResultField = 'EMP_NM'
      KeyFields = 'SETTLE_RECVER'
      Lookup = True
    end
    object SearchQuerysettle_yn_nm: TStringField
      DisplayLabel = #44208#51228#50668#48512
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'settle_yn_nm'
      Calculated = True
    end
    object SearchQuerySETTLE_YN: TStringField
      Alignment = taCenter
      DisplayLabel = #44208#51228' '#50668#48512
      FieldName = 'SETTLE_YN'
      Visible = False
      Size = 2
    end
    object SearchQuerySETTLE_DT: TDateField
      Alignment = taCenter
      DisplayLabel = #44208#51228' '#51068#51088
      FieldName = 'SETTLE_DT'
    end
    object SearchQuerySETTLE_READ_YN: TStringField
      Alignment = taCenter
      FieldName = 'SETTLE_READ_YN'
      Visible = False
      Size = 1
    end
    object SearchQuerySETTLE_KIND: TStringField
      Alignment = taCenter
      FieldName = 'SETTLE_KIND'
      Visible = False
      Size = 4
    end
    object SearchQuerySETTLE_SENDER: TStringField
      Alignment = taCenter
      FieldName = 'SETTLE_SENDER'
      Required = True
      Visible = False
      Size = 8
    end
    object SearchQuerySETTLE_RECVER: TStringField
      Alignment = taCenter
      FieldName = 'SETTLE_RECVER'
      Required = True
      Visible = False
      Size = 8
    end
  end
end
