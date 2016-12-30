object DataModule2: TDataModule2
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 295
  Width = 475
  object W_SQLConnection: TSQLConnection
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
    UniqueId = '{1B654027-89C4-4F81-B91B-0E630D8384E0}'
  end
  object W_DSProviderConnection: TDSProviderConnection
    ServerClassName = 'TServerMethods1'
    SQLConnection = W_SQLConnection
    Left = 184
    Top = 32
  end
  object Insert_ChatRoom: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'List_DataSetProvider'
    RemoteServer = W_DSProviderConnection
    Left = 184
    Top = 104
    object Insert_ChatRoomCHAT_NAME: TWideStringField
      FieldName = 'CHAT_NAME'
      Origin = 'CHAT_NAME'
      Required = True
      Size = 180
    end
  end
  object ChatRoom: TDataSource
    DataSet = Insert_ChatRoom
    Left = 184
    Top = 176
  end
  object ChannelManager: TDSClientCallbackChannelManager
    DSHostname = '192.168.1.6'
    DSPort = '12340'
    CommunicationProtocol = 'http'
    ChannelName = 'here'
    ManagerId = '705940.375875.464857'
    Left = 320
    Top = 31
  end
end
