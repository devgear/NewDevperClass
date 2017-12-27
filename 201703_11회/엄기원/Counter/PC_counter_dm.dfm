object clientmodule: Tclientmodule
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 714
  Width = 822
  object SQLConnection1: TSQLConnection
    ConnectionName = 'DataSnapCONNECTION'
    DriverName = 'DataSnap'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXDataSnap'
      'DatasnapContext=datasnap/'
      
        'DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland' +
        '.Data.DbxClientDriver,Version=24.0.0.0,Culture=neutral,PublicKey' +
        'Token=91d62ebb5b0d1b1b'
      'DriverName=DataSnap'
      'HostName=localhost'
      'Port=211'
      'CommunicationProtocol=tcp/ip'
      'Filters={}')
    Left = 48
    Top = 40
    UniqueId = '{79758786-CE01-4B63-8402-72AA01161EC0}'
  end
  object DSProviderConnection1: TDSProviderConnection
    ServerClassName = 'TServerMethods2'
    SQLConnection = SQLConnection1
    Left = 152
    Top = 40
  end
  object ClientData_client: TClientDataSet
    Aggregates = <>
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
  object DataSource_client: TDataSource
    DataSet = ClientData_client
    Left = 152
    Top = 120
  end
  object ClientData_USER: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider_User'
    RemoteServer = DSProviderConnection1
    Left = 48
    Top = 184
    object ClientData_USERUSER_NO: TIntegerField
      FieldName = 'USER_NO'
      Origin = 'USER_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ClientData_USERUSER_ID: TStringField
      FieldName = 'USER_ID'
      Origin = 'USER_ID'
      Required = True
    end
    object ClientData_USERUSER_PW: TStringField
      FieldName = 'USER_PW'
      Origin = 'USER_PW'
      Required = True
    end
    object ClientData_USERUSER_NAME: TStringField
      FieldName = 'USER_NAME'
      Origin = 'USER_NAME'
      Required = True
      Size = 15
    end
    object ClientData_USERUSER_BIRTH: TStringField
      FieldName = 'USER_BIRTH'
      Origin = 'USER_BIRTH'
      Required = True
      Size = 10
    end
    object ClientData_USERUSER_PHONE: TStringField
      FieldName = 'USER_PHONE'
      Origin = 'USER_PHONE'
      Required = True
      Size = 13
    end
    object ClientData_USERUSER_CASH: TIntegerField
      FieldName = 'USER_CASH'
      Origin = 'USER_CASH'
      Required = True
    end
    object ClientData_USERUSER_TIME: TIntegerField
      FieldName = 'USER_TIME'
      Origin = 'USER_TIME'
      Required = True
    end
    object ClientData_USERUSER_CON: TStringField
      FieldName = 'USER_CON'
      Origin = 'USER_CON'
      Required = True
      Size = 1
    end
  end
  object DataSource_user: TDataSource
    DataSet = ClientData_USER
    Left = 152
    Top = 184
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 392
    Top = 344
  end
  object ClientData_update: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider_User'
    RemoteServer = DSProviderConnection1
    Left = 48
    Top = 240
    object IntegerField1: TIntegerField
      FieldName = 'USER_NO'
      Origin = 'USER_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'USER_ID'
      Origin = 'USER_ID'
      Required = True
    end
    object StringField2: TStringField
      FieldName = 'USER_PW'
      Origin = 'USER_PW'
      Required = True
    end
    object StringField3: TStringField
      FieldName = 'USER_NAME'
      Origin = 'USER_NAME'
      Required = True
      Size = 15
    end
    object StringField4: TStringField
      FieldName = 'USER_BIRTH'
      Origin = 'USER_BIRTH'
      Required = True
      Size = 10
    end
    object StringField5: TStringField
      FieldName = 'USER_PHONE'
      Origin = 'USER_PHONE'
      Required = True
      Size = 13
    end
    object IntegerField2: TIntegerField
      FieldName = 'USER_CASH'
      Origin = 'USER_CASH'
      Required = True
    end
    object IntegerField3: TIntegerField
      FieldName = 'USER_TIME'
      Origin = 'USER_TIME'
      Required = True
    end
    object StringField6: TStringField
      FieldName = 'USER_CON'
      Origin = 'USER_CON'
      Required = True
      Size = 1
    end
  end
  object DataSource_update: TDataSource
    DataSet = ClientData_update
    Left = 152
    Top = 240
  end
  object ClientData_TIME: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider_TIME'
    RemoteServer = DSProviderConnection1
    Left = 48
    Top = 304
    object ClientData_TIMETIME_NO: TIntegerField
      FieldName = 'TIME_NO'
      Origin = 'TIME_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ClientData_TIMETIME_NAME: TStringField
      FieldName = 'TIME_NAME'
      Origin = 'TIME_NAME'
      Required = True
      Size = 30
    end
    object ClientData_TIMETIM_PRISE: TIntegerField
      FieldName = 'TIM_PRISE'
      Origin = 'TIM_PRISE'
      Required = True
    end
    object ClientData_TIMETIME_TIME: TIntegerField
      FieldName = 'TIME_TIME'
      Origin = 'TIME_TIME'
      Required = True
    end
  end
  object DataSource_TIME: TDataSource
    DataSet = ClientData_TIME
    Left = 152
    Top = 304
  end
  object ClientDataSet_login_history: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider_login_Q'
    RemoteServer = DSProviderConnection1
    Left = 64
    Top = 424
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
    object ClientDataSet_login_historyUSER_ID: TStringField
      FieldName = 'USER_ID'
      Origin = 'USER_ID'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object DataSource_login_history: TDataSource
    DataSet = ClientDataSet_login_history
    Left = 216
    Top = 424
  end
  object ClientDataSet_addtime: TClientDataSet
    Aggregates = <>
    DisableStringTrim = True
    Params = <>
    ProviderName = 'DataSetProvider_add_tim_hitory_Q'
    RemoteServer = DSProviderConnection1
    Left = 64
    Top = 488
    object ClientDataSet_addtimeADD_DAY: TStringField
      FieldName = 'ADD_DAY'
      Origin = 'ADD_DAY'
      Required = True
      Size = 10
    end
    object ClientDataSet_addtimeADD_TIME: TStringField
      FieldName = 'ADD_TIME'
      Origin = 'ADD_TIME'
      Required = True
      Size = 8
    end
    object ClientDataSet_addtimeTIME_NAME: TStringField
      FieldName = 'TIME_NAME'
      Origin = 'TIME_NAME'
      Required = True
      Size = 30
    end
    object ClientDataSet_addtimeNOW_TIME: TStringField
      FieldName = 'NOW_TIME'
      Origin = 'NOW_TIME'
    end
    object ClientDataSet_addtimeUSER_ID: TStringField
      FieldName = 'USER_ID'
      Origin = 'USER_ID'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object DataSource_addtime: TDataSource
    DataSet = ClientDataSet_addtime
    Left = 224
    Top = 488
  end
  object ClientDataSet_day_day: TClientDataSet
    Aggregates = <>
    DisableStringTrim = True
    Params = <>
    ProviderName = 'DataSetProvider_dayday'
    RemoteServer = DSProviderConnection1
    Left = 64
    Top = 552
    object ClientDataSet_day_dayADD_DAY: TStringField
      FieldName = 'ADD_DAY'
      Origin = 'ADD_DAY'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object ClientDataSet_day_dayHC: TIntegerField
      FieldName = 'HC'
      Origin = 'HC'
      ProviderFlags = []
      ReadOnly = True
    end
    object ClientDataSet_day_dayHS: TLargeintField
      FieldName = 'HS'
      Origin = 'HS'
      ProviderFlags = []
      ReadOnly = True
    end
    object ClientDataSet_day_dayCC: TIntegerField
      FieldName = 'CC'
      Origin = 'CC'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object DataSource_dayday: TDataSource
    DataSet = ClientDataSet_day_day
    Left = 224
    Top = 552
  end
end
