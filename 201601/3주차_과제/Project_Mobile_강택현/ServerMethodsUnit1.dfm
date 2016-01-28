object ServerMethods1: TServerMethods1
  OldCreateOrder = False
  Height = 310
  Width = 596
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\Users\Star\Desktop\'#48128#54868#48512#47532'\'#45208#51032' '#46020#49436#44288'\BOOKLOG.GDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'CharacterSet=UTF8'
      'DriverID=IB')
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 32
  end
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 128
    Top = 32
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 232
    Top = 32
  end
  object get_Count: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select count(*)'
      'from book_log')
    Left = 40
    Top = 136
  end
  object book_Qry_Provider2: TDataSetProvider
    DataSet = book_Qry
    Left = 128
    Top = 216
  end
  object book_Qry: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select *'
      'from book_log')
    Left = 40
    Top = 216
  end
end
