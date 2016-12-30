object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 377
  ClientWidth = 662
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 16
    Top = 16
    Width = 433
    Height = 153
    DataSource = dsProject
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
        FieldName = 'P_ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P_MEMBERCOUNT'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P_NAME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P_STARTDATE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P_ENDDATE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P_MANAGER_ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P_STATUS'
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 16
    Top = 175
    Width = 433
    Height = 120
    DataSource = dsProjectMember
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 374
    Top = 301
    Width = 75
    Height = 25
    Caption = #49324#50896#52628#44032
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 293
    Top = 301
    Width = 75
    Height = 25
    Caption = #49440#53469#49324#50896#49325#51228
    TabOrder = 3
    OnClick = Button2Click
  end
  object tblProject: TFDTable
    Active = True
    IndexFieldNames = 'P_ID'
    Connection = DataModule8.FDConnection1
    UpdateOptions.UpdateTableName = 'PROJECT'
    TableName = 'PROJECT'
    Left = 472
    Top = 80
  end
  object dsProject: TDataSource
    DataSet = tblProject
    Left = 520
    Top = 80
  end
  object tblMember: TFDTable
    Active = True
    IndexFieldNames = 'M_ID'
    Connection = DataModule8.FDConnection1
    UpdateOptions.UpdateTableName = 'MEMBER'
    TableName = 'MEMBER'
    Left = 472
    Top = 160
  end
  object dsMember: TDataSource
    DataSet = tblMember
    Left = 592
    Top = 168
  end
  object tblProMem: TFDTable
    Active = True
    IndexFieldNames = 'P_ID'
    MasterSource = dsProject
    MasterFields = 'P_ID'
    Connection = DataModule8.FDConnection1
    UpdateOptions.UpdateTableName = 'PROJECTMEMBER'
    TableName = 'PROJECTMEMBER'
    Left = 472
    Top = 232
    object tblProMemR_ID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'R_ID'
      Origin = 'R_ID'
      Required = True
    end
    object tblProMemP_ID: TIntegerField
      FieldName = 'P_ID'
      Origin = 'P_ID'
    end
    object tblProMemM_ID: TIntegerField
      FieldName = 'M_ID'
      Origin = 'M_ID'
    end
    object tblProMemMEMBER: TStringField
      FieldKind = fkLookup
      FieldName = 'MEMBER'
      LookupDataSet = tblMember
      LookupKeyFields = 'M_ID'
      LookupResultField = 'M_NAME'
      KeyFields = 'M_ID'
      Lookup = True
    end
  end
  object dsProjectMember: TDataSource
    DataSet = tblProMem
    Left = 600
    Top = 224
  end
  object qryProjectMemberCount: TFDQuery
    Connection = DataModule8.FDConnection1
    SQL.Strings = (
      'SELECT COUNT(*) FROM PROJECTMEMBER'
      'WHERE P_ID = :P_ID')
    Left = 328
    Top = 192
    ParamData = <
      item
        Name = 'P_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
end
