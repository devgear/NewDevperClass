object ServerMethods: TServerMethods
  OldCreateOrder = False
  Height = 293
  Width = 367
  object FDConnection: TFDConnection
    Params.Strings = (
      
        'Database=D:\Lectures\NewDevperClass\201601\3'#51452#52264'_'#44284#51228'\Project_Mobile' +
        '_'#51076#49437#51652'\Project_Mobile\DB\BOOKLOG.GDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'CharacterSet=UTF8'
      'DriverID=IB')
    LoginPrompt = False
    Left = 32
    Top = 8
  end
  object BookLogQuery: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'SELECT * FROM BOOK_LOG')
    Left = 32
    Top = 96
  end
  object DSPBooklog: TDataSetProvider
    DataSet = BookLogQuery
    Left = 112
    Top = 96
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'FMX'
    Left = 232
    Top = 8
  end
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 128
    Top = 8
  end
end
