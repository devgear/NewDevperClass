object ServerMethods1: TServerMethods1
  OldCreateOrder = False
  Height = 324
  Width = 470
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=D:\JOB\Project_Mobile_'#51060#44221#51452'\DB\BOOKLOG.GDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'CharacterSet=UTF8'
      'DriverID=IB')
    Connected = True
    LoginPrompt = False
    Left = 104
    Top = 32
  end
  object count: TFDQuery
    CachedUpdates = True
    Connection = FDConnection1
    SQL.Strings = (
      'select *'
      'from book_log')
    Left = 71
    Top = 150
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'FMX'
    Left = 215
    Top = 38
  end
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 319
    Top = 40
  end
  object book: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select *'
      'from book_log')
    Left = 88
    Top = 232
    object bookBOOK_SEQ: TIntegerField
      FieldName = 'BOOK_SEQ'
      Origin = 'BOOK_SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object bookBOOK_TITLE: TWideStringField
      FieldName = 'BOOK_TITLE'
      Origin = 'BOOK_TITLE'
      Required = True
      Size = 200
    end
    object bookBOOK_AUTHOR: TWideStringField
      FieldName = 'BOOK_AUTHOR'
      Origin = 'BOOK_AUTHOR'
      Required = True
      Size = 120
    end
    object bookBOOK_PUBLISHER: TWideStringField
      FieldName = 'BOOK_PUBLISHER'
      Origin = 'BOOK_PUBLISHER'
      Size = 120
    end
    object bookBOOK_PHONE: TWideStringField
      FieldName = 'BOOK_PHONE'
      Origin = 'BOOK_PHONE'
      Size = 80
    end
    object bookBOOK_WEBSITE: TWideStringField
      FieldName = 'BOOK_WEBSITE'
      Origin = 'BOOK_WEBSITE'
      Size = 400
    end
    object bookBOOK_COMMENT: TWideStringField
      FieldName = 'BOOK_COMMENT'
      Origin = 'BOOK_COMMENT'
      Size = 4000
    end
    object bookBOOK_THUMB: TBlobField
      FieldName = 'BOOK_THUMB'
      Origin = 'BOOK_THUMB'
    end
    object bookBOOK_IMAGE: TBlobField
      FieldName = 'BOOK_IMAGE'
      Origin = 'BOOK_IMAGE'
    end
  end
  object bookProvider: TDataSetProvider
    DataSet = book
    Left = 184
    Top = 232
  end
end
