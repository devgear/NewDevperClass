object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 300
  Width = 576
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
    Left = 128
    Top = 48
  end
  object DSProviderConnection1: TDSProviderConnection
    ServerClassName = 'TServerMethods4'
    Connected = True
    SQLConnection = SQLConnection1
    Left = 120
    Top = 112
  end
  object TimesCDS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'TimeProvider'
    RemoteServer = DSProviderConnection1
    Left = 288
    Top = 40
  end
  object PersonCDS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PersonProvider'
    RemoteServer = DSProviderConnection1
    Left = 288
    Top = 104
  end
  object InfoCDS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'InfoProvider'
    RemoteServer = DSProviderConnection1
    Left = 288
    Top = 176
  end
  object TimesDS: TDataSource
    DataSet = TimesCDS
    Left = 392
    Top = 48
  end
  object PersonDS: TDataSource
    DataSet = PersonCDS
    Left = 392
    Top = 104
  end
  object InfoDS: TDataSource
    DataSet = InfoCDS
    Left = 392
    Top = 176
  end
end
