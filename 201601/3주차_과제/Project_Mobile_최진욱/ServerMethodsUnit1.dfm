object ServerMethods1: TServerMethods1
  OldCreateOrder = False
  Height = 276
  Width = 481
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=D:\Lectures\NewDevperClass\201601\3'#51452#52264'_'#44284#51228'\Project_Mobile' +
        '_'#52572#51652#50865'\BOOKLOG.GDB'
      'CharacterSet=utf8'
      'User_Name=sysdba'
      'Password=masterkey'
      'DriverID=IB')
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 24
  end
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 152
    Top = 24
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 272
    Top = 24
  end
  object BookList_Query: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM BOOK_LOG')
    Left = 48
    Top = 112
    object BookList_QueryBOOK_TITLE: TWideStringField
      FieldName = 'BOOK_TITLE'
      Origin = 'BOOK_TITLE'
      Required = True
      Size = 200
    end
    object BookList_QueryBOOK_AUTHOR: TWideStringField
      FieldName = 'BOOK_AUTHOR'
      Origin = 'BOOK_AUTHOR'
      Required = True
      Size = 120
    end
    object BookList_QueryBOOK_PUBLISHER: TWideStringField
      FieldName = 'BOOK_PUBLISHER'
      Origin = 'BOOK_PUBLISHER'
      Size = 120
    end
    object BookList_QueryBOOK_PHONE: TWideStringField
      FieldName = 'BOOK_PHONE'
      Origin = 'BOOK_PHONE'
      Size = 80
    end
    object BookList_QueryBOOK_WEBSITE: TWideStringField
      FieldName = 'BOOK_WEBSITE'
      Origin = 'BOOK_WEBSITE'
      Size = 400
    end
    object BookList_QueryBOOK_COMMENT: TWideStringField
      FieldName = 'BOOK_COMMENT'
      Origin = 'BOOK_COMMENT'
      Size = 4000
    end
    object BookList_QueryBOOK_THUMB: TBlobField
      FieldName = 'BOOK_THUMB'
      Origin = 'BOOK_THUMB'
    end
    object BookList_QueryBOOK_IMAGE: TBlobField
      FieldName = 'BOOK_IMAGE'
      Origin = 'BOOK_IMAGE'
    end
    object BookList_QueryBOOK_SEQ: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'BOOK_SEQ'
      Origin = 'BOOK_SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object Book_List: TDataSetProvider
    DataSet = BookList_Query
    Left = 160
    Top = 112
  end
  object Count_Query: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select count(book_seq) from book_log')
    Left = 368
    Top = 112
  end
end
