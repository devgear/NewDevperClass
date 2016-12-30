object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 261
  Width = 349
  object FDConnection1: TFDConnection
    Params.Strings = (
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Database=C:\Users\PMJ\Desktop\PROJECT\PROJECT.GDB'
      'CharacterSet=UTF8'
      'DriverID=IB')
    Connected = True
    Left = 48
    Top = 24
  end
  object FDTable1: TFDTable
    Active = True
    IndexFieldNames = 'P_CODE;P_NMBR;J_CODE'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'PJECTMJ'
    TableName = 'PJECTMJ'
    Left = 144
    Top = 32
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 232
    Top = 32
  end
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 56
    Top = 96
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Left = 56
    Top = 168
  end
end
