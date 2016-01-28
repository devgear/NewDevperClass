object dmDataAccess: TdmDataAccess
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 338
  Width = 544
  object SQLConnection1: TSQLConnection
    DriverName = 'DataSnap'
    KeepConnection = False
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXDataSnap'
      'HostName=127.0.0.1'
      'Port=211'
      'CommunicationProtocol=tcp/ip'
      'DatasnapContext=datasnap/'
      
        'DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland' +
        '.Data.DbxClientDriver,Version=23.0.0.0,Culture=neutral,PublicKey' +
        'Token=91d62ebb5b0d1b1b'
      'Filters={}')
    Connected = True
    Left = 80
    Top = 80
    UniqueId = '{D53478C2-BC79-4AE7-997E-060A24A92DC1}'
  end
  object DSProviderConnection1: TDSProviderConnection
    ServerClassName = 'TServerMethods1'
    Connected = True
    SQLConnection = SQLConnection1
    Left = 192
    Top = 80
  end
  object get_Count: TClientDataSet
    Aggregates = <>
    Params = <>
    RemoteServer = DSProviderConnection1
    Left = 304
    Top = 80
  end
  object book_Qry: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'book_Qry_Provider2'
    RemoteServer = DSProviderConnection1
    Left = 304
    Top = 152
  end
  object book_Qry_Source1: TDataSource
    DataSet = book_Qry
    Left = 392
    Top = 152
  end
end
