object ServerMethods1: TServerMethods1
  OldCreateOrder = False
  OnCreate = DSServerModuleCreate
  Height = 350
  Width = 638
  object SQLConnection1: TSQLConnection
    ConnectionName = 'TAXI'
    DriverName = 'Interbase'
    LoginPrompt = False
    Params.Strings = (
      'GetDriverFunc=getSQLDriverINTERBASE'
      'DriverName=Interbase'
      'DriverUnit=Data.DBXInterBase'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver230.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=23.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXInterbaseMetaDataCommandFactory,DbxInt' +
        'erBaseDriver230.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXInterbaseMetaDataCommand' +
        'Factory,Borland.Data.DbxInterBaseDriver,Version=23.0.0.0,Culture' +
        '=neutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'LibraryName=dbxint.dll'
      'LibraryNameOsx=libsqlib.dylib'
      'VendorLib=GDS32.DLL'
      'VendorLibWin64=ibclient64.dll'
      'VendorLibOsx=libgds.dylib'
      'Database=D:\Delphi\Taxi_Master\TAXI_DB.IB'
      'User_Name=sysdba'
      'Password=masterkey'
      'Role=RoleName'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'IsolationLevel=ReadCommitted'
      'SQLDialect=3'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'TrimChar=False'
      'DisplayDriverName=InterBase Server'
      'BlobSize=-1'
      'ErrorResourceFile='
      'RoleName=RoleName'
      'ServerCharSet=utf8'
      'Trim Char=False'
      'SEP=')
    Connected = True
    Left = 64
    Top = 112
  end
  object Taxi_Table: TSQLTable
    MaxBlobSize = -1
    SQLConnection = SQLConnection1
    TableName = 'TAXI'
    Left = 160
    Top = 144
  end
  object SQL_User_Query: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 160
    Top = 72
  end
  object Taxi_Table_Provider: TDataSetProvider
    DataSet = Taxi_Table
    Left = 280
    Top = 144
  end
  object SQL_User_Query_Provider: TDataSetProvider
    DataSet = SQL_User_Query
    Left = 280
    Top = 72
  end
  object Order_Table: TSQLTable
    MaxBlobSize = -1
    SQLConnection = SQLConnection1
    TableName = 'ORDERS'
    Left = 408
    Top = 144
  end
  object SQL_Taxi_Query: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 408
    Top = 72
  end
  object Order_Table_Provider: TDataSetProvider
    DataSet = Order_Table
    Left = 528
    Top = 144
  end
  object SQL_Taxi_Query_Provider: TDataSetProvider
    DataSet = SQL_Taxi_Query
    Left = 528
    Top = 72
  end
  object SQL_Check_Order: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select C_PHONE from ORDERS where C_PHONE like '#39'01065971205'#39';')
    SQLConnection = SQLConnection1
    Left = 160
    Top = 16
  end
  object SQL_Check_Order_Provider: TDataSetProvider
    DataSet = SQL_Check_Order
    Left = 280
    Top = 24
  end
  object SQL_UD_Detail: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 160
    Top = 224
  end
  object SQL_UD_Detail_Provider: TDataSetProvider
    DataSet = SQL_UD_Detail
    Left = 280
    Top = 224
  end
end
