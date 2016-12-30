object ServerMethods1: TServerMethods1
  OldCreateOrder = False
  Height = 381
  Width = 581
  object SQLConnection1: TSQLConnection
    ConnectionName = 'MTBDB'
    DriverName = 'INTERBASE'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbxint.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=DBXInterBase'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver150.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=15.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXInterbaseMetaDataCommandFactory,DbxInt' +
        'erBaseDriver150.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXInterbaseMetaDataCommand' +
        'Factory,Borland.Data.DbxInterBaseDriver,Version=15.0.0.0,Culture' +
        '=neutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverINTERBASE'
      'LibraryName=dbxint.dll'
      'VendorLib=GDS32.DLL'
      'Role=RoleName'
      'MaxBlobSize=-1'
      'TrimChar=False'
      'ErrorResourceFile='
      'ServerCharSet='
      'drivername=INTERBASE'
      'blobsize=-1'
      'commitretain=False'
      'Database=D:\Delphi\DelphiHome\MTB\MTBDB.IB'
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
    Left = 64
    Top = 56
  end
  object Item: TSQLTable
    MaxBlobSize = 1
    SQLConnection = SQLConnection1
    TableName = 'ITEM'
    Left = 216
    Top = 72
  end
  object Shop: TSQLTable
    MaxBlobSize = -1
    SQLConnection = SQLConnection1
    TableName = 'SHOP'
    Left = 216
    Top = 136
  end
  object ItemProvider: TDataSetProvider
    DataSet = Item
    Left = 288
    Top = 72
  end
  object History: TSQLTable
    MaxBlobSize = -1
    SQLConnection = SQLConnection1
    TableName = 'HISTORY'
    Left = 216
    Top = 200
  end
  object User: TSQLTable
    MaxBlobSize = -1
    SQLConnection = SQLConnection1
    TableName = 'USER'
    Left = 216
    Top = 264
  end
  object ShopProvider: TDataSetProvider
    DataSet = Shop
    Left = 288
    Top = 136
  end
  object HistoryProvider: TDataSetProvider
    DataSet = History
    Left = 288
    Top = 200
  end
  object UserProvider: TDataSetProvider
    DataSet = User
    Left = 288
    Top = 264
  end
  object SQLLog: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'PID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select C_ID,C_PW from SHOP'
      'where C_ID =:PID')
    SQLConnection = ClientModule1.SQLConnection1
    Left = 216
    Top = 320
  end
  object SQLLogProvider: TDataSetProvider
    DataSet = SQLLog
    Left = 288
    Top = 320
  end
  object SQLQuery: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 104
    Top = 184
  end
end
