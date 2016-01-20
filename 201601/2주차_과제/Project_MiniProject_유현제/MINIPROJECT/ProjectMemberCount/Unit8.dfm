object DataModule8: TDataModule8
  OldCreateOrder = False
  Height = 239
  Width = 350
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\MINIPROJECT\PROJECT.GDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'CharacterSet=UTF8'
      'DriverID=IB')
    Connected = True
    LoginPrompt = False
    Left = 56
    Top = 112
  end
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 174
    Top = 48
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 174
    Top = 112
  end
end
