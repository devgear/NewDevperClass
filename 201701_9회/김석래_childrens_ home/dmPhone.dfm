object DataModule2: TDataModule2
  OldCreateOrder = False
  Height = 350
  Width = 370
  object qryKids: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider2'
    RemoteServer = DSProviderConnection1
    Left = 64
    Top = 128
  end
  object DSProviderConnection1: TDSProviderConnection
    ServerClassName = 'TServerMethods1'
    SQLConnection = SQLConnection1
    Left = 176
    Top = 32
  end
  object SQLConnection1: TSQLConnection
    ConnectionName = 'DataSnapCONNECTION'
    DriverName = 'DataSnap'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=DataSnap'
      'HostName=localhost'
      'Port=211'
      'CommunicationProtocol=tcp/ip')
    Left = 56
    Top = 32
    UniqueId = '{B9E62FA7-1EEE-4F0B-A133-8139980E14FD}'
  end
  object qryParents: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider4'
    RemoteServer = DSProviderConnection1
    Left = 64
    Top = 216
  end
end
