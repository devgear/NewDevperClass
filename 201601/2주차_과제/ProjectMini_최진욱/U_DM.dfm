object DM: TDM
  OldCreateOrder = False
  Height = 374
  Width = 425
  object SQLConnection1: TSQLConnection
    ConnectionName = 'PROJECT'
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
      'Database=D:\ProjectMini\PROJECT.GDB'
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
      'ServerCharSet=UTF8'
      'Trim Char=False'
      'SEP=')
    Connected = True
    Left = 48
    Top = 48
  end
  object Employee: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = 'EMPLOYEE'
    DataSet.CommandType = ctTable
    DataSet.DataSource = Data_Emp
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 48
    Top = 104
  end
  object Part: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = 'PART'
    DataSet.CommandType = ctTable
    DataSet.DataSource = Data_Part
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 48
    Top = 168
  end
  object Project: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = 'PROJECT'
    DataSet.CommandType = ctTable
    DataSet.DataSource = Data_Project
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 48
    Top = 232
  end
  object Data_Emp: TDataSource
    DataSet = Employee
    Left = 176
    Top = 104
  end
  object Data_Part: TDataSource
    DataSet = Part
    Left = 176
    Top = 168
  end
  object Data_Project: TDataSource
    DataSet = Project
    Left = 176
    Top = 232
  end
  object P_List: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = 'P_LIST'
    DataSet.CommandType = ctTable
    DataSet.DataSource = Data_P_List
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 48
    Top = 296
  end
  object Data_P_List: TDataSource
    DataSet = P_List
    Left = 176
    Top = 296
  end
  object EMP_Query: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftWideString
        Name = 'TEAM'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select E_NAME, E_PHONE'
      'from EMPLOYEE '
      'where E_TEAM=:TEAM')
    SQLConnection = SQLConnection1
    Left = 288
    Top = 160
  end
  object Part_Query: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * From PART'
      'Order By P_NAME, P_TEAM')
    SQLConnection = SQLConnection1
    Left = 296
    Top = 112
  end
  object Input_Query: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 288
    Top = 224
  end
  object delete_Query: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 296
    Top = 288
  end
end
