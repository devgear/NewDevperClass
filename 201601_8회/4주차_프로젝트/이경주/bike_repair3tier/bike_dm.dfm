object dm1: Tdm1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 362
  Width = 446
  object SQLConnection1: TSQLConnection
    DriverName = 'DataSnap'
    KeepConnection = False
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXDataSnap'
      'CommunicationProtocol=tcp/ip'
      'DatasnapContext=datasnap/'
      
        'DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland' +
        '.Data.DbxClientDriver,Version=23.0.0.0,Culture=neutral,PublicKey' +
        'Token=91d62ebb5b0d1b1b'
      'DriverName=DataSnap'
      'HostName=localhost'
      'Port=211'
      'Filters={}')
    Connected = True
    Left = 32
    Top = 16
    UniqueId = '{3D3F1E30-2D58-4C7B-B534-B1637EAD4C99}'
  end
  object bike: TClientDataSet
    Active = True
    Aggregates = <>
    Filtered = True
    Params = <>
    ProviderName = 'bikeDSP'
    RemoteServer = DSProviderConnection1
    Left = 24
    Top = 72
  end
  object user2: TClientDataSet
    Active = True
    Aggregates = <>
    Filtered = True
    Params = <>
    ProviderName = 'user2DSP'
    RemoteServer = DSProviderConnection1
    Left = 32
    Top = 128
  end
  object repairman: TClientDataSet
    Active = True
    Aggregates = <>
    Filtered = True
    Params = <>
    ProviderName = 'repairmanDSP'
    RemoteServer = DSProviderConnection1
    Left = 32
    Top = 176
  end
  object repaircenter: TClientDataSet
    Active = True
    Aggregates = <>
    Filtered = True
    Params = <>
    ProviderName = 'repaircenterDSP'
    RemoteServer = DSProviderConnection1
    Left = 32
    Top = 227
  end
  object repairlist: TClientDataSet
    Active = True
    Aggregates = <>
    Filtered = True
    Params = <>
    ProviderName = 'repairlistDSP'
    RemoteServer = DSProviderConnection1
    Left = 32
    Top = 281
  end
  object DSProviderConnection1: TDSProviderConnection
    ServerClassName = 'TServerMethods1'
    Connected = True
    SQLConnection = SQLConnection1
    Left = 136
    Top = 16
  end
  object bikeDS: TDataSource
    DataSet = bike
    Left = 128
    Top = 72
  end
  object userDS: TDataSource
    DataSet = user2
    Left = 128
    Top = 120
  end
  object repairmanDS: TDataSource
    DataSet = repairman
    Left = 128
    Top = 176
  end
  object repaircenterDS: TDataSource
    DataSet = repaircenter
    Left = 128
    Top = 224
  end
  object repairlistDS: TDataSource
    DataSet = repairlist
    Left = 128
    Top = 281
  end
  object IPSA: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'IPSAQueryDSP'
    RemoteServer = DSProviderConnection1
    Left = 232
    Top = 272
  end
  object view: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftWideString
        Name = 'PUNAME'
        ParamType = ptInput
        Size = 80
      end
      item
        DataType = ftWideString
        Name = 'PUPHONE'
        ParamType = ptInput
        Size = 80
      end>
    ProviderName = 'listQueryDSP'
    RemoteServer = DSProviderConnection1
    Left = 232
    Top = 72
  end
  object centersearch: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftWideString
        Name = 'PCNAME'
        ParamType = ptInput
        Size = 80
      end>
    ProviderName = 'CenterQueryDSP'
    RemoteServer = DSProviderConnection1
    Left = 232
    Top = 136
  end
end
