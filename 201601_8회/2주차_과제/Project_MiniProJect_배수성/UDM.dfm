object Dm: TDm
  OldCreateOrder = False
  Height = 361
  Width = 462
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=E:\'#45944#54028#51060#44284#51221'\'#49352' '#54260#45908'\PROJECT2.GDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=IB')
    Connected = True
    Left = 144
    Top = 56
  end
  object FDproTable: TFDTable
    Active = True
    IndexFieldNames = 'P_ID'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'PROJECT'
    TableName = 'PROJECT'
    Left = 256
    Top = 136
    object FDproTableP_ID: TIntegerField
      DisplayLabel = #54532#47196#51229#53944' '#48264#54840
      FieldName = 'P_ID'
      Origin = 'P_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDproTableP_NAME: TWideStringField
      DisplayLabel = #54532#47196#51229#53944' '#51060#47492
      FieldName = 'P_NAME'
      Origin = 'P_NAME'
      Required = True
      Size = 200
    end
    object FDproTableP_STARTDATE: TSQLTimeStampField
      DisplayLabel = #54532#47196#51229#53944' '#49884#51089#51068
      FieldName = 'P_STARTDATE'
      Origin = 'P_STARTDATE'
    end
    object FDproTableP_ENDDATE: TSQLTimeStampField
      DisplayLabel = #54532#47196#51229#53944' '#51333#47308#51068
      FieldName = 'P_ENDDATE'
      Origin = 'P_ENDDATE'
    end
    object FDproTableP_MANAGER_ID: TIntegerField
      DisplayLabel = #54532#47196#51229#53944' '#44288#47532#51088
      FieldName = 'P_MANAGER_ID'
      Origin = 'P_MANAGER_ID'
    end
    object FDproTableP_MEMBERCOUNT: TIntegerField
      DisplayLabel = #52280#50668#51064#50896
      FieldName = 'P_MEMBERCOUNT'
      Origin = 'P_MEMBERCOUNT'
    end
    object FDproTableP_STATUS: TIntegerField
      DisplayLabel = #54788#54889
      FieldName = 'P_STATUS'
      Origin = 'P_STATUS'
    end
  end
  object FDMemTable: TFDTable
    Active = True
    IndexFieldNames = 'M_ID'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'MEMBER'
    TableName = 'MEMBER'
    Left = 256
    Top = 192
    object FDMemTableM_ID: TIntegerField
      DisplayLabel = #49324#50896' '#48264#54840
      FieldName = 'M_ID'
      Origin = 'M_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDMemTableM_NAME: TWideStringField
      DisplayLabel = #51060#47492
      FieldName = 'M_NAME'
      Origin = 'M_NAME'
      Size = 120
    end
    object FDMemTableM_TEAM: TIntegerField
      DisplayLabel = #49548#49549
      FieldName = 'M_TEAM'
      Origin = 'M_TEAM'
    end
  end
  object FDdeptTable: TFDTable
    Active = True
    IndexFieldNames = 'D_ID'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'DEPT'
    TableName = 'DEPT'
    Left = 256
    Top = 240
    object FDdeptTableD_ID: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = #48512#49436#53076#46300
      DisplayWidth = 12
      FieldName = 'D_ID'
      Origin = 'D_ID'
      Required = True
    end
    object FDdeptTableD_DEPT: TWideStringField
      DisplayLabel = #48512#49436
      DisplayWidth = 19
      FieldName = 'D_DEPT'
      Origin = 'D_DEPT'
      Size = 120
    end
    object FDdeptTableD_TEAM: TWideStringField
      DisplayLabel = #49548#49549
      DisplayWidth = 144
      FieldName = 'D_TEAM'
      Origin = 'D_TEAM'
      Size = 120
    end
  end
  object FDproSouerce: TDataSource
    DataSet = FDproTable
    Left = 352
    Top = 136
  end
  object FDMemSource: TDataSource
    DataSet = FDMemTable
    Left = 352
    Top = 192
  end
  object FDdeptsource: TDataSource
    DataSet = FDdeptTable
    Left = 352
    Top = 240
  end
end
