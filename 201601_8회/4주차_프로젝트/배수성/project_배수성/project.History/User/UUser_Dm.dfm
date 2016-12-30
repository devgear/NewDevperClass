object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 301
  Width = 388
  object SQLConnection1: TSQLConnection
    DriverName = 'DataSnap'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=DataSnap'
      'HostName=localhost'
      'Port=211'
      'CommunicationProtocol=tcp/ip')
    Connected = True
    Left = 56
    Top = 120
  end
  object DSProviderConnection1: TDSProviderConnection
    ServerClassName = 'TServerMethods4'
    Connected = True
    SQLConnection = SQLConnection1
    Left = 40
    Top = 224
  end
  object times: TClientDataSet
    Active = True
    Aggregates = <>
    Filtered = True
    Params = <>
    ProviderName = 'TimesProvider'
    RemoteServer = DSProviderConnection1
    Left = 160
    Top = 136
    object timesH_ID: TIntegerField
      FieldName = 'H_ID'
      Origin = 'H_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object timesH_TIMES: TStringField
      FieldName = 'H_TIMES'
      Origin = 'H_TIMES'
      Size = 30
    end
  end
  object pesrspons: TClientDataSet
    Active = True
    Aggregates = <>
    Filtered = True
    IndexFieldNames = 'P_H_ID'
    MasterFields = 'H_ID'
    MasterSource = DataSource1
    PacketRecords = 0
    Params = <>
    ProviderName = 'PersonProvider'
    RemoteServer = DSProviderConnection1
    Left = 160
    Top = 208
    object pesrsponsP_ID: TIntegerField
      FieldName = 'P_ID'
      Origin = 'P_ID'
      Required = True
    end
    object pesrsponsP_NAME: TStringField
      FieldName = 'P_NAME'
      Origin = 'P_NAME'
      Size = 50
    end
    object pesrsponsP_ACHIEVEMENT: TStringField
      FieldName = 'P_ACHIEVEMENT'
      Origin = 'P_ACHIEVEMENT'
      Size = 500
    end
    object pesrsponsP_PHOTO: TBlobField
      FieldName = 'P_PHOTO'
      Origin = 'P_PHOTO'
    end
    object pesrsponsP_H_ID: TIntegerField
      FieldName = 'P_H_ID'
      Origin = 'P_H_ID'
    end
  end
  object DataSource1: TDataSource
    DataSet = times
    Left = 240
    Top = 104
  end
end
