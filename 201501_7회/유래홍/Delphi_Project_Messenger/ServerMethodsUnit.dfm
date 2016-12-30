object ServerMethods1: TServerMethods1
  OldCreateOrder = False
  Height = 709
  Width = 546
  object SQLConnection1: TSQLConnection
    DriverName = 'MySQL'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXMySQL'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver210.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=21.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXMySqlMetaDataCommandFactory,DbxMySQLDr' +
        'iver210.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXMySqlMetaDataCommandFact' +
        'ory,Borland.Data.DbxMySQLDriver,Version=21.0.0.0,Culture=neutral' +
        ',PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverMYSQL'
      'LibraryName=dbxmys.dll'
      'LibraryNameOsx=libsqlmys.dylib'
      'VendorLib=LIBMYSQL.dll'
      'VendorLibWin64=libmysql.dll'
      'VendorLibOsx=libmysqlclient.dylib'
      'HostName=localhost'
      'Database=dsnap'
      'User_Name=root'
      'Password=0000'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'Compressed=False'
      'Encrypted=False'
      'BlobSize=-1'
      'ErrorResourceFile='
      'ServerCharSet=utf8')
    Connected = True
    Left = 24
    Top = 24
  end
  object m0010: TSQLDataSet
    Active = True
    CommandText = 'm0010'
    CommandType = ctTable
    DbxCommandType = 'Dbx.Table'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 96
    Top = 24
  end
  object m0010_Provider: TDataSetProvider
    DataSet = m0010
    Left = 175
    Top = 24
  end
  object ClientDataSet_m0010: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'm0010_Provider'
    Left = 263
    Top = 24
  end
  object DataSource_m0010: TDataSource
    DataSet = ClientDataSet_m0010
    Left = 359
    Top = 24
  end
  object m1010: TSQLDataSet
    Active = True
    CommandText = 'm1010'
    CommandType = ctTable
    DbxCommandType = 'Dbx.Table'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 96
    Top = 88
  end
  object m1010_Provider: TDataSetProvider
    DataSet = m1010
    Left = 175
    Top = 88
  end
  object ClientDataSet_m1010: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'm1010_Provider'
    Left = 263
    Top = 88
  end
  object DataSource_m1010: TDataSource
    DataSet = ClientDataSet_m1010
    Left = 359
    Top = 88
  end
  object m2010: TSQLDataSet
    Active = True
    CommandText = 'm2010'
    CommandType = ctTable
    DbxCommandType = 'Dbx.Table'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 96
    Top = 150
  end
  object m2010_Provider: TDataSetProvider
    DataSet = m2010
    Left = 175
    Top = 150
  end
  object ClientDataSet_m2010: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'm2010_Provider'
    Left = 263
    Top = 150
  end
  object DataSource_m2010: TDataSource
    DataSet = ClientDataSet_m2010
    Left = 359
    Top = 150
  end
  object m3010: TSQLDataSet
    Active = True
    CommandText = 'm3010'
    CommandType = ctTable
    DbxCommandType = 'Dbx.Table'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 96
    Top = 206
  end
  object m3010_Provider: TDataSetProvider
    DataSet = m3010
    Left = 175
    Top = 206
  end
  object ClientDataSet_m3010: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'm3010_Provider'
    Left = 263
    Top = 214
  end
  object DataSource_m3010: TDataSource
    DataSet = ClientDataSet_m3010
    Left = 359
    Top = 214
  end
  object Select_Roaster: TSQLDataSet
    CommandText = 
      'select * from m0010 A right join m3010 B On A.c001 = B.c002 wher' +
      'e B.C001 = :myID order by A.C003'
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftUnknown
        Name = 'myID'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection1
    Left = 96
    Top = 270
  end
  object Select_Roaster_Provider: TDataSetProvider
    DataSet = Select_Roaster
    Left = 191
    Top = 278
  end
  object Select_ChatRoom: TSQLDataSet
    CommandText = 
      'select A.c001, A.c002, A.c003, A.c004, A.c005, A.c006, A.c007, B' +
      '.C003 as c008, B.C005 as c009, B.C004 as C010 from m2010 A left ' +
      'join m0010 B on A.C004 = B.C001 where A.c002  = :roomID order by' +
      ' A.c001'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'roomID'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection1
    Left = 96
    Top = 328
  end
  object Select_ChatRoom_Provider: TDataSetProvider
    DataSet = Select_ChatRoom
    Left = 208
    Top = 328
  end
  object Insert_Chat: TSQLDataSet
    CommandText = 
      'insert into m2010 (c002, c003, c004, c005, c006, c007) values (:' +
      'roomID, now(), :senderID, :msgType,:msgValue,:countView);'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftWideString
        Name = 'roomID'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'senderID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'msgType'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'msgValue'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'countView'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection1
    Left = 96
    Top = 504
  end
  object Insert_Chat_Provider: TDataSetProvider
    DataSet = Insert_Chat
    Left = 184
    Top = 504
  end
  object SQLQuery: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 24
    Top = 80
  end
  object Select_RoomList: TSQLDataSet
    CommandText = 'select * from m1010 where c002 = :uid'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftWideString
        Name = 'uid'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection1
    Left = 96
    Top = 384
  end
  object Select_RoomList_Provider: TDataSetProvider
    DataSet = Select_RoomList
    Left = 200
    Top = 392
  end
  object dd: TSQLDataSet
    Params = <>
    Left = 96
    Top = 448
  end
  object DataSetProvider1: TDataSetProvider
    Left = 176
    Top = 448
  end
end
