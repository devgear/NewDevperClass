object ServerMethods1: TServerMethods1
  OldCreateOrder = False
  Height = 233
  Width = 368
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=D:\Lectures\NewDevperClass\201601\3'#51452#52264'_'#44284#51228'\Project_Mobile' +
        '_'#44608#50976#48120'\BOOKLOG_DB\BOOKLOG.GDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=IB')
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 24
  end
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 160
    Top = 24
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 272
    Top = 24
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM BOOK_LOG')
    Left = 41
    Top = 128
    object FDQuery1BOOK_SEQ: TIntegerField
      FieldName = 'BOOK_SEQ'
      Origin = 'BOOK_SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery1BOOK_TITLE: TWideStringField
      FieldName = 'BOOK_TITLE'
      Origin = 'BOOK_TITLE'
      Required = True
      Size = 200
    end
    object FDQuery1BOOK_AUTHOR: TWideStringField
      FieldName = 'BOOK_AUTHOR'
      Origin = 'BOOK_AUTHOR'
      Required = True
      Size = 120
    end
    object FDQuery1BOOK_PUBLISHER: TWideStringField
      FieldName = 'BOOK_PUBLISHER'
      Origin = 'BOOK_PUBLISHER'
      Size = 120
    end
    object FDQuery1BOOK_PHONE: TWideStringField
      FieldName = 'BOOK_PHONE'
      Origin = 'BOOK_PHONE'
      Size = 80
    end
    object FDQuery1BOOK_WEBSITE: TWideStringField
      FieldName = 'BOOK_WEBSITE'
      Origin = 'BOOK_WEBSITE'
      Size = 400
    end
    object FDQuery1BOOK_COMMENT: TWideStringField
      FieldName = 'BOOK_COMMENT'
      Origin = 'BOOK_COMMENT'
      Size = 4000
    end
    object FDQuery1BOOK_THUMB: TBlobField
      FieldName = 'BOOK_THUMB'
      Origin = 'BOOK_THUMB'
    end
    object FDQuery1BOOK_IMAGE: TBlobField
      FieldName = 'BOOK_IMAGE'
      Origin = 'BOOK_IMAGE'
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = FDQuery1
    Left = 160
    Top = 128
  end
end
