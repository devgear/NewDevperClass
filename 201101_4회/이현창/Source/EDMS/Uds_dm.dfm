object dm: Tdm
  OldCreateOrder = False
  Height = 403
  Width = 449
  object DSDConnection: TSQLConnection
    ConnectionName = 'DSD'
    DriverName = 'INTERBASE'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbxint.dll'
    LoginPrompt = False
    Params.Strings = (
      'drivername=INTERBASE'
      'blobsize=-1'
      'commitretain=False'
      'Database=D:\Project\DB\DOCSETTLE.ib'
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
    Left = 32
    Top = 16
  end
  object MyQuery: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'Pid'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from emp, dept, class where emp_no = :Pid'
      
        'and emp.emp_dept_code = dept.dept_code and emp_class_code = clas' +
        's_code'
      ''
      '')
    SQLConnection = DSDConnection
    Left = 392
    Top = 16
  end
  object SettleQuery: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = DSDConnection
    DataSet.Active = True
    DataSet.CommandText = 'select * from SETTLE order by settle_read_yn asc, settle_no desc'
    DataSet.MaxBlobSize = 1
    DataSet.Params = <>
    IndexFieldNames = 'SETTLE_RECVER'
    MasterFields = 'EMP_NO'
    MasterSource = MySource
    PacketRecords = 0
    Params = <>
    Left = 72
    Top = 344
    object SettleQuerySETTLE_NO: TIntegerField
      FieldName = 'SETTLE_NO'
      Required = True
    end
    object SqSETTLE_NM: TStringField
      Alignment = taCenter
      DisplayLabel = #47928#49436' '#47749
      DisplayWidth = 80
      FieldName = 'SETTLE_NM'
      Size = 100
    end
    object SqSETTLE_CONT: TStringField
      Alignment = taCenter
      DisplayLabel = #45236#50857
      DisplayWidth = 15
      FieldName = 'SETTLE_CONT'
      Visible = False
      Size = 500
    end
    object SqSENDER_NM: TStringField
      Alignment = taCenter
      DisplayLabel = #48156#49888
      DisplayWidth = 15
      FieldKind = fkLookup
      FieldName = 'SENDER_NM'
      LookupDataSet = UserTable
      LookupKeyFields = 'EMP_NO'
      LookupResultField = 'EMP_NM'
      KeyFields = 'SETTLE_SENDER'
      Lookup = True
    end
    object SqSETTLE_WRITE_DT: TDateField
      Alignment = taCenter
      DisplayLabel = #51089#49457#51068
      DisplayWidth = 15
      FieldName = 'SETTLE_WRITE_DT'
    end
    object SqRECV_NM: TStringField
      Alignment = taCenter
      DisplayLabel = #49688#49888
      DisplayWidth = 15
      FieldKind = fkLookup
      FieldName = 'RECV_NM'
      LookupDataSet = UserTable
      LookupKeyFields = 'EMP_NO'
      LookupResultField = 'EMP_NM'
      KeyFields = 'SETTLE_RECVER'
      Lookup = True
    end
    object SqSETTLE_YN: TStringField
      Alignment = taCenter
      DisplayLabel = #44208#51228' '#50668#48512
      DisplayWidth = 1
      FieldName = 'SETTLE_YN'
      Size = 2
    end
    object SqSETTLE_DT: TDateField
      Alignment = taCenter
      DisplayLabel = #44208#51228#51068
      DisplayWidth = 15
      FieldName = 'SETTLE_DT'
    end
    object SqSETTLE_READ_YN: TStringField
      FieldName = 'SETTLE_READ_YN'
      Size = 1
    end
    object SqSETTLE_KIND: TStringField
      Alignment = taCenter
      FieldName = 'SETTLE_KIND'
      Required = True
      Visible = False
      Size = 4
    end
    object SqSETTLE_SENDER: TStringField
      Alignment = taCenter
      DisplayLabel = #48156#49888
      DisplayWidth = 12
      FieldName = 'SETTLE_SENDER'
      Required = True
      Visible = False
      Size = 8
    end
    object SqSETTLE_RECVER: TStringField
      Alignment = taCenter
      DisplayLabel = #49688#49888
      DisplayWidth = 12
      FieldName = 'SETTLE_RECVER'
      Required = True
      Visible = False
      Size = 8
    end
  end
  object SettleSource: TDataSource
    DataSet = SettleQuery
    Left = 144
    Top = 344
  end
  object UserTable: TSQLDataSet
    Active = True
    CommandText = 'EMP'
    CommandType = ctTable
    DbxCommandType = 'Dbx.Table'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DSDConnection
    Left = 16
    Top = 344
  end
  object MySource: TDataSource
    DataSet = MyQuery
    Left = 392
    Top = 64
  end
  object SettleTable: TSimpleDataSet
    Aggregates = <>
    Connection = DSDConnection
    DataSet.CommandText = 'SETTLE'
    DataSet.CommandType = ctTable
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    FieldDefs = <
      item
        Name = 'SETTLE_NO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'SETTLE_NM'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'SETTLE_CONT'
        DataType = ftString
        Size = 8000
      end
      item
        Name = 'SETTLE_DT'
        DataType = ftDate
      end
      item
        Name = 'SETTLE_WRITE_DT'
        DataType = ftDate
      end
      item
        Name = 'SETTLE_YN'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'SETTLE_READ_YN'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'SETTLE_KIND'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'SETTLE_SENDER'
        Attributes = [faRequired]
        DataType = ftString
        Size = 8
      end
      item
        Name = 'SETTLE_RECVER'
        Attributes = [faRequired]
        DataType = ftString
        Size = 8
      end>
    IndexDefs = <
      item
        Name = 'i_settle_no'
        Fields = 'settle_no'
      end
      item
        Name = 'i_settle_yn'
        Fields = 'settle_yn'
      end>
    IndexFieldNames = 'settle_no'
    Params = <>
    StoreDefs = True
    OnCalcFields = SettleTableCalcFields
    Left = 32
    Top = 72
    object SettleTableSETTLE_NO: TIntegerField
      FieldName = 'SETTLE_NO'
      Required = True
    end
    object SettleTableSETTLE_NM: TStringField
      FieldName = 'SETTLE_NM'
      Size = 100
    end
    object SettleTableSETTLE_CONT: TStringField
      FieldName = 'SETTLE_CONT'
      Size = 8000
    end
    object SettleTableSETTLE_DT: TDateField
      FieldName = 'SETTLE_DT'
    end
    object SettleTableSETTLE_WRITE_DT: TDateField
      FieldName = 'SETTLE_WRITE_DT'
    end
    object SettleTableSETTLE_YN: TStringField
      FieldName = 'SETTLE_YN'
      Size = 2
    end
    object SettleTableSETTLE_READ_YN: TStringField
      FieldName = 'SETTLE_READ_YN'
      Size = 1
    end
    object SettleTableSENDER_NM: TStringField
      FieldKind = fkLookup
      FieldName = 'SENDER_NM'
      LookupDataSet = UserTable
      LookupKeyFields = 'EMP_NO'
      LookupResultField = 'EMP_NM'
      KeyFields = 'SETTLE_SENDER'
      Lookup = True
    end
    object SettleTableRECVER_NM: TStringField
      FieldKind = fkLookup
      FieldName = 'RECVER_NM'
      LookupDataSet = UserTable
      LookupKeyFields = 'EMP_NO'
      LookupResultField = 'EMP_NM'
      KeyFields = 'SETTLE_RECVER'
      Lookup = True
    end
    object SettleTableSETTLE_KIND: TStringField
      FieldName = 'SETTLE_KIND'
      Size = 4
    end
    object SettleTableSETTLE_SENDER: TStringField
      FieldName = 'SETTLE_SENDER'
      Required = True
      Size = 8
    end
    object SettleTableSETTLE_RECVER: TStringField
      FieldName = 'SETTLE_RECVER'
      Required = True
      Size = 8
    end
    object SettleTableREAD_YN_NM: TStringField
      FieldKind = fkCalculated
      FieldName = 'READ_YN_NM'
      Calculated = True
    end
    object SettleTableSETTLE_YN_NM: TStringField
      FieldKind = fkCalculated
      FieldName = 'SETTLE_YN_NM'
      Calculated = True
    end
  end
  object countQuery: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DSDConnection
    Left = 32
    Top = 136
  end
  object LogTable: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = DSDConnection
    DataSet.CommandText = 'select * from settle_log order by log_no desc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 32
    Top = 200
    object LogTableLOG_ACC_CONT: TStringField
      Alignment = taCenter
      DisplayLabel = #52376#47532' '#45236#50857
      DisplayWidth = 10
      FieldName = 'LOG_ACC_CONT'
      Size = 100
    end
    object LogTableLOG_EMP_NM: TStringField
      Alignment = taCenter
      DisplayLabel = #52376#47532' '#49324#50896
      DisplayWidth = 10
      FieldKind = fkLookup
      FieldName = 'LOG_EMP_NM'
      LookupDataSet = UserTable
      LookupKeyFields = 'EMP_NO'
      LookupResultField = 'EMP_NM'
      KeyFields = 'LOG_ACC_EMP'
      Lookup = True
    end
    object LogTableLOG_ACC_DT: TDateField
      Alignment = taCenter
      DisplayLabel = #52376#47532' '#51068#51088
      DisplayWidth = 15
      FieldName = 'LOG_ACC_DT'
    end
    object LogTableLOG_NO: TLargeintField
      FieldName = 'LOG_NO'
      Required = True
      Visible = False
    end
    object LogTableLOG_ACC_STEP: TStringField
      FieldName = 'LOG_ACC_STEP'
      Visible = False
    end
    object LogTableLOG_SETTLE_NO: TLargeintField
      FieldName = 'LOG_SETTLE_NO'
      Required = True
      Visible = False
    end
    object LogTableLOG_ACC_EMP: TStringField
      DisplayLabel = #52376#47532' '#49324#50896
      FieldName = 'LOG_ACC_EMP'
      Required = True
      Visible = False
      Size = 8
    end
  end
  object LogSource: TDataSource
    DataSet = LogTable
    Left = 96
    Top = 200
  end
  object LogMaxQuery: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select max(log_no) as max_no from settle_log')
    SQLConnection = DSDConnection
    Left = 96
    Top = 136
  end
  object DeptTable: TSimpleDataSet
    Aggregates = <>
    Connection = DSDConnection
    DataSet.CommandText = 'DEPT'
    DataSet.CommandType = ctTable
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 208
    Top = 344
  end
end
