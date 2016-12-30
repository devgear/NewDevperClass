object dmDatabase: TdmDatabase
  OldCreateOrder = False
  Height = 212
  Width = 257
  object dbxConnection: TSQLConnection
    ConnectionName = 'LEVELTEST'
    DriverName = 'MYSQL'
    GetDriverFunc = 'getSQLDriverMYSQL'
    LibraryName = 'dbxmys.dll'
    LoginPrompt = False
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
      'encrypted=False'
      'ServerCharSet=euckr')
    VendorLib = 'LIBMYSQL.dll'
    Connected = True
    Left = 56
    Top = 24
  end
  object dbxQuery: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dbxConnection
    Left = 56
    Top = 80
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 176
    Top = 136
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = dbxQuery
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 56
    Top = 136
  end
end
