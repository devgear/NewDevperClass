object DM: TDM
  OldCreateOrder = False
  Height = 370
  Width = 562
  object SQLConnection1: TSQLConnection
    ConnectionName = 'Project'
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
      
        'Database=C:\Users\Jo\Desktop\Project_MiniProject_'#51312#50689#51456'\DBdbdb12.gd' +
        'b'
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
    Left = 80
    Top = 56
  end
  object EmployeeSource: TDataSource
    DataSet = Employee
    Left = 128
    Top = 128
  end
  object Employee: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = 'EMPLOYEE'
    DataSet.CommandType = ctTable
    DataSet.DataSource = EmployeeSource
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 56
    Top = 128
  end
  object Dept: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = 'DEPT'
    DataSet.CommandType = ctTable
    DataSet.DataSource = DeptSource
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 56
    Top = 192
  end
  object DeptSource: TDataSource
    DataSet = Dept
    Left = 136
    Top = 192
  end
  object ProjectSource: TDataSource
    DataSet = Project
    Left = 144
    Top = 256
  end
  object subEmployeeSource: TDataSource
    DataSet = SimpleDataSet1
    Left = 400
    Top = 56
  end
  object SimpleDataSet1: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = 'EMPLOYEE'
    DataSet.CommandType = ctTable
    DataSet.DataSource = subEmployeeSource
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftWideString
        Name = 'E_TEAM'
        ParamType = ptInput
        Value = '2'#54016
      end>
    IndexFieldNames = 'E_TEAM'
    MasterFields = 'D_TEAM'
    MasterSource = DeptSource
    PacketRecords = 0
    Params = <>
    Left = 320
    Top = 56
  end
  object DeptQuery: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from dept'
      'order by D_dept,d_team')
    SQLConnection = SQLConnection1
    Left = 328
    Top = 205
  end
  object EmployeeQuery: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'Team'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select E_name,E_team'
      'from Employee'
      'where e_team = :Team')
    SQLConnection = SQLConnection1
    Left = 400
    Top = 205
  end
  object ProjectQuery: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pmname'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select count(PM_member) as total'
      'from projectmember'
      'where PM_name like :pmname')
    SQLConnection = SQLConnection1
    Left = 472
    Top = 208
  end
  object Project: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = 'PROJECT'
    DataSet.CommandType = ctTable
    DataSet.DataSource = ProjectSource
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 64
    Top = 240
  end
  object ProjectMember: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.Active = True
    DataSet.CommandText = 'PROJECTMEMBER'
    DataSet.CommandType = ctTable
    DataSet.DataSource = PMSource
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 72
    Top = 304
  end
  object PMSource: TDataSource
    DataSet = ProjectMember
    Left = 152
    Top = 312
  end
  object SimpleDataSet2: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = 'PROJECTMEMBER'
    DataSet.CommandType = ctTable
    DataSet.DataSource = SubPMSource
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftWideString
        Name = 'PM_NAME'
        ParamType = ptInput
        Value = '2'
      end>
    IndexFieldNames = 'PM_NAME'
    MasterFields = 'P_NAME'
    MasterSource = ProjectSource
    PacketRecords = 0
    Params = <>
    Left = 320
    Top = 112
  end
  object SubPMSource: TDataSource
    DataSet = SimpleDataSet2
    Left = 400
    Top = 112
  end
  object dateQuery: TSQLQuery
    Active = True
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'date1'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'name1'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select distinct(PM_Member) from Project,ProjectMember where :dat' +
        'e1 < p_dateend and PM_Member like :name1')
    SQLConnection = SQLConnection1
    Left = 296
    Top = 280
  end
end
