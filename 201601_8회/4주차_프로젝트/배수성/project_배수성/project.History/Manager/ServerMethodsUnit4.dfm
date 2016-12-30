object ServerMethods4: TServerMethods4
  OldCreateOrder = False
  Height = 500
  Width = 636
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\Users\LG-P\Desktop\project.History\Data\HISTORY2.IB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=IB')
    Connected = True
    LoginPrompt = False
    Left = 96
    Top = 40
  end
  object TimesFDT: TFDTable
    Active = True
    IndexFieldNames = 'H_ID'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'TIMES'
    TableName = 'TIMES'
    Left = 296
    Top = 48
    object TimesFDTH_ID: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = #48264#54840
      FieldName = 'H_ID'
      Origin = 'H_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TimesFDTH_TIMES: TStringField
      DisplayLabel = #49884#45824'('#44397#44032')'
      FieldName = 'H_TIMES'
      Origin = 'H_TIMES'
      Size = 30
    end
  end
  object PersonFDT: TFDTable
    Active = True
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'PERSON'
    TableName = 'PERSON'
    Left = 296
    Top = 112
    object PersonFDTP_ID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'P_ID'
      Origin = 'P_ID'
      Required = True
    end
    object PersonFDTP_NAME: TStringField
      FieldName = 'P_NAME'
      Origin = 'P_NAME'
      Size = 50
    end
    object PersonFDTP_ACHIEVEMENT: TStringField
      FieldName = 'P_ACHIEVEMENT'
      Origin = 'P_ACHIEVEMENT'
      Size = 500
    end
    object PersonFDTP_PHOTO: TBlobField
      FieldName = 'P_PHOTO'
      Origin = 'P_PHOTO'
    end
    object PersonFDTP_H_ID: TIntegerField
      FieldName = 'P_H_ID'
      Origin = 'P_H_ID'
    end
  end
  object TimesProvider: TDataSetProvider
    DataSet = TimesFDT
    Left = 384
    Top = 48
  end
  object PersonProvider: TDataSetProvider
    DataSet = PersonFDT
    Left = 384
    Top = 112
  end
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 96
    Top = 104
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 96
    Top = 168
  end
end
