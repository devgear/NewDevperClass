object dmJoan: TdmJoan
  OldCreateOrder = False
  Height = 281
  Width = 311
  object JoanConnection: TSQLConnection
    ConnectionName = 'leveltest'
    DriverName = 'MYSQL'
    GetDriverFunc = 'getSQLDriverMYSQL'
    LibraryName = 'dbxmys.dll'
    Params.Strings = (
      'DriverUnit=DBXMySQL'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver150.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=15.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXMySqlMetaDataCommandFactory,DbxMySQLDr' +
        'iver150.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXMySqlMetaDataCommandFact' +
        'ory,Borland.Data.DbxMySQLDriver,Version=15.0.0.0,Culture=neutral' +
        ',PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverMYSQL'
      'LibraryName=dbxmys.dll'
      'VendorLib=LIBMYSQL.dll'
      'MaxBlobSize=-1'
      'ErrorResourceFile='
      'drivername=MYSQL'
      'blobsize=-1'
      'Database=leveltest'
      'HostName=localhost'
      'localecode=0000'
      'Password=rudtlr'
      'User_Name=root'
      'compressed=False'
      'encrypted=False')
    VendorLib = 'LIBMYSQL.dll'
    Connected = True
    Left = 56
    Top = 56
  end
  object JoanQuery: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = JoanConnection
    Left = 128
    Top = 56
  end
  object SQLQuery1: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = JoanConnection
    Left = 128
    Top = 112
  end
end
