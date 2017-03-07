object Dm: TDm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 289
  Width = 382
  object SQLConnection1: TSQLConnection
    ConnectionName = 'DataSnapCONNECTION'
    DriverName = 'DataSnap'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXDataSnap'
      'DatasnapContext=datasnap/'
      
        'DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland' +
        '.Data.DbxClientDriver,Version=23.0.0.0,Culture=neutral,PublicKey' +
        'Token=91d62ebb5b0d1b1b'
      'DriverName=DataSnap'
      'HostName=192.168.1.31'
      'Port=211'
      'CommunicationProtocol=tcp/ip'
      'Filters={}')
    Connected = True
    Left = 40
    Top = 88
    UniqueId = '{DE861C8F-C231-4790-8359-E70E819930AC}'
  end
  object DSProviderConnection1: TDSProviderConnection
    ServerClassName = 'TServerMethods1'
    Connected = True
    SQLConnection = SQLConnection1
    Left = 160
    Top = 80
  end
  object UserQueryDataSet: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'SQL_User_Query_Provider'
    RemoteServer = DSProviderConnection1
    Left = 136
    Top = 152
  end
  object TaxiDataSet: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Taxi_Table_Provider'
    RemoteServer = DSProviderConnection1
    Left = 248
    Top = 160
  end
  object CheckOrdersDataSet: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'SQL_Check_Order_Provider'
    RemoteServer = DSProviderConnection1
    Left = 136
    Top = 216
  end
  object UDDetailDataSet: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'SQL_UD_Detail_Provider'
    RemoteServer = DSProviderConnection1
    Left = 256
    Top = 216
  end
end
