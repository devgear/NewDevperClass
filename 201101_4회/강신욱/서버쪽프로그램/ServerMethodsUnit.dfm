object ServerMethods1: TServerMethods1
  OldCreateOrder = False
  Height = 409
  Width = 427
  object SQLConnection_Server: TSQLConnection
    ConnectionName = 'MESSENGER'
    DriverName = 'INTERBASE'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbxint.dll'
    LoginPrompt = False
    Params.Strings = (
      'drivername=INTERBASE'
      'blobsize=-1'
      'commitretain=False'
      'database=C:\Messenger.ib'
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
    Left = 48
    Top = 24
  end
  object Table_Report: TSQLTable
    Active = True
    MaxBlobSize = -1
    SQLConnection = SQLConnection_Server
    TableName = 'WORK_REPORT'
    Left = 148
    Top = 20
  end
  object Query_Emp_treeInfo: TSQLQuery
    Active = True
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select  code, name,dept, class from Employee'
      'order by dept')
    SQLConnection = SQLConnection_Server
    Left = 148
    Top = 152
  end
  object Table_Emp: TSQLTable
    Active = True
    MaxBlobSize = 1
    SQLConnection = SQLConnection_Server
    TableName = 'EMPLOYEE'
    Left = 148
    Top = 84
  end
  object DataSetProvider_report: TDataSetProvider
    DataSet = Table_Report
    Left = 268
    Top = 20
  end
  object DataSetProvider_Emp: TDataSetProvider
    DataSet = Table_Emp
    Left = 276
    Top = 80
  end
  object DataSetProvider_Emp_TreeInfo: TDataSetProvider
    DataSet = Query_Emp_treeInfo
    Left = 288
    Top = 152
  end
  object Query_Login_Info: TSQLQuery
    Active = True
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'code'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select * From employee'
      'where code =:code')
    SQLConnection = SQLConnection_Server
    Left = 136
    Top = 220
  end
  object DataSetProvider_Login: TDataSetProvider
    DataSet = Query_Login_Info
    Left = 268
    Top = 224
  end
  object Query_Login: TSQLQuery
    Active = True
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'code'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select  code, Social_code From employee'
      'where code =:code')
    SQLConnection = SQLConnection_Server
    Left = 136
    Top = 296
  end
end
