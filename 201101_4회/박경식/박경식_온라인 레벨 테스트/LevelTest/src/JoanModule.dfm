object JoanDataModule: TJoanDataModule
  OldCreateOrder = False
  Height = 150
  Width = 215
  object JoanTest: TSQLConnection
    ConnectionName = 'JoanTest'
    DriverName = 'MYSQL'
    GetDriverFunc = 'getSQLDriverMYSQL'
    LibraryName = 'dbxmys.dll'
    Params.Strings = (
      'drivername=MYSQL'
      'database=joan_leveltest'
      'hostname=222.231.24.14'
      'password=1004esl'
      'user_name=esl1004'
      'ServerCharSet=euckr')
    VendorLib = 'libmysql.dll'
    Left = 48
    Top = 56
  end
  object JoanSQL: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = JoanTest
    Left = 120
    Top = 56
  end
end
