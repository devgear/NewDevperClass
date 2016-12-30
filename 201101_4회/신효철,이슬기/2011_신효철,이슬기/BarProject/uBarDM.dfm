object DM: TDM
  OldCreateOrder = False
  Height = 333
  Width = 452
  object SQLConnection: TSQLConnection
    ConnectionName = 'REST'
    DriverName = 'INTERBASE'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbxint.dll'
    LoginPrompt = False
    Params.Strings = (
      'drivername=INTERBASE'
      'blobsize=-1'
      'commitretain=False'
      'Database=C:\Project_bar\db\RESTAURANT.IB'
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
    Left = 32
    Top = 16
  end
  object BarQuery: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'Popen_date'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Pslip_num'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Ptable_num'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'insert into yeyak values :Popen_date, :Pslip_num, :Ptable_num')
    SQLConnection = SQLConnection
    Left = 96
    Top = 16
  end
  object ResvSource: TDataSource
    DataSet = ResvQuery
    Left = 160
    Top = 72
  end
  object ResvQuery: TSimpleDataSet
    Aggregates = <>
    Connection = SQLConnection
    DataSet.CommandText = 'select * from resv_info where r_date = :Pr_date'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftDate
        Name = 'Pr_date'
        ParamType = ptInput
      end>
    Params = <>
    Left = 96
    Top = 72
    object ResvQueryR_NUM: TIntegerField
      FieldName = 'R_NUM'
      Required = True
    end
    object ResvQueryR_DATE: TDateField
      FieldName = 'R_DATE'
      Required = True
    end
    object ResvQueryR_TIME: TStringField
      FieldName = 'R_TIME'
      Required = True
      Size = 12
    end
    object ResvQueryR_NAME: TStringField
      FieldName = 'R_NAME'
      Required = True
    end
    object ResvQueryR_PHONE: TStringField
      FieldName = 'R_PHONE'
      Required = True
      Size = 13
    end
    object ResvQueryR_MEMO: TStringField
      FieldName = 'R_MEMO'
      Size = 50
    end
    object ResvQueryR_REMARKS: TBooleanField
      FieldName = 'R_REMARKS'
      Required = True
    end
  end
  object SalesQuery: TSimpleDataSet
    Aggregates = <>
    Connection = SQLConnection
    DataSet.CommandText = 'select * from Sales_Info where open_date = :Popen_date'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftDate
        Name = 'Popen_date'
        ParamType = ptInput
      end>
    Params = <>
    Left = 96
    Top = 136
  end
  object SalesSource: TDataSource
    DataSet = SalesQuery
    Left = 160
    Top = 136
  end
  object FoodTable: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection
    DataSet.CommandText = 'FOOD_INFO'
    DataSet.CommandType = ctTable
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 96
    Top = 200
  end
  object FoodSource: TDataSource
    DataSet = FoodTable
    Left = 160
    Top = 200
  end
  object OrderQuery: TSimpleDataSet
    Aggregates = <>
    Connection = SQLConnection
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 96
    Top = 264
  end
  object SalesDateDataSource: TDataSource
    DataSet = SalesDateQuery
    Left = 328
    Top = 136
  end
  object SalesDateQuery: TSimpleDataSet
    Aggregates = <>
    Connection = SQLConnection
    DataSet.CommandText = 
      'select * from sales_info'#13#10'where open_date  between :Poldopen_dat' +
      'e and :Pnewopen_date'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftUnknown
        Name = 'Poldopen_date'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Pnewopen_date'
        ParamType = ptInput
      end>
    Params = <>
    Left = 256
    Top = 136
    object SalesDateQueryS_NUM: TIntegerField
      FieldName = 'S_NUM'
      Required = True
    end
    object SalesDateQueryOPEN_DATE: TDateField
      FieldName = 'OPEN_DATE'
      Required = True
    end
    object SalesDateQuerySLIP_NUM: TSmallintField
      FieldName = 'SLIP_NUM'
      Required = True
    end
    object SalesDateQueryTABLE_NUM: TSmallintField
      FieldName = 'TABLE_NUM'
      Required = True
    end
    object SalesDateQueryS_SUM: TIntegerField
      FieldName = 'S_SUM'
      Required = True
      EditFormat = '##,##0'#50896
    end
    object SalesDateQueryS_TIME: TStringField
      FieldName = 'S_TIME'
      Required = True
      Size = 12
    end
    object SalesDateQueryOS_NUM: TIntegerField
      FieldName = 'OS_NUM'
      Required = True
    end
  end
  object insertQuery: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 256
    Top = 200
  end
end
