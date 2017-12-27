object ServerMethods2: TServerMethods2
  OldCreateOrder = False
  OnCreate = DSServerModuleCreate
  Height = 870
  Width = 1021
  object FDConnection_main: TFDConnection
    Params.Strings = (
      'Database=C:\Del_UKO\DataBase\UKWDATABASE.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'DriverID=FB')
    Left = 96
    Top = 40
  end
  object FDTable_client: TFDTable
    IndexFieldNames = 'CLIENT_NO'
    Connection = FDConnection_main
    UpdateOptions.UpdateTableName = 'CLIENT'
    TableName = 'CLIENT'
    Left = 96
    Top = 112
    object FDTable_clientCLIENT_NO: TSmallintField
      FieldName = 'CLIENT_NO'
      Origin = 'CLIENT_NO'
      Required = True
    end
    object FDTable_clientUSER_NO: TIntegerField
      FieldName = 'USER_NO'
      Origin = 'USER_NO'
    end
    object FDTable_clientCLIENT_CON: TStringField
      FieldName = 'CLIENT_CON'
      Origin = 'CLIENT_CON'
      Size = 1
    end
  end
  object DataSetProvider_client: TDataSetProvider
    DataSet = FDTable_client
    ResolveToDataSet = True
    Left = 224
    Top = 112
  end
  object FDTable_User: TFDTable
    IndexFieldNames = 'USER_NO'
    Connection = FDConnection_main
    UpdateOptions.UpdateTableName = 'PC_USER'
    TableName = 'PC_USER'
    Left = 96
    Top = 192
    object FDTable_UserUSER_NO: TIntegerField
      FieldName = 'USER_NO'
      Origin = 'USER_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDTable_UserUSER_ID: TStringField
      FieldName = 'USER_ID'
      Origin = 'USER_ID'
      Required = True
    end
    object FDTable_UserUSER_PW: TStringField
      FieldName = 'USER_PW'
      Origin = 'USER_PW'
      Required = True
    end
    object FDTable_UserUSER_NAME: TStringField
      FieldName = 'USER_NAME'
      Origin = 'USER_NAME'
      Required = True
      Size = 15
    end
    object FDTable_UserUSER_BIRTH: TStringField
      FieldName = 'USER_BIRTH'
      Origin = 'USER_BIRTH'
      Required = True
      Size = 10
    end
    object FDTable_UserUSER_PHONE: TStringField
      FieldName = 'USER_PHONE'
      Origin = 'USER_PHONE'
      Required = True
      Size = 13
    end
    object FDTable_UserUSER_CASH: TIntegerField
      FieldName = 'USER_CASH'
      Origin = 'USER_CASH'
      Required = True
    end
    object FDTable_UserUSER_TIME: TIntegerField
      FieldName = 'USER_TIME'
      Origin = 'USER_TIME'
      Required = True
    end
    object FDTable_UserUSER_CON: TStringField
      FieldName = 'USER_CON'
      Origin = 'USER_CON'
      Required = True
      Size = 1
    end
  end
  object DataSetProvider_User: TDataSetProvider
    DataSet = FDTable_User
    ResolveToDataSet = True
    Left = 224
    Top = 192
  end
  object FDQuery_max_user_no: TFDQuery
    Connection = FDConnection_main
    SQL.Strings = (
      'select max(user_no)+1 from PC_user')
    Left = 480
    Top = 200
  end
  object FDQuery: TFDQuery
    Connection = FDConnection_main
    Left = 480
    Top = 408
  end
  object FDTable_time: TFDTable
    IndexFieldNames = 'TIME_NO'
    Connection = FDConnection_main
    UpdateOptions.UpdateTableName = 'ITEM_TIME'
    TableName = 'ITEM_TIME'
    Left = 96
    Top = 264
    object FDTable_timeTIME_NO: TIntegerField
      FieldName = 'TIME_NO'
      Origin = 'TIME_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDTable_timeTIME_NAME: TStringField
      FieldName = 'TIME_NAME'
      Origin = 'TIME_NAME'
      Required = True
      Size = 30
    end
    object FDTable_timeTIM_PRISE: TIntegerField
      FieldName = 'TIM_PRISE'
      Origin = 'TIM_PRISE'
      Required = True
    end
    object FDTable_timeTIME_TIME: TIntegerField
      FieldName = 'TIME_TIME'
      Origin = 'TIME_TIME'
      Required = True
    end
  end
  object DataSetProvider_TIME: TDataSetProvider
    DataSet = FDTable_time
    Left = 224
    Top = 264
  end
  object FDTable_login_histry: TFDTable
    IndexFieldNames = 'LOGIN_NO'
    Connection = FDConnection_main
    UpdateOptions.UpdateTableName = 'LOGIN_HISTORY'
    TableName = 'LOGIN_HISTORY'
    Left = 96
    Top = 344
    object FDTable_login_histryLOGIN_NO: TIntegerField
      FieldName = 'LOGIN_NO'
      Origin = 'LOGIN_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDTable_login_histryUSER_NO: TIntegerField
      FieldName = 'USER_NO'
      Origin = 'USER_NO'
      Required = True
    end
    object FDTable_login_histryLOGIN_DAY: TStringField
      FieldName = 'LOGIN_DAY'
      Origin = 'LOGIN_DAY'
      Required = True
      Size = 10
    end
    object FDTable_login_histryLOGIN_TIME: TStringField
      FieldName = 'LOGIN_TIME'
      Origin = 'LOGIN_TIME'
      Required = True
      Size = 8
    end
    object FDTable_login_histryEND_DAY: TStringField
      FieldName = 'END_DAY'
      Origin = 'END_DAY'
      Required = True
      Size = 10
    end
    object FDTable_login_histryEND_TIME: TStringField
      FieldName = 'END_TIME'
      Origin = 'END_TIME'
      Required = True
      Size = 8
    end
    object FDTable_login_histryLOGIN_CLIENT: TIntegerField
      FieldName = 'LOGIN_CLIENT'
      Origin = 'LOGIN_CLIENT'
      Required = True
    end
  end
  object FDTable_time_add_history: TFDTable
    IndexFieldNames = 'TIMEADD_NO'
    Connection = FDConnection_main
    UpdateOptions.UpdateTableName = 'TIMEADD_HISTORY'
    TableName = 'TIMEADD_HISTORY'
    Left = 96
    Top = 424
    object FDTable_time_add_historyTIMEADD_NO: TIntegerField
      FieldName = 'TIMEADD_NO'
      Origin = 'TIMEADD_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDTable_time_add_historyUSER_NO: TIntegerField
      FieldName = 'USER_NO'
      Origin = 'USER_NO'
      Required = True
    end
    object FDTable_time_add_historyTIME_NAME: TStringField
      FieldName = 'TIME_NAME'
      Origin = 'TIME_NAME'
      Required = True
      Size = 30
    end
    object FDTable_time_add_historyADD_DAY: TStringField
      FieldName = 'ADD_DAY'
      Origin = 'ADD_DAY'
      Required = True
      Size = 10
    end
    object FDTable_time_add_historyADD_TIME: TStringField
      FieldName = 'ADD_TIME'
      Origin = 'ADD_TIME'
      Required = True
      Size = 8
    end
    object FDTable_time_add_historyNOW_TIME: TStringField
      FieldName = 'NOW_TIME'
      Origin = 'NOW_TIME'
    end
  end
  object DataSetProvider_login_history: TDataSetProvider
    DataSet = FDTable_login_histry
    Left = 224
    Top = 344
  end
  object FDQuery_max_login_hisno: TFDQuery
    Connection = FDConnection_main
    SQL.Strings = (
      'select max(login_no)+1 from LOGIN_HISTORY')
    Left = 480
    Top = 272
  end
  object FDQuery_login_history: TFDQuery
    Connection = FDConnection_main
    SQL.Strings = (
      
        ' SELECT         l.login_day,l.login_time,l.end_day,l.end_time,l.' +
        'login_client , u.user_ID'
      ' FROM          login_history l'
      ' INNER JOIN  pc_user u'
      ' ON              l.user_NO = u.user_no ;')
    Left = 728
    Top = 264
  end
  object DataSetProvider_login_Q: TDataSetProvider
    DataSet = FDQuery_login_history
    Left = 880
    Top = 264
  end
  object DataSetProvider_add_time_history: TDataSetProvider
    DataSet = FDTable_time_add_history
    Left = 248
    Top = 424
  end
  object FDQuery_add_time_history_q: TFDQuery
    Connection = FDConnection_main
    SQL.Strings = (
      
        ' SELECT      T.Add_day,T.Add_time,T.Time_name,T.NOW_TIME,u.user_' +
        'ID'
      ' FROM        TIMEADD_HISTORY t'
      ' INNER JOIN  PC_USER u'
      ' ON          t.user_NO = u.user_no ;')
    Left = 728
    Top = 336
  end
  object DataSetProvider_add_tim_hitory_Q: TDataSetProvider
    DataSet = FDQuery_add_time_history_q
    Left = 904
    Top = 336
  end
  object FDQuery_max_addtime_no: TFDQuery
    Connection = FDConnection_main
    SQL.Strings = (
      'select max(timeadd_no)+1 from TIMEADD_HISTORY')
    Left = 480
    Top = 120
  end
  object DataSetProvider: TDataSetProvider
    DataSet = FDQuery
    Left = 552
    Top = 416
  end
  object FDQuery_day_day: TFDQuery
    Connection = FDConnection_main
    SQL.Strings = (
      'select h.ADD_DAY, h.hc, h.hs ,l.cc'
      
        '    from  (select h.ADD_DAY, count(h.add_day) hc, sum(t.TIM_PRIS' +
        'E) hs'
      '          from timeadd_history h'
      '          INNER JOIN  item_time t'
      '          ON  h.time_name = t.time_name'
      '          group by h.add_day) h ,'
      '          (select login_day, count(*) cc'
      '          from login_history'
      '          group by login_day) l'
      '    where h.add_day = l.login_day;')
    Left = 728
    Top = 416
  end
  object DataSetProvider_dayday: TDataSetProvider
    DataSet = FDQuery_day_day
    Left = 888
    Top = 416
  end
end
