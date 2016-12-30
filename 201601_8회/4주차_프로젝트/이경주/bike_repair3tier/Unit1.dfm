object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 362
  Width = 446
  object SQLConnection1: TSQLConnection
    DriverName = 'DataSnap'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=DataSnap'
      'HostName=localhost'
      'Port=211')
    Connected = True
    Left = 32
    Top = 16
    UniqueId = '{3D3F1E30-2D58-4C7B-B534-B1637EAD4C99}'
  end
  object bike: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'bikeDSP'
    RemoteServer = DSProviderConnection1
    Left = 32
    Top = 72
  end
  object user: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'userDSP'
    RemoteServer = DSProviderConnection1
    Left = 32
    Top = 128
  end
  object repairman: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'repairmanDSP'
    RemoteServer = DSProviderConnection1
    Left = 32
    Top = 176
  end
  object repaircenter: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'repaircenterDSP'
    RemoteServer = DSProviderConnection1
    Left = 32
    Top = 227
  end
  object repairlist: TClientDataSet
    Active = True
    Aggregates = <>
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
    DataSet = user
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
end
