object DM: TDM
  OldCreateOrder = False
  Height = 275
  Width = 327
  object SQLConnection1: TSQLConnection
    DriverName = 'DataSnap'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXDataSnap'
      'HostName=localhost'
      'Port=211'
      'CommunicationProtocol=tcp/ip'
      'DatasnapContext=datasnap/'
      
        'DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland' +
        '.Data.DbxClientDriver,Version=23.0.0.0,Culture=neutral,PublicKey' +
        'Token=91d62ebb5b0d1b1b')
    Connected = True
    Left = 48
    Top = 64
  end
  object DSProviderConnection1: TDSProviderConnection
    ServerClassName = 'TServerMethods4'
    Connected = True
    SQLConnection = SQLConnection1
    Left = 48
    Top = 120
  end
  object TimeQueryDS: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'TimesQueryProvider'
    RemoteServer = DSProviderConnection1
    Left = 168
    Top = 24
    object TimeQueryDSH_ID: TIntegerField
      FieldName = 'H_ID'
      Origin = 'H_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TimeQueryDSH_TIMES: TStringField
      FieldName = 'H_TIMES'
      Origin = 'H_TIMES'
      Size = 30
    end
  end
  object ClientDataSet1: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'P_H_ID'
    MasterFields = 'H_ID'
    MasterSource = DataSource1
    PacketRecords = 0
    Params = <>
    ProviderName = 'PersonProvider'
    RemoteServer = DSProviderConnection1
    Left = 168
    Top = 80
    object ClientDataSet1P_ID: TIntegerField
      FieldName = 'P_ID'
      Origin = 'P_ID'
      Required = True
    end
    object ClientDataSet1P_NAME: TStringField
      FieldName = 'P_NAME'
      Origin = 'P_NAME'
      Size = 50
    end
    object ClientDataSet1P_ACHIEVEMENT: TStringField
      FieldName = 'P_ACHIEVEMENT'
      Origin = 'P_ACHIEVEMENT'
      Size = 500
    end
    object ClientDataSet1P_PHOTO: TBlobField
      FieldName = 'P_PHOTO'
      Origin = 'P_PHOTO'
    end
    object ClientDataSet1P_H_ID: TIntegerField
      FieldName = 'P_H_ID'
      Origin = 'P_H_ID'
    end
  end
  object DataSource1: TDataSource
    DataSet = TimeQueryDS
    Left = 176
    Top = 144
  end
end
