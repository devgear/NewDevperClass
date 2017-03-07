object Dm: TDm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 284
  Width = 416
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
    Left = 96
    Top = 64
    UniqueId = '{1E14F1B4-85BB-4CFF-9E5E-58F3BD3F8E3C}'
  end
  object DSProviderConnection1: TDSProviderConnection
    ServerClassName = 'TServerMethods1'
    SQLConnection = SQLConnection1
    Left = 200
    Top = 64
  end
  object OrderDataSet: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Order_Table_Provider'
    RemoteServer = DSProviderConnection1
    Left = 192
    Top = 128
  end
  object MyDataSet: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'SQL_Taxi_Query_Provider'
    RemoteServer = DSProviderConnection1
    Left = 280
    Top = 128
  end
end
