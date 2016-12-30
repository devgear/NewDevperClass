object ServerMethods1: TServerMethods1
  OldCreateOrder = False
  Height = 514
  Width = 724
  object BookProvider: TDataSetProvider
    DataSet = BookTable
    Left = 216
    Top = 8
  end
  object BookTable: TSQLTable
    MaxBlobSize = 1
    SQLConnection = SQLConnection1
    TableName = 'BOOK'
    Left = 136
    Top = 8
  end
  object RentalTable: TSQLTable
    MaxBlobSize = -1
    SQLConnection = SQLConnection1
    TableName = 'RENTAL'
    Left = 136
    Top = 72
  end
  object RentalProvider: TDataSetProvider
    DataSet = RentalTable
    Left = 216
    Top = 72
  end
  object MemberTable: TSQLTable
    MaxBlobSize = -1
    SQLConnection = SQLConnection1
    TableName = 'MEMBER'
    Left = 136
    Top = 128
  end
  object MemberProvider: TDataSetProvider
    DataSet = MemberTable
    Left = 216
    Top = 128
  end
  object RentalBookTable: TSQLTable
    MaxBlobSize = -1
    SQLConnection = SQLConnection1
    TableName = 'RENTALBOOK'
    Left = 136
    Top = 192
  end
  object RentalBookProvider: TDataSetProvider
    DataSet = RentalBookTable
    Left = 216
    Top = 192
  end
  object BookingTable: TSQLTable
    MaxBlobSize = -1
    SQLConnection = SQLConnection1
    TableName = 'BOOKING'
    Left = 136
    Top = 248
  end
  object BookingProvider: TDataSetProvider
    DataSet = BookingTable
    Left = 216
    Top = 248
  end
  object SQLConnection1: TSQLConnection
    ConnectionName = 'BookData'
    DriverName = 'Interbase'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Interbase'
      'DriverUnit=Data.DBXInterBase'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver210.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=21.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXInterbaseMetaDataCommandFactory,DbxInt' +
        'erBaseDriver210.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXInterbaseMetaDataCommand' +
        'Factory,Borland.Data.DbxInterBaseDriver,Version=21.0.0.0,Culture' +
        '=neutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'LibraryName=dbxint.dll'
      'LibraryNameOsx=libsqlib.dylib'
      'VendorLib=GDS32.DLL'
      'VendorLibWin64=ibclient64.dll'
      'VendorLibOsx=libgds.dylib'
      
        'Database=C:\Users\Ahn\Documents\Embarcadero\Studio\Projects\book' +
        ' project\db\BOOKPROJECTDB5.IB'
      'User_Name=sysdba'
      'Password=masterkey'
      'Role=RoleName'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'IsolationLevel=ReadCommitted'
      'SQLDialect=3'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'TrimChar=False'
      'DisplayDriverName=InterBase Server'
      'BlobSize=-1'
      'ErrorResourceFile='
      'RoleName=RoleName'
      'ServerCharSet=UTF8'
      'Trim Char=False'
      'SEP=')
    Connected = True
    Left = 48
    Top = 8
  end
  object memberjoinQuery: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select rental.RentalNum,rental.ID,book.BookName,rentalbook.BookN' +
        'um,rentalbook.RentalBookNum'
      'from  rental, rentalbook, book'
      
        'where rental.RentalNum = rentalbook.RentalNum and rentalbook.Boo' +
        'kNum = book.BookNum')
    SQLConnection = SQLConnection1
    Left = 136
    Top = 320
  end
  object memberjoinProvider: TDataSetProvider
    DataSet = memberjoinQuery
    Left = 216
    Top = 320
  end
  object RentalBookQuery: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 368
    Top = 8
  end
  object JoinQuery: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 368
    Top = 80
  end
  object DelQuery: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 368
    Top = 160
  end
end
