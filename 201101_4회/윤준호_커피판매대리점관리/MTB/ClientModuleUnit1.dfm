object ClientModule1: TClientModule1
  OldCreateOrder = False
  Height = 416
  Width = 493
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
  object DSProviderConnection1: TDSProviderConnection
    ServerClassName = 'TServerMethods1'
    Connected = True
    SQLConnection = SQLConnection1
    Left = 48
    Top = 136
  end
  object Item: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'ItemProvider'
    RemoteServer = DSProviderConnection1
    OnNewRecord = ItemNewRecord
    Left = 240
    Top = 72
    object ItemI_ID: TStringField
      DisplayLabel = #49345#54408#48264#54840
      FieldName = 'I_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object ItemS_ID: TStringField
      DisplayLabel = #51648#51216#48264#54840
      FieldName = 'S_ID'
      Required = True
      Size = 10
    end
    object ItemI_NAME: TStringField
      DisplayLabel = #49345#54408#47749
      FieldName = 'I_NAME'
      Size = 10
    end
    object ItemI_COST: TIntegerField
      DisplayLabel = #49345#54408#44032#44201
      FieldName = 'I_COST'
    end
    object ItemI_DATE: TSQLTimeStampField
      DisplayLabel = #49345#54408#46321#47197#51068#51088
      FieldName = 'I_DATE'
    end
    object ItemI_IMAGE: TBlobField
      DisplayLabel = #49345#54408#49324#51652
      FieldName = 'I_IMAGE'
      Size = 1
    end
  end
  object ItemSource: TDataSource
    DataSet = Item
    Left = 320
    Top = 72
  end
  object History: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'HistoryProvider'
    RemoteServer = DSProviderConnection1
    Left = 240
    Top = 136
  end
  object HistorySource: TDataSource
    DataSet = History
    Left = 320
    Top = 136
  end
  object SQLLog: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'SQLLogProvider'
    RemoteServer = DSProviderConnection1
    Left = 240
    Top = 264
  end
  object SQLLogSource: TDataSource
    DataSet = SQLLog
    Left = 320
    Top = 264
  end
  object User: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'UserProvider'
    RemoteServer = DSProviderConnection1
    Left = 240
    Top = 200
  end
  object UserSource: TDataSource
    DataSet = User
    Left = 320
    Top = 200
  end
  object SqlServerMethod1: TSqlServerMethod
    GetMetadata = False
    Params = <
      item
        DataType = ftDataSet
        Name = 'ReturnParameter'
        ParamType = ptResult
      end>
    SQLConnection = SQLConnection1
    ServerMethodName = 'TServerMethods1.Client_Insert'
    Left = 56
    Top = 208
  end
end
