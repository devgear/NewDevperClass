object udm: Tudm
  OldCreateOrder = False
  Height = 512
  Width = 613
  object shopConnection: TSQLConnection
    ConnectionName = 'MOVIE'
    DriverName = 'INTERBASE'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbxint.dll'
    LoginPrompt = False
    Params.Strings = (
      'drivername=INTERBASE'
      'blobsize=-1'
      'commitretain=False'
      'Database=c:\MOVIES.IB'
      'localecode=0000'
      'password=masterkey'
      'rolename=RoleName'
      'sqldialect=3'
      'isolationlevel=ReadCommitted'
      'user_name=sysdba'
      'waitonlocks=True'
      'trim char=False')
    VendorLib = 'GDS32.DLL'
    Left = 232
    Top = 32
  end
  object customer: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = shopConnection
    DataSet.CommandText = 'CUSTOMERS'
    DataSet.CommandType = ctTable
    DataSet.DataSource = customerSource
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    FetchOnDemand = False
    Params = <>
    Left = 32
    Top = 40
  end
  object customerSource: TDataSource
    DataSet = customer
    Left = 104
    Top = 40
  end
  object moviesSource: TDataSource
    DataSet = movies
    Left = 104
    Top = 104
  end
  object movies: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = shopConnection
    DataSet.CommandText = 'MOVIES'
    DataSet.CommandType = ctTable
    DataSet.DataSource = moviesSource
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    FetchOnDemand = False
    Params = <>
    Left = 32
    Top = 104
  end
  object lendSource: TDataSource
    DataSet = lend
    Left = 104
    Top = 168
  end
  object lend: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = shopConnection
    DataSet.CommandText = 'LEND'
    DataSet.CommandType = ctTable
    DataSet.DataSource = lendSource
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    FetchOnDemand = False
    Params = <>
    Left = 32
    Top = 168
  end
  object customertable: TSQLTable
    MaxBlobSize = -1
    SQLConnection = shopConnection
    TableName = 'CUSTOMER'
    Left = 344
    Top = 288
  end
  object customertableSource: TDataSource
    DataSet = customertable
    Left = 432
    Top = 288
  end
  object SimpleDataSet1: TSimpleDataSet
    Aggregates = <>
    Connection = shopConnection
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    FieldDefs = <
      item
        Name = 'SimpleDataSet1Field1'
        DataType = ftVarBytes
        Size = 16
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 296
    Top = 136
  end
end
