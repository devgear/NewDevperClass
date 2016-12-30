object DMClient: TDMClient
  OldCreateOrder = False
  OnDestroy = DataModuleDestroy
  Height = 489
  Width = 558
  object IdTCPClient1: TIdTCPClient
    ConnectTimeout = 0
    Host = '127.0.0.1'
    IPVersion = Id_IPv4
    Port = 1234
    ReadTimeout = -1
    Left = 44
    Top = 96
  end
  object ClientDataSet_EmpInfo: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider_Emp'
    RemoteServer = DSProviderConnection_client
    Left = 176
    Top = 24
  end
  object DataSource_LoginedInfo: TDataSource
    DataSet = ClientDataSet_EmpInfo
    Left = 308
    Top = 28
  end
  object SQLConnection_Client: TSQLConnection
    DriverName = 'DataSnap'
    LoginPrompt = False
    Params.Strings = (
      'drivername=DataSnap'
      'hostname=localhost'
      'port=211'
      'CommunicationProtocol=tcp/ip')
    Connected = True
    Left = 44
    Top = 24
    UniqueId = '{490BDCD8-779C-4B01-8CB9-8770BB6E2D6B}'
  end
  object ClientDataSet_Login: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'code'
        ParamType = ptInput
      end>
    ProviderName = 'DataSetProvider_Login'
    RemoteServer = DSProviderConnection_client
    Left = 176
    Top = 112
  end
  object DSProviderConnection_client: TDSProviderConnection
    ServerClassName = 'tservermethods1'
    Connected = True
    SQLConnection = SQLConnection_Client
    Left = 444
    Top = 32
  end
  object DataSource_Login: TDataSource
    DataSet = ClientDataSet_Login
    Left = 300
    Top = 112
  end
end
