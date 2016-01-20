object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 261
  Width = 343
  object FDConnection1: TFDConnection
    Params.Strings = (
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Database=C:\Users\PMJ\Desktop\PROJECT\PROJECT.GDB'
      'CharacterSet=UTF8'
      'DriverID=IB')
    Connected = True
    Left = 32
    Top = 16
  end
  object FDTable1: TFDTable
    IndexFieldNames = 'P_CODE;P_NMBR;J_CODE'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'PJECTMJ'
    TableName = 'PJECTMJ'
    Left = 88
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 152
    Top = 16
  end
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 16
    Top = 72
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Left = 16
    Top = 136
  end
  object FDTable2: TFDTable
    Connection = FDConnection1
    Left = 88
    Top = 80
  end
  object DataSource2: TDataSource
    Left = 152
    Top = 80
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = FDConnection1
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate, uvCountUpdatedRecords, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.CheckReadOnly = False
    SQL.Strings = (
      'SELECT * FROM SAONE '
      'where '
      's_code=:s_code'
      '')
    Left = 96
    Top = 144
    ParamData = <
      item
        Name = 'S_CODE'
        DataType = ftWideString
        ParamType = ptInput
        Size = 40
      end>
  end
  object querySource: TDataSource
    DataSet = FDQuery1
    Left = 152
    Top = 144
  end
  object QUERYSOUCE2: TDataSource
    DataSet = FDQuery2
    Left = 168
    Top = 208
  end
  object FDQuery2: TFDQuery
    Active = True
    Connection = FDConnection1
    UpdateOptions.AssignedValues = [uvCheckReadOnly]
    UpdateOptions.CheckReadOnly = False
    SQL.Strings = (
      'SELECT * FROM  PJECTMJ '
      'where    '
      '  P_code=:P_code')
    Left = 96
    Top = 208
    ParamData = <
      item
        Name = 'P_CODE'
        DataType = ftWideString
        ParamType = ptInput
        Size = 40
      end>
  end
end
