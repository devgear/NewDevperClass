object ServerMethods1: TServerMethods1
  OldCreateOrder = False
  Height = 552
  Width = 580
  object FDConnection1: TFDConnection
    Params.Strings = (
      'User_Name=sysdba'
      'Password=masterkey'
      'Database=D:\JOB\bike_repair3tier(2)\DB\BIKE.GDB'
      'CharacterSet=utf8'
      'DriverID=IB')
    Connected = True
    LoginPrompt = False
    Left = 32
    Top = 32
  end
  object bike: TFDTable
    Active = True
    IndexFieldNames = 'COMPO'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'BIKE'
    TableName = 'BIKE'
    Left = 32
    Top = 80
  end
  object repairman: TFDTable
    Active = True
    IndexFieldNames = 'RKEY'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'REPAIRMAN'
    TableName = 'REPAIRMAN'
    Left = 32
    Top = 184
  end
  object repaircenter: TFDTable
    Active = True
    IndexFieldNames = 'CNAME'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'REPAIRCENTER'
    TableName = 'REPAIRCENTER'
    Left = 32
    Top = 224
  end
  object repairlist: TFDTable
    Active = True
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'REPAIRLIST'
    TableName = 'REPAIRLIST'
    Left = 32
    Top = 272
    object repairlistUNAME: TWideStringField
      FieldName = 'UNAME'
      Origin = 'UNAME'
      Required = True
      Size = 80
    end
    object repairlistUPHONE: TWideStringField
      FieldName = 'UPHONE'
      Origin = 'UPHONE'
      Required = True
      Size = 80
    end
    object repairlistRESERVEDATE: TSQLTimeStampField
      FieldName = 'RESERVEDATE'
      Origin = 'RESERVEDATE'
      Required = True
    end
    object repairlistCOMPO: TWideStringField
      FieldName = 'COMPO'
      Origin = 'COMPO'
      Required = True
      Size = 80
    end
    object repairlistCNAME: TWideStringField
      FieldName = 'CNAME'
      Origin = 'CNAME'
      Required = True
      Size = 200
    end
    object repairlistSCORE: TIntegerField
      FieldName = 'SCORE'
      Origin = 'SCORE'
    end
    object repairlistRKEY: TWideStringField
      FieldName = 'RKEY'
      Origin = 'RKEY'
      Size = 80
    end
  end
  object bikeDSP: TDataSetProvider
    DataSet = bike
    Left = 104
    Top = 80
  end
  object user2DSP: TDataSetProvider
    DataSet = user2
    Left = 104
    Top = 128
  end
  object repairmanDSP: TDataSetProvider
    DataSet = repairman
    Left = 104
    Top = 176
  end
  object repaircenterDSP: TDataSetProvider
    DataSet = repaircenter
    Left = 104
    Top = 224
  end
  object repairlistDSP: TDataSetProvider
    DataSet = repairlist
    Left = 104
    Top = 272
  end
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 120
    Top = 24
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 232
    Top = 24
  end
  object loginQuery: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from repairman')
    Left = 344
    Top = 208
  end
  object userQuery: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'delete from repairlist where uname = :puname AND uphone = :pupho' +
        'ne AND state = '#39#50696#50557#51473#39' AND compo = :compo AND cname = :cname')
    Left = 344
    Top = 472
    ParamData = <
      item
        Name = 'PUNAME'
        DataType = ftWideString
        ParamType = ptInput
        Size = 80
      end
      item
        Name = 'PUPHONE'
        DataType = ftWideString
        ParamType = ptInput
        Size = 80
      end
      item
        Name = 'COMPO'
        DataType = ftWideString
        ParamType = ptInput
        Size = 80
      end
      item
        Name = 'CNAME'
        DataType = ftWideString
        ParamType = ptInput
        Size = 200
      end>
  end
  object listQuery: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      
        'select reservedate,compo,cname,score,state from repairlist where' +
        ' uname = :puname AND uphone = :puphone')
    Left = 344
    Top = 152
    ParamData = <
      item
        Name = 'PUNAME'
        DataType = ftWideString
        ParamType = ptInput
        Size = 80
      end
      item
        Name = 'PUPHONE'
        DataType = ftWideString
        ParamType = ptInput
        Size = 80
      end>
  end
  object loginQueryDSP: TDataSetProvider
    DataSet = loginQuery
    Left = 432
    Top = 208
  end
  object user2: TFDTable
    Active = True
    IndexFieldNames = 'UPHONE'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'USER2'
    TableName = 'USER2'
    Left = 32
    Top = 136
  end
  object listQueryDSP: TDataSetProvider
    DataSet = listQuery
    Left = 432
    Top = 144
  end
  object IPSAQuery: TFDQuery
    Connection = FDConnection1
    Left = 32
    Top = 384
  end
  object IPSAQueryDSP: TDataSetProvider
    DataSet = IPSAQuery
    Left = 88
    Top = 384
  end
  object repairmanQuery: TFDQuery
    Connection = FDConnection1
    Left = 344
    Top = 336
  end
  object totQuery: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select count(*) as total'
      'from repairlist'
      'where rname is NULL')
    Left = 344
    Top = 392
  end
  object comlistQuery: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      
        'select reservedate,compo,cname,state,score from repairlist where' +
        ' uname = :puname AND uphone = :puphone AND rname IS NOT NULL'
      '')
    Left = 344
    Top = 88
    ParamData = <
      item
        Name = 'PUNAME'
        DataType = ftWideString
        ParamType = ptInput
        Size = 80
      end
      item
        Name = 'PUPHONE'
        DataType = ftWideString
        ParamType = ptInput
        Size = 80
      end>
  end
  object inglistQuery: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      
        'select reservedate,compo,cname,state from repairlist where uname' +
        ' = :puname AND uphone = :puphone AND rname IS NULL')
    Left = 344
    Top = 24
    ParamData = <
      item
        Name = 'PUNAME'
        DataType = ftWideString
        ParamType = ptInput
        Size = 80
      end
      item
        Name = 'PUPHONE'
        DataType = ftWideString
        ParamType = ptInput
        Size = 80
      end>
  end
  object inglistQueryDSP: TDataSetProvider
    DataSet = inglistQuery
    Left = 432
    Top = 24
  end
  object comlistQueryDSp: TDataSetProvider
    DataSet = comlistQuery
    Left = 432
    Top = 80
  end
  object CenterQuery: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      
        'select clatitude,chardness from repaircenter where cname = :pcna' +
        'me')
    Left = 344
    Top = 272
    ParamData = <
      item
        Name = 'PCNAME'
        DataType = ftWideString
        ParamType = ptInput
        Size = 80
      end>
  end
  object CenterQueryDSP: TDataSetProvider
    DataSet = CenterQuery
    Left = 432
    Top = 272
  end
end
