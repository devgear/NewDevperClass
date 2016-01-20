object DM: TDM
  OldCreateOrder = False
  Height = 314
  Width = 389
  object FDConnection1: TFDConnection
    Params.Strings = (
      'ConnectionDef=project')
    Connected = True
    Left = 224
    Top = 72
  end
  object tblProject: TFDTable
    Active = True
    IndexFieldNames = 'P_ID'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'PROJECT'
    TableName = 'PROJECT'
    Left = 56
    Top = 184
    object tblProjectP_ID: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = #48264#54840
      FieldName = 'P_ID'
      KeyFields = 'P_ID'
      Origin = 'P_ID'
      Required = True
    end
    object tblProjectP_NAME: TWideStringField
      DisplayLabel = #51060#47492
      FieldName = 'P_NAME'
      KeyFields = 'P_NAME'
      Origin = 'P_NAME'
      Required = True
      Size = 200
    end
    object tblProjectP_STARTDATE: TSQLTimeStampField
      DisplayLabel = #49884#51089#44592#44036
      FieldName = 'P_STARTDATE'
      KeyFields = 'P_STARTDATE'
      Origin = 'P_STARTDATE'
      DisplayFormat = 'yyyy'#45380'mm'#50900'dd'#51068
      EditMask = '!9999/99/00;1;_'
    end
    object tblProjectP_ENDDATE: TSQLTimeStampField
      DisplayLabel = #51333#47308#44592#44036
      FieldName = 'P_ENDDATE'
      KeyFields = 'P_ENDDATE'
      Origin = 'P_ENDDATE'
      DisplayFormat = 'yyyy'#45380'mm'#50900'dd'#51068
      EditMask = '!9999/99/00;1;_'
    end
    object tblProjectP_MANAGER_ID: TIntegerField
      DisplayLabel = #44288#47532#51088
      FieldName = 'P_MANAGER_ID'
      KeyFields = 'P_MANAGER_ID'
      Origin = 'P_MANAGER_ID'
    end
    object tblProjectP_MEMBERCOUNT: TIntegerField
      DisplayLabel = #52280#50668#51064#50896#49688
      FieldName = 'P_MEMBERCOUNT'
      KeyFields = 'P_MEMBERCOUNT'
      Origin = 'P_MEMBERCOUNT'
      DisplayFormat = #47749
    end
    object tblProjectP_STATUS: TIntegerField
      DisplayLabel = #51652#54665#49345#53468
      FieldName = 'P_STATUS'
      KeyFields = 'P_STATUS'
      Origin = 'P_STATUS'
    end
  end
  object dept: TFDTable
    Active = True
    IndexFieldNames = 'D_ID'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'DEPT'
    TableName = 'DEPT'
    Left = 224
    Top = 184
    object deptD_ID: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = #48512#49436#48264#54840
      FieldName = 'D_ID'
      Origin = 'D_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object deptD_DEPT: TWideStringField
      DisplayLabel = #48512#49436#47749
      FieldName = 'D_DEPT'
      Origin = 'D_DEPT'
      Size = 120
    end
    object deptD_TEAM: TWideStringField
      DisplayLabel = #49548#49549
      FieldName = 'D_TEAM'
      Origin = 'D_TEAM'
      Size = 120
    end
  end
  object projectSource: TDataSource
    DataSet = tblProject
    Left = 56
    Top = 136
  end
  object memberSource: TDataSource
    DataSet = member
    Left = 144
    Top = 136
  end
  object DeptSource: TDataSource
    DataSet = dept
    Left = 224
    Top = 136
  end
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 224
    Top = 8
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 128
    Top = 8
  end
  object manager: TFDTable
    Active = True
    IndexFieldNames = 'R_ID'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'PROJECTMEMBER'
    TableName = 'PROJECTMEMBER'
    Left = 56
    Top = 240
    object managerR_ID: TIntegerField
      DisplayLabel = #44288#47532#51088
      FieldName = 'R_ID'
      Origin = 'R_ID'
      Required = True
    end
    object managerP_ID: TIntegerField
      DisplayLabel = #54532#47196#51229#53944' '#48264#54840
      FieldName = 'P_ID'
      Origin = 'P_ID'
    end
    object managerM_ID: TIntegerField
      DisplayLabel = #49324#50896#48264#54840
      FieldName = 'M_ID'
      Origin = 'M_ID'
    end
  end
  object managerSource: TDataSource
    DataSet = manager
    Left = 144
    Top = 256
  end
  object member: TFDTable
    Active = True
    IndexFieldNames = 'M_ID'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'MEMBER'
    TableName = 'MEMBER'
    Left = 144
    Top = 192
    object memberM_ID: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = #49324#48264
      FieldName = 'M_ID'
      Origin = 'M_ID'
      Required = True
    end
    object memberM_NAME2: TWideStringField
      DisplayLabel = #51060#47492
      FieldName = 'M_NAME'
      Origin = 'M_NAME'
      Size = 120
    end
    object memberM_TEAM: TIntegerField
      DisplayLabel = #49548#49549
      FieldName = 'M_TEAM'
      Origin = 'M_TEAM'
    end
  end
  object SQLDataSet1: TSQLDataSet
    Params = <>
    Left = 288
    Top = 104
  end
end
