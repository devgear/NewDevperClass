object DM: TDM
  OldCreateOrder = False
  Height = 294
  Width = 412
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=D:\'#45944#54028#51060#44284#51221'\project\PROJECT2.GDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'CharacterSet=UTF8'
      'DriverID=IB')
    Connected = True
    Left = 112
    Top = 16
  end
  object Pro: TFDTable
    Active = True
    AfterInsert = ProAfterInsert
    IndexFieldNames = 'P_ID'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'PROJECT'
    TableName = 'PROJECT'
    Left = 112
    Top = 64
    object ProP_ID: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = #54532#47196#51229#53944' ID'
      DisplayWidth = 12
      FieldName = 'P_ID'
      Origin = 'P_ID'
      Required = True
    end
    object ProP_NAME: TWideStringField
      DisplayLabel = #54532#47196#51229#53944#47749
      DisplayWidth = 13
      FieldName = 'P_NAME'
      Origin = 'P_NAME'
      Required = True
      Size = 200
    end
    object ProP_STARTDATE: TSQLTimeStampField
      DisplayLabel = #54532#47196#51229#53944#49884#51089#51068
      DisplayWidth = 17
      FieldName = 'P_STARTDATE'
      Origin = 'P_STARTDATE'
      DisplayFormat = 'yyyy'#45380'mm'#50900'dd'#51068
      EditMask = '!9999/99/00;1;_'
    end
    object ProP_ENDDATE: TSQLTimeStampField
      DisplayLabel = #54532#47196#51229#53944#51333#47308#51068
      DisplayWidth = 18
      FieldName = 'P_ENDDATE'
      Origin = 'P_ENDDATE'
      DisplayFormat = 'yyyyy'#45380'mm'#50900'dd'#51068
      EditMask = '!9999/99/00;1;_'
    end
    object ProP_MANAGER_ID: TIntegerField
      DisplayLabel = #44288#47532#51088' '#47749
      DisplayWidth = 16
      FieldName = 'P_MANAGER_ID'
      Origin = 'P_MANAGER_ID'
    end
    object ProP_MEMBERCOUNT: TIntegerField
      DisplayLabel = #51064#50896#49688
      DisplayWidth = 18
      FieldName = 'P_MEMBERCOUNT'
      Origin = 'P_MEMBERCOUNT'
      DisplayFormat = '#'#47749
    end
    object ProP_STATUS: TIntegerField
      DisplayLabel = #51652#54665#49345#53468
      DisplayWidth = 12
      FieldName = 'P_STATUS'
      Origin = 'P_STATUS'
      DisplayFormat = '###%'
    end
  end
  object ProSource: TDataSource
    DataSet = Pro
    Left = 176
    Top = 64
  end
  object Bu: TFDTable
    Active = True
    IndexFieldNames = 'D_ID'
    AggregatesActive = True
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'DEPT'
    TableName = 'DEPT'
    Left = 112
    Top = 176
    object BuD_ID: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'ID'
      DisplayWidth = 12
      FieldName = 'D_ID'
      Origin = 'D_ID'
      Required = True
    end
    object BuD_DEPT: TWideStringField
      DisplayLabel = #48512#49436#47749
      DisplayWidth = 15
      FieldName = 'D_DEPT'
      Origin = 'D_DEPT'
      Size = 120
    end
    object BuD_TEAM: TWideStringField
      DisplayLabel = #49548#49549#47749
      DisplayWidth = 15
      FieldName = 'D_TEAM'
      Origin = 'D_TEAM'
      Size = 120
    end
  end
  object SaSource: TDataSource
    DataSet = Sa
    Left = 176
    Top = 120
  end
  object BuSource: TDataSource
    DataSet = Bu
    Left = 176
    Top = 176
  end
  object Sa: TFDTable
    Active = True
    AfterInsert = SaAfterInsert
    IndexFieldNames = 'M_ID'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'MEMBER'
    TableName = 'MEMBER'
    Left = 112
    Top = 120
    object SaM_ID: TIntegerField
      DisplayLabel = 'ID'
      DisplayWidth = 12
      FieldName = 'M_ID'
      Origin = 'M_ID'
      Required = True
    end
    object SaM_NAME: TWideStringField
      DisplayLabel = #49324#50896#51060#47492
      DisplayWidth = 17
      FieldName = 'M_NAME'
      Origin = 'M_NAME'
      Size = 120
    end
    object SaM_TEAM: TIntegerField
      DisplayLabel = #49548#49549#47749
      DisplayWidth = 12
      FieldName = 'M_TEAM'
      Origin = 'M_TEAM'
    end
  end
end
