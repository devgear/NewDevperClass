object ServerMethods1: TServerMethods1
  OldCreateOrder = False
  Height = 247
  Width = 531
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Jo\Desktop\Project_Mobile_JoYoungJun\BOOKLOG.G' +
        'DB'
      'User_Name=sysdba'
      'Password=masterkey'
      'CharacterSet=UTF8'
      'DriverID=IB')
    Connected = True
    LoginPrompt = False
    Left = 200
    Top = 64
  end
  object ListQuery: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM BOOK_LOG'
      'ORDER BY BOOK_SEQ')
    Left = 127
    Top = 137
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'FMX'
    Left = 319
    Top = 80
  end
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 47
    Top = 56
  end
  object TotalQuery: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select count(*) as total from book_log')
    Left = 320
    Top = 152
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = ListQuery
    Left = 216
    Top = 136
  end
end
