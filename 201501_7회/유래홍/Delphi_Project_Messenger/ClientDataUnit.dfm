object DM: TDM
  OldCreateOrder = False
  Height = 484
  Width = 544
  object DataSQLCon: TSQLConnection
    DriverName = 'DataSnap'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXDataSnap'
      'DatasnapContext=datasnap/'
      
        'DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland' +
        '.Data.DbxClientDriver,Version=19.0.0.0,Culture=neutral,PublicKey' +
        'Token=91d62ebb5b0d1b1b'
      'DriverName=DataSnap'
      'HostName=172.30.1.1'
      'Port=12345'
      'CommunicationProtocol=http'
      'Filters={}')
    Connected = True
    Left = 48
    Top = 32
  end
  object DSProviderConnection1: TDSProviderConnection
    ServerClassName = 'TServerMethods1'
    Connected = True
    SQLConnection = DataSQLCon
    Left = 152
    Top = 32
  end
  object Select_Roaster_Client: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftUnknown
        Name = 'myID'
        ParamType = ptInput
      end>
    ProviderName = 'Select_Roaster_Provider'
    RemoteServer = DSProviderConnection1
    Left = 255
    Top = 32
  end
  object Select_ChatRoom_Client: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftWideString
        Name = 'roomID'
        ParamType = ptInput
      end>
    ProviderName = 'Select_ChatRoom_Provider'
    RemoteServer = DSProviderConnection1
    Left = 256
    Top = 104
  end
  object ChannelManager: TDSClientCallbackChannelManager
    DSHostname = '172.30.1.1'
    DSPort = '12345'
    CommunicationProtocol = 'http'
    ChannelName = 'MessageChannel'
    ManagerId = '640255.715435.816549'
    Left = 48
    Top = 96
  end
  object SqlServerMethod1: TSqlServerMethod
    Params = <
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'roomID'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'senderID'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'msg'
        ParamType = ptInput
      end
      item
        DataType = ftBoolean
        Precision = 4
        Name = 'ReturnParameter'
        ParamType = ptResult
        Size = 4
      end>
    SQLConnection = DataSQLCon
    ServerMethodName = 'TServerMethods1.SendMessage'
    Left = 144
    Top = 96
  end
  object Select_RoomList_Client: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftWideString
        Name = 'uid'
        ParamType = ptInput
      end>
    ProviderName = 'Select_RoomList_Provider'
    RemoteServer = DSProviderConnection1
    Left = 256
    Top = 168
  end
end
