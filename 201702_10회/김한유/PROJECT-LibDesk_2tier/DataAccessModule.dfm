object DataAccess: TDataAccess
  OldCreateOrder = False
  Height = 425
  Width = 519
  object LibraryConnection: TFDConnection
    Params.Strings = (
      'Database=D:\DELPAI_CLASS\LIBPROJECT\DB\LIBRARY.IB'
      'User_Name=sysdba'
      'Password=masterkey'
      'CharacterSet=UTF8'
      'DriverID=IB')
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 40
  end
  object qryUser: TFDQuery
    Active = True
    Connection = LibraryConnection
    UpdateOptions.AutoIncFields = 'USER_SEQ'
    SQL.Strings = (
      'SELECT * FROM USERS')
    Left = 152
    Top = 40
  end
  object qryRent: TFDQuery
    Active = True
    Connection = LibraryConnection
    UpdateOptions.AutoIncFields = 'RENT_SEQ'
    SQL.Strings = (
      'SELECT * FROM RENT')
    Left = 144
    Top = 208
    object qryRentRENT_SEQ: TFDAutoIncField
      FieldName = 'RENT_SEQ'
      Origin = 'RENT_SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object qryRentUSER_SEQ: TIntegerField
      FieldName = 'USER_SEQ'
      Origin = 'USER_SEQ'
      Required = True
    end
    object qryRentRENT_DATE: TDateField
      FieldName = 'RENT_DATE'
      Origin = 'RENT_DATE'
    end
    object qryRentRENT_Stime: TTimeField
      FieldName = 'RENT_Stime'
      Origin = '"RENT_Stime"'
    end
    object qryRentRENT_Etime: TTimeField
      FieldName = 'RENT_Etime'
      Origin = '"RENT_Etime"'
    end
    object qryRentRENT_YN: TStringField
      FieldName = 'RENT_YN'
      Origin = 'RENT_YN'
      FixedChar = True
      Size = 1
    end
    object qryRentLIB_SEQ: TIntegerField
      FieldName = 'LIB_SEQ'
      Origin = 'LIB_SEQ'
    end
    object qryRentRENT_SEATNUM: TIntegerField
      FieldName = 'RENT_SEATNUM'
      Origin = 'RENT_SEATNUM'
    end
    object qryRentLIBROOMNUM: TIntegerField
      FieldName = 'LIBROOMNUM'
      Origin = 'LIBROOMNUM'
    end
  end
  object qryCheckLOGIN: TFDQuery
    Active = True
    Connection = LibraryConnection
    SQL.Strings = (
      'SELECT USER_ID,USER_PW FROM USERS'
      'WHERE USER_ID = :ID AND USER_PW = :PW')
    Left = 256
    Top = 40
    ParamData = <
      item
        Name = 'ID'
        DataType = ftString
        ParamType = ptInput
        Size = 15
        Value = Null
      end
      item
        Name = 'PW'
        DataType = ftString
        ParamType = ptInput
        Size = 15
      end>
  end
  object qryDuplicatedID: TFDQuery
    Active = True
    Connection = LibraryConnection
    SQL.Strings = (
      'SELECT USER_ID FROM USERS'
      'WHERE USER_ID = :ID ')
    Left = 352
    Top = 40
    ParamData = <
      item
        Name = 'ID'
        DataType = ftString
        ParamType = ptInput
        Size = 15
        Value = Null
      end>
  end
  object qryLibAddress: TFDQuery
    Active = True
    Connection = LibraryConnection
    SQL.Strings = (
      'SELECT LIBADDRESS FROM LIB GROUP BY LIBADDRESS')
    Left = 160
    Top = 120
    object qryLibAddressLIBADDRESS: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'LIBADDRESS'
      Origin = 'LIBADDRESS'
      ProviderFlags = []
      ReadOnly = True
      Size = 120
    end
  end
  object qryLib: TFDQuery
    Active = True
    IndexFieldNames = 'LIBADDRESS'
    MasterSource = LibSource
    MasterFields = 'LIBADDRESS'
    Connection = LibraryConnection
    SQL.Strings = (
      'SELECT * FROM LIB')
    Left = 340
    Top = 120
  end
  object LibSource: TDataSource
    DataSet = qryLibAddress
    Left = 256
    Top = 120
  end
  object qryDuplicatedNum: TFDQuery
    Active = True
    Connection = LibraryConnection
    SQL.Strings = (
      
        'SELECT RENT_SEATNUM FROM RENT WHERE RENT_DATE = :DATE AND LIB_SE' +
        'Q = :LIBSEQ AND RENT_SEATNUM = :Rent_SeatNum')
    Left = 240
    Top = 208
    ParamData = <
      item
        Name = 'DATE'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'LIBSEQ'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'RENT_SEATNUM'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object qryDupSeat: TFDQuery
    Active = True
    Connection = LibraryConnection
    SQL.Strings = (
      
        'SELECT RENT_SEATNUM FROM RENT WHERE RENT_DATE = :DATE AND LIB_SE' +
        'Q = :LIBSEQ')
    Left = 144
    Top = 280
    ParamData = <
      item
        Name = 'DATE'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'LIBSEQ'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryDupSeatRENT_SEATNUM: TIntegerField
      FieldName = 'RENT_SEATNUM'
      Origin = 'RENT_SEATNUM'
    end
  end
  object qryMyData: TFDQuery
    Active = True
    Connection = LibraryConnection
    SQL.Strings = (
      
        'SELECT RENT_SEATNUM FROM RENT WHERE USER_SEQ = :USERSEQ AND RENT' +
        '_DATE = :DATE AND LIB_SEQ = :LIBSEQ AND RENT_SEATNUM = :Rent_Sea' +
        'tNum')
    Left = 384
    Top = 208
    ParamData = <
      item
        Name = 'USERSEQ'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DATE'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'LIBSEQ'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'RENT_SEATNUM'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object qryTalk: TFDQuery
    Active = True
    Connection = LibraryConnection
    SQL.Strings = (
      'SELECT * FROM MESSENGER')
    Left = 248
    Top = 280
    object qryTalkMES_SEQ: TIntegerField
      FieldName = 'MES_SEQ'
      Origin = 'MES_SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryTalkMES_CONTENT: TWideStringField
      FieldName = 'MES_CONTENT'
      Origin = 'MES_CONTENT'
      Size = 400
    end
    object qryTalkMES_TIME: TTimeField
      FieldName = 'MES_TIME'
      Origin = 'MES_TIME'
    end
    object qryTalkMES_DATE: TDateField
      FieldName = 'MES_DATE'
      Origin = 'MES_DATE'
    end
    object qryTalkUSERFROM_ID: TStringField
      FieldName = 'USERFROM_ID'
      Origin = 'USERFROM_ID'
    end
    object qryTalkUSERTO_ID: TStringField
      FieldName = 'USERTO_ID'
      Origin = 'USERTO_ID'
    end
  end
end
