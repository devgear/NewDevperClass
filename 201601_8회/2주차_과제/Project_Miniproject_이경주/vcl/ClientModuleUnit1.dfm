object DM: TDM
  OldCreateOrder = False
  Height = 467
  Width = 380
  object DataSource1: TDataSource
    DataSet = project
    Left = 240
    Top = 64
  end
  object DataSource2: TDataSource
    DataSet = emp
    Left = 240
    Top = 120
  end
  object DataSource3: TDataSource
    DataSet = dept
    Left = 240
    Top = 176
  end
  object emp: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = 'EMP'
    DataSet.CommandType = ctTable
    DataSet.DataSource = DataSource2
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 152
    Top = 120
  end
  object SQLConnection1: TSQLConnection
    ConnectionName = 'mini_project'
    DriverName = 'Interbase'
    LoginPrompt = False
    Params.Strings = (
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
      'Database=D:\'#45944#54028#51060' '#51200#51109#54260#45908'\Project_Miniproject_'#51060#44221#51452'\db\MINI_PROJECT.IB'
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
      'ServerCharSet='
      'Trim Char=False'
      'SEP=')
    Connected = True
    Left = 48
    Top = 24
  end
  object project: TSimpleDataSet
    Active = True
    Aggregates = <>
    AggregatesActive = True
    Connection = SQLConnection1
    DataSet.GetMetadata = True
    DataSet.CommandText = 'PROJECT'
    DataSet.CommandType = ctTable
    DataSet.DataSource = DataSource1
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 152
    Top = 64
  end
  object dept: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = 'DEPT'
    DataSet.CommandType = ctTable
    DataSet.DataSource = DataSource3
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 152
    Top = 176
  end
  object count: TSQLQuery
    DataSource = DataSource2
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 176
    Top = 296
  end
  object search: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 280
    Top = 296
  end
  object add: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 80
    Top = 296
  end
end
