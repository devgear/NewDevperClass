object DM: TDM
  OldCreateOrder = False
  Height = 327
  Width = 254
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\Project_MiniProject\data\PROJECT2.GDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'CharacterSet=UTF8'
      'DriverID=IB')
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 32
  end
  object DEPTTable: TFDTable
    Active = True
    IndexFieldNames = 'D_ID'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'DEPT'
    TableName = 'DEPT'
    Left = 48
    Top = 80
    object DEPTTableD_ID: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = #48512#49436#48264#54840
      FieldName = 'D_ID'
      Origin = 'D_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object DEPTTableD_DEPT: TWideStringField
      DisplayLabel = #48512#49436#47749
      DisplayWidth = 10
      FieldName = 'D_DEPT'
      Origin = 'D_DEPT'
      Size = 120
    end
    object DEPTTableD_TEAM: TWideStringField
      DisplayLabel = #54016#47749
      DisplayWidth = 10
      FieldName = 'D_TEAM'
      Origin = 'D_TEAM'
      Size = 120
    end
  end
  object MEMBERTable: TFDTable
    Active = True
    IndexFieldNames = 'M_ID'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'MEMBER'
    TableName = 'MEMBER'
    Left = 48
    Top = 128
    object MEMBERTableM_ID: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = #49324#50896' '#48264#54840
      DisplayWidth = 12
      FieldName = 'M_ID'
      Origin = 'M_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object MEMBERTableM_NAME: TWideStringField
      DisplayLabel = #49324#50896' '#47749
      DisplayWidth = 28
      FieldName = 'M_NAME'
      Origin = 'M_NAME'
      Size = 120
    end
    object MEMBERTableM_TEAM: TIntegerField
      DisplayLabel = #54016' '#48264#54840
      DisplayWidth = 19
      FieldName = 'M_TEAM'
      Origin = 'M_TEAM'
    end
    object MEMBERTableM_M_Name: TStringField
      DisplayLabel = #54016' '#51060#47492
      FieldKind = fkLookup
      FieldName = 'M_M_Name'
      LookupDataSet = DEPTTable
      LookupKeyFields = 'D_ID'
      LookupResultField = 'D_TEAM'
      KeyFields = 'M_TEAM'
      Size = 30
      Lookup = True
    end
  end
  object PROJECTTable: TFDTable
    Active = True
    IndexFieldNames = 'P_ID'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'PROJECT'
    TableName = 'PROJECT'
    Left = 48
    Top = 176
    object PROJECTTableP_ID: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = #54532#47196#51229#53944#48264#54840
      DisplayWidth = 14
      FieldName = 'P_ID'
      Origin = 'P_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object PROJECTTableP_NAME: TWideStringField
      DisplayLabel = #54532#47196#51229#53944#51060#47492
      DisplayWidth = 18
      FieldName = 'P_NAME'
      Origin = 'P_NAME'
      Required = True
      Size = 200
    end
    object PROJECTTableP_STARTDATE: TSQLTimeStampField
      DisplayLabel = #49884#51089#45216#51676
      DisplayWidth = 10
      FieldName = 'P_STARTDATE'
      Origin = 'P_STARTDATE'
      DisplayFormat = 'YY'#45380'MM'#50900'DD'#51068
    end
    object PROJECTTableP_ENDDATE: TSQLTimeStampField
      DisplayLabel = #47564#44592#45216#51676
      DisplayWidth = 10
      FieldName = 'P_ENDDATE'
      Origin = 'P_ENDDATE'
      DisplayFormat = 'YY'#45380'MM'#50900'DD'#51068
    end
    object PROJECTTableP_MANAGER_ID: TIntegerField
      DisplayLabel = #44288#47532#51088' '#48264#54840
      DisplayWidth = 13
      FieldName = 'P_MANAGER_ID'
      Origin = 'P_MANAGER_ID'
    end
    object PROJECTTableP_MANAGER_NAME: TStringField
      DisplayLabel = #44288#47532#51088' '#51060#47492
      DisplayWidth = 13
      FieldKind = fkLookup
      FieldName = 'P_MANAGER_NAME'
      LookupDataSet = MEMBERTable
      LookupKeyFields = 'M_ID'
      LookupResultField = 'M_NAME'
      KeyFields = 'P_MANAGER_ID'
      Lookup = True
    end
    object PROJECTTableP_MEMBERCOUNT: TIntegerField
      DisplayLabel = #47604#48260#49688
      DisplayWidth = 8
      FieldName = 'P_MEMBERCOUNT'
      Origin = 'P_MEMBERCOUNT'
    end
    object PROJECTTableP_STATUS: TIntegerField
      DisplayLabel = #51652#54665#49345#53468
      DisplayWidth = 12
      FieldName = 'P_STATUS'
      Origin = 'P_STATUS'
    end
  end
  object PRO_MEMBERTable: TFDTable
    Active = True
    IndexFieldNames = 'M_ID'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'PROJECTMEMBER'
    TableName = 'PROJECTMEMBER'
    Left = 48
    Top = 224
    object PRO_MEMBERTableR_ID: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = #44288#47532#48264#54840
      FieldName = 'R_ID'
      Origin = 'R_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object PRO_MEMBERTableP_ID: TIntegerField
      DisplayLabel = #54532#47196#51117#53944' '#48264#54840
      FieldName = 'P_ID'
      Origin = 'P_ID'
    end
    object PRO_MEMBERTableM_ID: TIntegerField
      DisplayLabel = #49324#50896#48264#54840
      FieldName = 'M_ID'
      Origin = 'M_ID'
    end
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 64
    Top = 32
  end
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 56
    Top = 32
  end
  object DSDEPT: TDataSource
    DataSet = DEPTTable
    Left = 152
    Top = 88
  end
  object DSMEMBER: TDataSource
    DataSet = MEMBERTable
    Left = 152
    Top = 136
  end
  object DSPRO_MEMBER: TDataSource
    DataSet = PRO_MEMBERTable
    Left = 152
    Top = 224
  end
  object DSPROJECT: TDataSource
    DataSet = PROJECTTable
    Left = 152
    Top = 184
  end
end
