object DM: TDM
  OldCreateOrder = False
  Height = 349
  Width = 462
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
    Left = 80
    Top = 96
  end
  object DSProviderConnection1: TDSProviderConnection
    ServerClassName = 'TServerMethods4'
    Connected = True
    SQLConnection = SQLConnection1
    Left = 80
    Top = 176
  end
  object TimesCDS: TClientDataSet
    Active = True
    Aggregates = <>
    Filtered = True
    Params = <>
    ProviderName = 'TimesProvider'
    RemoteServer = DSProviderConnection1
    Left = 240
    Top = 96
    object TimesCDSH_ID: TIntegerField
      DisplayLabel = #48264#54840
      FieldName = 'H_ID'
      Origin = 'H_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TimesCDSH_TIMES: TStringField
      DisplayLabel = #49884#45824'('#44397#44032')'
      FieldName = 'H_TIMES'
      Origin = 'H_TIMES'
      Size = 30
    end
  end
  object PersonCDS: TClientDataSet
    Active = True
    Aggregates = <>
    Filtered = True
    Params = <>
    ProviderName = 'PersonProvider'
    RemoteServer = DSProviderConnection1
    Left = 240
    Top = 160
    object PersonCDSP_ID: TIntegerField
      DisplayWidth = 12
      FieldName = 'P_ID'
      Origin = 'P_ID'
      Required = True
    end
    object PersonCDSP_NAME: TStringField
      DisplayLabel = #51060#47492
      DisplayWidth = 17
      FieldName = 'P_NAME'
      Origin = 'P_NAME'
      Size = 50
    end
    object PersonCDSP_ACHIEVEMENT: TStringField
      DisplayLabel = #50629#51201
      DisplayWidth = 600
      FieldName = 'P_ACHIEVEMENT'
      Origin = 'P_ACHIEVEMENT'
      Size = 500
    end
    object PersonCDSP_PHOTO: TBlobField
      DisplayLabel = #51060#48120#51648
      DisplayWidth = 12
      FieldName = 'P_PHOTO'
      Origin = 'P_PHOTO'
    end
    object PersonCDSP_H_ID: TIntegerField
      DisplayWidth = 12
      FieldName = 'P_H_ID'
      Origin = 'P_H_ID'
    end
    object PersonCDSP_Times: TStringField
      DisplayLabel = #49884#45824
      DisplayWidth = 13
      FieldKind = fkLookup
      FieldName = 'P_Times'
      LookupDataSet = TimesCDS
      LookupKeyFields = 'H_ID'
      LookupResultField = 'H_TIMES'
      KeyFields = 'P_H_ID'
      Lookup = True
    end
  end
  object TimesDS: TDataSource
    DataSet = TimesCDS
    Left = 336
    Top = 96
  end
  object PersonDS: TDataSource
    DataSet = PersonCDS
    Left = 336
    Top = 160
  end
end
