object l: Tl
  OldCreateOrder = False
  AuthBeforeNewSession = False
  AppName = 'MyApp'
  CharSet = 'UTF-8'
  CacheExpiry = 120
  ComInitialization = ciNone
  Compression.Enabled = False
  Compression.Level = 6
  Description = 'My IntraWeb Application'
  DebugHTML = False
  Log = loNone
  EnableImageToolbar = False
  ExceptionDisplayMode = smAlert
  HistoryEnabled = False
  InternalFilesURL = '/'
  JavascriptDebug = False
  PageTransitions = False
  Port = 8888
  RedirectMsgDelay = 0
  ServerResizeTimeout = 0
  ShowLoadingAnimation = True
  SessionTimeout = 20
  SSLOptions.NonSSLRequest = nsAccept
  SSLOptions.Port = 0
  SSLOptions.SSLVersion = sslv3
  Version = '11.0.0'
  OnNewSession = IWServerControllerBaseNewSession
  Height = 411
  Width = 469
  object DSProviderConnection1: TDSProviderConnection
    ServerClassName = 'TServerMethods1'
    Connected = True
    SQLConnection = SQLConnection1
    Left = 48
    Top = 104
  end
  object SqlServerMethod1: TSqlServerMethod
    GetMetadata = False
    Params = <
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'value'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'ReturnParameter'
        ParamType = ptResult
        Size = 2000
      end>
    SQLConnection = SQLConnection1
    ServerMethodName = 'TServerMethods1.User_Insert'
    Left = 112
    Top = 40
  end
  object SQLConnection1: TSQLConnection
    DriverName = 'DataSnap'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=DBXDataSnap'
      'HostName=localhost'
      
        'DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland' +
        '.Data.DbxClientDriver,Version=15.0.0.0,Culture=neutral,PublicKey' +
        'Token=91d62ebb5b0d1b1b'
      'Port=212'
      'CommunicationProtocol=tcp/ip'
      'DatasnapContext=datasnap/'
      'Filters={}')
    Connected = True
    Left = 48
    Top = 40
    UniqueId = '{B1CF0111-22CE-4FBF-AB7E-89F1619A9F65}'
  end
  object Item: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'ItemProvider'
    RemoteServer = DSProviderConnection1
    Left = 216
    Top = 192
  end
  object ItemSource: TDataSource
    DataSet = Item
    Left = 280
    Top = 192
  end
end
