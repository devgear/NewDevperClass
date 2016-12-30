object DM: TDM
  OldCreateOrder = False
  Height = 271
  Width = 336
  object SQLConnection: TSQLConnection
    ConnectionName = 'Rest'
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
  object DataSource: TDataSource
    DataSet = SalesQuery
    Left = 176
    Top = 16
  end
  object SalesQuery: TSimpleDataSet
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
    Left = 104
    Top = 16
    object SalesQueryS_NUM: TIntegerField
      FieldName = 'S_NUM'
      Required = True
    end
    object SalesQueryOPEN_DATE: TDateField
      FieldName = 'OPEN_DATE'
      Required = True
    end
    object SalesQuerySLIP_NUM: TSmallintField
      FieldName = 'SLIP_NUM'
      Required = True
    end
    object SalesQueryTABLE_NUM: TSmallintField
      FieldName = 'TABLE_NUM'
      Required = True
    end
    object SalesQueryS_SUM: TIntegerField
      FieldName = 'S_SUM'
      Required = True
      EditFormat = '##,##0'#50896
    end
    object SalesQueryS_TIME: TStringField
      FieldName = 'S_TIME'
      Required = True
      Size = 12
    end
    object SalesQueryOS_NUM: TIntegerField
      FieldName = 'OS_NUM'
      Required = True
    end
  end
end
