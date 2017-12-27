object ClientModule1: TClientModule1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 482
  Width = 570
  object SQLConnection1: TSQLConnection
    DriverName = 'DataSnap'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXDataSnap'
      
        'DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland' +
        '.Data.DbxClientDriver,Version=24.0.0.0,Culture=neutral,PublicKey' +
        'Token=91d62ebb5b0d1b1b'
      'Port=211'
      'CommunicationProtocol=tcp/ip'
      'DatasnapContext=datasnap/'
      'Filters={}'
      'HostName=localhost')
    Left = 48
    Top = 40
    UniqueId = '{84D27DB0-20F5-4917-B309-B07CFEE8DF3F}'
  end
  object DSProviderConnection1: TDSProviderConnection
    ServerClassName = 'TServerMethods2'
    SQLConnection = SQLConnection1
    Left = 152
    Top = 40
  end
  object DataSource_client: TDataSource
    DataSet = ClientData_client
    Left = 208
    Top = 112
  end
  object ClientData_client: TClientDataSet
    Aggregates = <>
    DisableStringTrim = True
    Params = <>
    ProviderName = 'DataSetProvider_client'
    RemoteServer = DSProviderConnection1
    Left = 48
    Top = 120
    object ClientData_clientCLIENT_NO: TSmallintField
      FieldName = 'CLIENT_NO'
      Origin = 'CLIENT_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ClientData_clientUSER_NO: TIntegerField
      FieldName = 'USER_NO'
      Origin = 'USER_NO'
    end
    object ClientData_clientCLIENT_CON: TStringField
      FieldName = 'CLIENT_CON'
      Origin = 'CLIENT_CON'
      Size = 1
    end
  end
  object DataSource_User: TDataSource
    DataSet = ClientData_User
    Left = 208
    Top = 200
  end
  object ClientData_User: TClientDataSet
    Aggregates = <>
    DisableStringTrim = True
    Params = <>
    ProviderName = 'DataSetProvider_User'
    RemoteServer = DSProviderConnection1
    Left = 48
    Top = 192
    object ClientData_UserUSER_NO: TIntegerField
      FieldName = 'USER_NO'
      Origin = 'USER_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ClientData_UserUSER_ID: TStringField
      FieldName = 'USER_ID'
      Origin = 'USER_ID'
      Required = True
    end
    object ClientData_UserUSER_PW: TStringField
      FieldName = 'USER_PW'
      Origin = 'USER_PW'
      Required = True
    end
    object ClientData_UserUSER_NAME: TStringField
      FieldName = 'USER_NAME'
      Origin = 'USER_NAME'
      Required = True
      Size = 15
    end
    object ClientData_UserUSER_BIRTH: TStringField
      FieldName = 'USER_BIRTH'
      Origin = 'USER_BIRTH'
      Required = True
      Size = 10
    end
    object ClientData_UserUSER_PHONE: TStringField
      FieldName = 'USER_PHONE'
      Origin = 'USER_PHONE'
      Required = True
      Size = 13
    end
    object ClientData_UserUSER_CASH: TIntegerField
      FieldName = 'USER_CASH'
      Origin = 'USER_CASH'
      Required = True
    end
    object ClientData_UserUSER_TIME: TIntegerField
      FieldName = 'USER_TIME'
      Origin = 'USER_TIME'
      Required = True
    end
    object ClientData_UserUSER_CON: TStringField
      FieldName = 'USER_CON'
      Origin = 'USER_CON'
      Required = True
      Size = 1
    end
  end
  object ClientDataSet_login_history: TClientDataSet
    Aggregates = <>
    DisableStringTrim = True
    Params = <>
    ProviderName = 'DataSetProvider_login_history'
    RemoteServer = DSProviderConnection1
    Left = 48
    Top = 256
    object ClientDataSet_login_historyLOGIN_NO: TIntegerField
      FieldName = 'LOGIN_NO'
      Origin = 'LOGIN_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ClientDataSet_login_historyUSER_NO: TIntegerField
      FieldName = 'USER_NO'
      Origin = 'USER_NO'
      Required = True
    end
    object ClientDataSet_login_historyLOGIN_DAY: TStringField
      FieldName = 'LOGIN_DAY'
      Origin = 'LOGIN_DAY'
      Required = True
      Size = 10
    end
    object ClientDataSet_login_historyLOGIN_TIME: TStringField
      FieldName = 'LOGIN_TIME'
      Origin = 'LOGIN_TIME'
      Required = True
      Size = 8
    end
    object ClientDataSet_login_historyEND_DAY: TStringField
      FieldName = 'END_DAY'
      Origin = 'END_DAY'
      Required = True
      Size = 10
    end
    object ClientDataSet_login_historyEND_TIME: TStringField
      FieldName = 'END_TIME'
      Origin = 'END_TIME'
      Required = True
      Size = 8
    end
    object ClientDataSet_login_historyLOGIN_CLIENT: TIntegerField
      FieldName = 'LOGIN_CLIENT'
      Origin = 'LOGIN_CLIENT'
      Required = True
    end
  end
  object DataSource_login_history: TDataSource
    DataSet = ClientDataSet_login_history
    Left = 208
    Top = 256
  end
end
