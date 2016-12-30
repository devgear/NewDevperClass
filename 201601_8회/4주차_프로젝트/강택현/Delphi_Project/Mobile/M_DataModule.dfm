object DataModule1: TDataModule1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 252
  Width = 444
  object M_SQLConnection: TSQLConnection
    DriverName = 'DataSnap'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXDataSnap'
      'HostName=192.168.1.6'
      'Port=12340'
      'CommunicationProtocol=http'
      'DatasnapContext=datasnap/'
      
        'DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland' +
        '.Data.DbxClientDriver,Version=23.0.0.0,Culture=neutral,PublicKey' +
        'Token=91d62ebb5b0d1b1b'
      'Filters={}')
    Left = 56
    Top = 32
    UniqueId = '{8214F4E1-2CCA-4E2C-9DBE-E614EEF868EA}'
  end
  object M_DSProviderConnection: TDSProviderConnection
    ServerClassName = 'TServerMethods1'
    SQLConnection = M_SQLConnection
    Left = 56
    Top = 96
  end
  object Location_Trans: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'List_DataSetProvider'
    RemoteServer = M_DSProviderConnection
    Left = 56
    Top = 160
    object Location_TransCHAT_NAME: TWideStringField
      FieldName = 'CHAT_NAME'
      Origin = 'CHAT_NAME'
      Required = True
      Size = 180
    end
  end
  object Room_List: TDataSource
    DataSet = Location_Trans
    Left = 152
    Top = 160
  end
  object M_ChannelManager: TDSClientCallbackChannelManager
    DSHostname = '192.168.1.6'
    DSPort = '12340'
    CommunicationProtocol = 'http'
    ChannelName = 'here'
    ManagerId = '103079.59884.426518'
    Left = 296
    Top = 88
  end
end
