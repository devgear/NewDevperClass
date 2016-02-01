object ServerMethods1: TServerMethods1
  OldCreateOrder = False
  Height = 378
  Width = 389
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Project_childschool\childschool_Server\DB\SCHOOLDB.G' +
        'DB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'CharacterSet=UTF8'
      'DriverID=IB')
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 24
  end
  object DS_TEACHER: TDataSetProvider
    DataSet = TEACHER_Table
    Left = 152
    Top = 88
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 112
    Top = 24
  end
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 176
    Top = 24
  end
  object TEACHER_Table: TFDTable
    Active = True
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'TEACHER'
    TableName = 'TEACHER'
    Left = 40
    Top = 88
  end
  object STUDENT_INFO_Table: TFDTable
    Active = True
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'STUDENT_INFO'
    TableName = 'STUDENT_INFO'
    Left = 40
    Top = 144
  end
  object DS_STUDENT_INFO: TDataSetProvider
    DataSet = STUDENT_INFO_Table
    Left = 152
    Top = 144
  end
  object MEMO_Table: TFDTable
    Active = True
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'MEMO'
    TableName = 'MEMO'
    Left = 40
    Top = 200
  end
  object DS_MEMO: TDataSetProvider
    DataSet = MEMO_Table
    Left = 152
    Top = 200
  end
  object QA_Table: TFDTable
    Active = True
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'QANDA'
    TableName = 'QANDA'
    Left = 40
    Top = 256
  end
  object DS_QA: TDataSetProvider
    DataSet = QA_Table
    Left = 152
    Top = 256
  end
end
