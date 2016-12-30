object ServerMethods: TServerMethods
  OldCreateOrder = False
  Height = 535
  Width = 482
  object SQLConnection1: TSQLConnection
    ConnectionName = 'RENTDB'
    DriverName = 'INTERBASE'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbxint.dll'
    LoginPrompt = False
    Params.Strings = (
      'drivername=INTERBASE'
      'blobsize=-1'
      'commitretain=False'
      'database=C:\RENTALDB.IB'
      'localecode=0000'
      'password=masterkey'
      'rolename=RoleName'
      'sqldialect=3'
      'isolationlevel=ReadCommitted'
      'user_name=sysdba'
      'waitonlocks=True'
      'trim char=False')
    VendorLib = 'GDS32.DLL'
    Connected = True
    Left = 24
    Top = 16
  end
  object CustomTable: TSQLTable
    Active = True
    MaxBlobSize = -1
    SQLConnection = SQLConnection1
    TableName = 'Custom'
    Left = 104
    Top = 16
    object CustomTablec_id: TStringField
      FieldName = 'c_id'
      Required = True
      Size = 10
    end
    object CustomTablename: TStringField
      FieldName = 'name'
      Size = 10
    end
    object CustomTabletel: TStringField
      FieldName = 'tel'
      Size = 18
    end
    object CustomTableaddress: TStringField
      FieldName = 'address'
      Size = 40
    end
    object CustomTablelicense_num: TStringField
      FieldName = 'license_num'
    end
    object CustomTablejumin: TStringField
      FieldName = 'jumin'
    end
    object CustomTablebigo: TStringField
      FieldName = 'bigo'
      Size = 100
    end
  end
  object CustomProvider: TDataSetProvider
    DataSet = CustomTable
    Left = 192
    Top = 16
  end
  object branchTable: TSQLTable
    Active = True
    MaxBlobSize = -1
    SQLConnection = SQLConnection1
    TableName = 'branch'
    Left = 104
    Top = 72
  end
  object branchProvider: TDataSetProvider
    DataSet = branchTable
    Left = 192
    Top = 72
  end
  object CarTable: TSQLTable
    Active = True
    MaxBlobSize = -1
    SQLConnection = SQLConnection1
    TableName = 'car'
    Left = 104
    Top = 128
  end
  object revTable: TSQLTable
    Active = True
    MaxBlobSize = -1
    SQLConnection = SQLConnection1
    TableName = 'rev'
    Left = 104
    Top = 184
  end
  object rentalTable: TSQLTable
    Active = True
    MaxBlobSize = -1
    SQLConnection = SQLConnection1
    TableName = 'rent'
    Left = 104
    Top = 240
  end
  object CarProvider: TDataSetProvider
    DataSet = CarTable
    Left = 192
    Top = 128
  end
  object revProvider: TDataSetProvider
    DataSet = revTable
    Left = 192
    Top = 184
  end
  object rentalProvider: TDataSetProvider
    DataSet = rentalTable
    Left = 192
    Top = 240
  end
  object InsertRent: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Precision = 10
        Name = 'PRENTALID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 10
        Name = 'PCAR'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 10
        Name = 'PCUSTOM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 10
        Name = 'PBRANCH'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PPRICE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PUDATE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Precision = 4
        Name = 'PRENTALDATE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Precision = 4
        Name = 'PBACKDATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 10
        Name = 'PREVNUM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 25
        Name = 'PCARSTATUS'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 20
        Name = 'PPENALTY'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection1
    StoredProcName = 'INSERT_RENTAL'
    Left = 24
    Top = 80
  end
  object InsertCustom: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Precision = 10
        Name = 'PID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 10
        Name = 'PNAME'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 10
        Name = 'PTEL'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 10
        Name = 'PADDRESS'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 10
        Name = 'PLICENSE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 10
        Name = 'PJUMIN'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 10
        Name = 'PBIGO'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection1
    StoredProcName = 'INSERT_CUSTOM'
    Left = 24
    Top = 136
  end
  object joinrent: TSQLQuery
    Active = True
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT "car"."name","car"."price","car"."type","branch"."name","' +
        'car"."car_id","branch"."branch_id"'
      'FROM "car","branch"'
      'WHERE "car"."branch_id" = "branch"."branch_id"')
    SQLConnection = SQLConnection1
    Left = 104
    Top = 304
  end
  object jointableprovider: TDataSetProvider
    DataSet = joinrent
    Left = 192
    Top = 304
  end
  object subrent: TSQLQuery
    Active = True
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT "Custom"."name","back_date","car_status"'
      'FROM "Custom" C ,"rent" R'
      'WHERE "C"."c_id" = "R"."c_id"')
    SQLConnection = SQLConnection1
    Left = 104
    Top = 368
    object subrentname: TStringField
      FieldName = 'name'
      Size = 10
    end
    object subrentback_date: TDateField
      DisplayLabel = #48152#45225#50696#51221#51068
      FieldName = 'back_date'
    end
    object subrentcar_status: TStringField
      FieldName = 'car_status'
      Size = 50
    end
  end
  object subProvider: TDataSetProvider
    DataSet = subrent
    Left = 192
    Top = 368
  end
  object Insertrev: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Precision = 10
        Name = 'PREV_NUM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 10
        Name = 'PCARID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 15
        Name = 'PID'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Precision = 4
        Name = 'PREVDATE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PUSEDATE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Precision = 4
        Name = 'PBACKDATE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PPRICE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 10
        Name = 'PBRANCH'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection1
    StoredProcName = 'INSERT_RESERVATION'
    Left = 24
    Top = 188
  end
  object updata: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pcar'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'UPDATE "car"'
      'SET "STATUS"=( CASE WHEN STATUS= '#39'Y'#39' THEN '#39'N'#39' ELSE '#39'Y'#39' END )'
      'WHERE "car"."car_id" = :pcar')
    SQLConnection = SQLConnection1
    Left = 104
    Top = 432
  end
end
