object ServerMethods1: TServerMethods1
  OldCreateOrder = False
  OnCreate = DSServerModuleCreate
  OnDestroy = DSServerModuleDestroy
  Height = 239
  Width = 461
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Star\Documents\Embarcadero\Studio\Projects\Del' +
        'phi_Project\MEETHERE.IB'
      'User_Name=sysdba'
      'Password=masterkey'
      'CharacterSet=UTF8'
      'Port=211'
      'DriverID=iB')
    LoginPrompt = False
    Left = 48
    Top = 32
  end
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 144
    Top = 32
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 256
    Top = 32
  end
  object Insert: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from member')
    Left = 48
    Top = 112
    object InsertMEM_NAME: TWideStringField
      FieldName = 'MEM_NAME'
      Origin = 'MEM_NAME'
      Size = 80
    end
    object InsertMEM_LAT: TWideStringField
      FieldName = 'MEM_LAT'
      Origin = 'MEM_LAT'
      Size = 60
    end
    object InsertMEM_LNG: TWideStringField
      FieldName = 'MEM_LNG'
      Origin = 'MEM_LNG'
      Size = 60
    end
    object InsertMEM_ADDRESS: TWideStringField
      FieldName = 'MEM_ADDRESS'
      Origin = 'MEM_ADDRESS'
      Size = 400
    end
  end
  object Room_List: TFDTable
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'CHAT_ROOM'
    TableName = 'CHAT_ROOM'
    Left = 256
    Top = 112
    object Room_ListCHAT_NAME: TWideStringField
      FieldName = 'CHAT_NAME'
      Origin = 'CHAT_NAME'
      Required = True
      Size = 180
    end
  end
  object List_DataSetProvider: TDataSetProvider
    DataSet = Room_List
    Left = 344
    Top = 112
  end
end
