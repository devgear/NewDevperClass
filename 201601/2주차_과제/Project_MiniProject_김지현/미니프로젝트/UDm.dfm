object Dm: TDm
  OldCreateOrder = False
  Height = 419
  Width = 417
  object FDConnection1: TFDConnection
    Params.Strings = (
      'User_Name=SYSDBA'
      'Database=D:\db\PROJECT2.GDB'
      'Password=masterkey'
      'CharacterSet=UTF8'
      'DriverID=IB')
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 32
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 128
    Top = 32
  end
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 232
    Top = 32
  end
  object PrjTable: TFDTable
    Active = True
    AfterInsert = PrjTableAfterInsert
    AfterPost = PrjTableAfterPost
    IndexFieldNames = 'P_ID'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'PROJECT'
    TableName = 'PROJECT'
    Left = 32
    Top = 112
    object PrjTableP_ID: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = #54532#47196#51229#53944' '#53076#46300
      FieldName = 'P_ID'
      Origin = 'P_ID'
      Required = True
    end
    object PrjTableP_NAME: TWideStringField
      DisplayLabel = #54532#47196#51229#53944' '#47749
      DisplayWidth = 30
      FieldName = 'P_NAME'
      Origin = 'P_NAME'
      Required = True
      Size = 200
    end
    object PrjTableP_STARTDATE: TSQLTimeStampField
      DisplayLabel = #54532#47196#51229#53944' '#49884#51089#51068
      FieldName = 'P_STARTDATE'
      Origin = 'P_STARTDATE'
      DisplayFormat = 'yyyy'#45380'mm'#50900'dd'#51068
      EditMask = '!9999/99/00;1;_'
    end
    object PrjTableP_ENDDATE: TSQLTimeStampField
      DisplayLabel = #54532#47196#51229#53944' '#51333#47308#51068
      FieldName = 'P_ENDDATE'
      Origin = 'P_ENDDATE'
      DisplayFormat = 'yyyy'#45380'mm'#50900'dd'#51068
      EditMask = '!9999/99/00;1;'
    end
    object PrjTablerookup: TStringField
      DisplayLabel = #54532#47196#51229#53944' '#44288#47532#51088
      FieldKind = fkLookup
      FieldName = 'rookup'
      LookupDataSet = MemTable
      LookupKeyFields = 'M_ID'
      LookupResultField = 'M_NAME'
      KeyFields = 'P_MANAGER_ID'
      Lookup = True
    end
    object PrjTableP_MANAGER_ID: TIntegerField
      DisplayLabel = #54532#47196#51229#53944' '#44288#47532#51088' '#47749
      FieldName = 'P_MANAGER_ID'
      Origin = 'P_MANAGER_ID'
    end
    object PrjTableP_MEMBERCOUNT: TIntegerField
      DisplayLabel = #52280#50668' '#51473#51064' '#51064#50896#49688
      FieldName = 'P_MEMBERCOUNT'
      Origin = 'P_MEMBERCOUNT'
    end
    object PrjTableP_STATUS: TIntegerField
      DisplayLabel = #51652#54665#49345#53468
      FieldName = 'P_STATUS'
      Origin = 'P_STATUS'
    end
  end
  object MemTable: TFDTable
    Active = True
    AfterInsert = MemTableAfterInsert
    AfterPost = MemTableAfterPost
    IndexFieldNames = 'M_ID'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'MEMBER'
    TableName = 'MEMBER'
    Left = 32
    Top = 192
    object MemTableM_ID: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = #47716#48260#53076#46300
      FieldName = 'M_ID'
      Origin = 'M_ID'
      Required = True
    end
    object MemTableM_NAME: TWideStringField
      DisplayLabel = #49457#47749
      DisplayWidth = 20
      FieldName = 'M_NAME'
      Origin = 'M_NAME'
      Size = 120
    end
    object MemTableM_TEAM: TIntegerField
      DisplayLabel = #49548#49549' '#54016
      FieldName = 'M_TEAM'
      Origin = 'M_TEAM'
    end
    object MemTableM_PH: TWideStringField
      DisplayLabel = #50672#46973#52376
      FieldName = 'M_PH'
      Origin = 'M_PH'
      Required = True
      Size = 120
    end
    object MemTablerookup: TStringField
      DisplayLabel = #49548#49549#54016
      FieldKind = fkLookup
      FieldName = 'rookup'
      LookupDataSet = DeptTable
      LookupKeyFields = 'D_ID'
      LookupResultField = 'D_TEAM'
      KeyFields = 'M_TEAM'
      Lookup = True
    end
  end
  object DeptTable: TFDTable
    Active = True
    AfterInsert = DeptTableAfterInsert
    AfterPost = DeptTableAfterPost
    IndexFieldNames = 'D_ID'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'DEPT'
    TableName = 'DEPT'
    Left = 32
    Top = 272
    object DeptTableD_ID: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = #48512#49436' '#53076#46300
      FieldName = 'D_ID'
      Origin = 'D_ID'
      Required = True
    end
    object DeptTableD_DEPT: TWideStringField
      DisplayLabel = #48512#49436' '#47749
      FieldName = 'D_DEPT'
      Origin = 'D_DEPT'
      Size = 120
    end
    object DeptTableD_TEAM: TWideStringField
      DisplayLabel = #49548#49549' '#54016
      FieldName = 'D_TEAM'
      Origin = 'D_TEAM'
      Size = 120
    end
  end
  object PrjMeTable: TFDTable
    Active = True
    AfterInsert = PrjMeTableAfterInsert
    AfterPost = PrjMeTableAfterPost
    IndexFieldNames = 'R_ID'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'PROJECTMEMBER'
    TableName = 'PROJECTMEMBER'
    Left = 40
    Top = 344
    object PrjMeTableR_ID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'R_ID'
      Origin = 'R_ID'
      Required = True
    end
    object PrjMeTableP_ID: TIntegerField
      FieldName = 'P_ID'
      Origin = 'P_ID'
    end
    object PrjMeTableM_ID: TIntegerField
      FieldName = 'M_ID'
      Origin = 'M_ID'
    end
    object PrjMeTablep_rook: TIntegerField
      FieldKind = fkLookup
      FieldName = 'p_rook'
      LookupDataSet = PrjTable
      LookupKeyFields = 'P_ID'
      LookupResultField = 'P_ID'
      KeyFields = 'P_ID'
      Lookup = True
    end
    object PrjMeTablem_rook: TIntegerField
      FieldKind = fkLookup
      FieldName = 'm_rook'
      LookupDataSet = MemTable
      LookupKeyFields = 'M_ID'
      LookupResultField = 'M_ID'
      KeyFields = 'M_ID'
      Lookup = True
    end
  end
  object PrjDS: TDataSource
    DataSet = PrjTable
    Left = 128
    Top = 120
  end
  object MemDS: TDataSource
    DataSet = MemTable
    Left = 128
    Top = 200
  end
  object DeptDS: TDataSource
    DataSet = DeptTable
    Left = 128
    Top = 288
  end
  object PrjMeDS: TDataSource
    DataSet = PrjMeTable
    Left = 128
    Top = 352
  end
end
