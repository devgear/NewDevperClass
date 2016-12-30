object DM: TDM
  OldCreateOrder = False
  Height = 316
  Width = 406
  object SQLConnection: TSQLConnection
    ConnectionName = 'REST'
    DriverName = 'INTERBASE'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbxint.dll'
    LoginPrompt = False
    Params.Strings = (
      'drivername=INTERBASE'
      'blobsize=-1'
      'commitretain=False'
      'Database=C:\Project_bar\db\RESTAURANT.IB'
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
    Top = 32
  end
  object ReaderQuery: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      ' ')
    SQLConnection = SQLConnection
    Left = 128
    Top = 32
  end
end
