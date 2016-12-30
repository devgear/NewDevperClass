object DM: TDM
  OldCreateOrder = False
  Height = 472
  Width = 727
  object employee: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.Active = True
    DataSet.CommandText = 'EMPLOYEE'
    DataSet.CommandType = ctTable
    DataSet.DataSource = empSource
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 312
    Top = 168
  end
  object empSource: TDataSource
    DataSet = employee
    Left = 312
    Top = 240
  end
  object part: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = 'PART'
    DataSet.CommandType = ctTable
    DataSet.DataSource = partSource
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 384
    Top = 168
  end
  object partSource: TDataSource
    DataSet = part
    Left = 384
    Top = 240
  end
  object empView: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'team'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select *'
      'from employee'
      'where emp_team = :team ')
    SQLConnection = SQLConnection1
    Left = 528
    Top = 168
  end
  object proSource: TDataSource
    DataSet = project
    Left = 456
    Top = 240
  end
  object project: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = 'PROJECT'
    DataSet.CommandType = ctTable
    DataSet.DataSource = proSource
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 456
    Top = 168
  end
  object partView: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select *'
      'from part'
      'order by part_name, part_team')
    SQLConnection = SQLConnection1
    Left = 528
    Top = 240
  end
  object SQLConnection1: TSQLConnection
    ConnectionName = 'DB'
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
      
        'Database=C:\Users\Kang\Documents\Embarcadero\Studio\Projects\MIN' +
        'I_PROJECT\DB.GDB'
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
    Left = 128
    Top = 168
  end
  object insertPro: TSQLQuery
    DataSource = proSource
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftWideString
        Name = 'no'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'name'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'start'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'end'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'stat'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'mng'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'insert into project(pro_no,pro_name,pro_start,pro_end,pro_stat,p' +
        'ro_mng)values(pro_no=:no,pro_name=:name,pro_start=:start,pro_end' +
        '=:end,pro_stat=:stat,pro_mng=:mng)')
    SQLConnection = SQLConnection1
    Left = 376
    Top = 328
  end
  object proEmp: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = 'PRO_EMP'
    DataSet.CommandType = ctTable
    DataSet.DataSource = proEmpSource
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 240
    Top = 168
  end
  object proEmpSource: TDataSource
    DataSet = proEmp
    Left = 240
    Top = 240
  end
  object delete: TSQLQuery
    DataSource = proSource
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'no'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'delete from project where pro_no = :no')
    SQLConnection = SQLConnection1
    Left = 448
    Top = 328
  end
end
