object ServerMethods1: TServerMethods1
  OldCreateOrder = False
  Height = 418
  Width = 827
  object LibConnection: TFDConnection
    Params.Strings = (
      'Database=D:\DELPAI_CLASS\LIBPROJECT\DB\LIBRARY.IB'
      'User_Name=sysdba'
      'Password=masterkey'
      'CharacterSet=utf8'
      'DriverID=iB')
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 32
  end
  object qryUser: TFDQuery
    Connection = LibConnection
    UpdateOptions.AutoIncFields = 'USER_SEQ'
    SQL.Strings = (
      'SELECT * FROM USERS')
    Left = 144
    Top = 32
    object qryUserUSER_SEQ: TFDAutoIncField
      FieldName = 'USER_SEQ'
      Origin = 'USER_SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object qryUserUSER_NAME: TWideStringField
      FieldName = 'USER_NAME'
      Origin = 'USER_NAME'
      Required = True
      Size = 120
    end
    object qryUserUSER_ID: TWideStringField
      FieldName = 'USER_ID'
      Origin = 'USER_ID'
      Required = True
      Size = 80
    end
    object qryUserUSER_PW: TStringField
      FieldName = 'USER_PW'
      Origin = 'USER_PW'
      Size = 15
    end
    object qryUserUSER_PHONE: TStringField
      FieldName = 'USER_PHONE'
      Origin = 'USER_PHONE'
      Size = 15
    end
    object qryUserUSER_MAIL: TWideStringField
      FieldName = 'USER_MAIL'
      Origin = 'USER_MAIL'
      Size = 1020
    end
    object qryUserUSER_OUT_YN: TStringField
      FieldName = 'USER_OUT_YN'
      Origin = 'USER_OUT_YN'
      FixedChar = True
      Size = 1
    end
  end
  object qryLib: TFDQuery
    Connection = LibConnection
    UpdateOptions.AutoIncFields = 'LIB_SEQ'
    SQL.Strings = (
      'SELECT * FROM LIB')
    Left = 248
    Top = 32
    object qryLibLIB_SEQ: TFDAutoIncField
      FieldName = 'LIB_SEQ'
      Origin = 'LIB_SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object qryLibLIBNAME: TWideStringField
      FieldName = 'LIBNAME'
      Origin = 'LIBNAME'
      Required = True
      Size = 80
    end
    object qryLibLIBADDRESS: TWideStringField
      FieldName = 'LIBADDRESS'
      Origin = 'LIBADDRESS'
      Required = True
      Size = 120
    end
    object qryLibLIBOPEN: TTimeField
      FieldName = 'LIBOPEN'
      Origin = 'LIBOPEN'
    end
    object qryLibLIBCLOSE: TTimeField
      FieldName = 'LIBCLOSE'
      Origin = 'LIBCLOSE'
    end
    object qryLibLIBHOLIDAY: TDateField
      FieldName = 'LIBHOLIDAY'
      Origin = 'LIBHOLIDAY'
    end
  end
  object qryRent: TFDQuery
    Connection = LibConnection
    UpdateOptions.AutoIncFields = 'RENT_SEQ'
    SQL.Strings = (
      'SELECT * FROM RENT')
    Left = 368
    Top = 24
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
  end
  object qryUser_provider: TDataSetProvider
    DataSet = qryUser
    Left = 144
    Top = 96
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 32
    Top = 88
  end
  object qryCheckLogin: TFDQuery
    Connection = LibConnection
    SQL.Strings = (
      'SELECT * FROM USERS'
      'WHERE USER_ID = :ID AND USER_PW = :PW')
    Left = 680
    Top = 32
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
    object qryCheckLoginUSER_SEQ: TIntegerField
      FieldName = 'USER_SEQ'
      Origin = 'USER_SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCheckLoginUSER_NAME: TWideStringField
      FieldName = 'USER_NAME'
      Origin = 'USER_NAME'
      Required = True
      Size = 120
    end
    object qryCheckLoginUSER_ID: TWideStringField
      FieldName = 'USER_ID'
      Origin = 'USER_ID'
      Required = True
      Size = 80
    end
    object qryCheckLoginUSER_PW: TStringField
      FieldName = 'USER_PW'
      Origin = 'USER_PW'
      Size = 15
    end
    object qryCheckLoginUSER_PHONE: TStringField
      FieldName = 'USER_PHONE'
      Origin = 'USER_PHONE'
      Size = 15
    end
    object qryCheckLoginUSER_MAIL: TWideStringField
      FieldName = 'USER_MAIL'
      Origin = 'USER_MAIL'
      Size = 1020
    end
    object qryCheckLoginUSER_OUT_YN: TStringField
      FieldName = 'USER_OUT_YN'
      Origin = 'USER_OUT_YN'
      FixedChar = True
      Size = 1
    end
  end
  object qryDuplicatedID: TFDQuery
    Connection = LibConnection
    SQL.Strings = (
      'SELECT USER_ID FROM USERS'
      'WHERE USER_ID = :ID ')
    Left = 512
    Top = 24
    ParamData = <
      item
        Name = 'ID'
        DataType = ftString
        ParamType = ptInput
        Size = 15
        Value = Null
      end>
  end
  object qryLib_provider: TDataSetProvider
    DataSet = qryLib
    Left = 256
    Top = 96
  end
  object qryRent_provider: TDataSetProvider
    DataSet = qryRent
    Left = 368
    Top = 96
  end
  object qryDuplicatedID_provider: TDataSetProvider
    DataSet = qryDuplicatedID
    Left = 512
    Top = 96
  end
  object qryCheckLogin_Provider: TDataSetProvider
    DataSet = qryCheckLogin
    Left = 680
    Top = 96
  end
  object qryLibAddress: TFDQuery
    Connection = LibConnection
    SQL.Strings = (
      'SELECT LIBADDRESS FROM LIB GROUP BY LIBADDRESS')
    Left = 104
    Top = 184
    object qryLibAddressLIBADDRESS: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'LIBADDRESS'
      Origin = 'LIBADDRESS'
      ProviderFlags = []
      ReadOnly = True
      Size = 120
    end
  end
  object qryLibAddress_Provider: TDataSetProvider
    DataSet = qryLibAddress
    Left = 96
    Top = 248
  end
  object qryLibName: TFDQuery
    Connection = LibConnection
    SQL.Strings = (
      'SELECT LIBNAME,LIBADDRESS FROM LIB')
    Left = 224
    Top = 176
    object qryLibNameLIBNAME: TWideStringField
      FieldName = 'LIBNAME'
      Origin = 'LIBNAME'
      Required = True
      Size = 80
    end
    object qryLibNameLIBADDRESS: TWideStringField
      FieldName = 'LIBADDRESS'
      Origin = 'LIBADDRESS'
      Required = True
      Size = 120
    end
  end
  object qryLibname_Provider: TDataSetProvider
    DataSet = qryLibName
    Left = 224
    Top = 240
  end
  object qryDupSeat: TFDQuery
    Connection = LibConnection
    SQL.Strings = (
      
        'SELECT RENT_SEATNUM FROM RENT WHERE RENT_DATE = :DATE AND LIB_SE' +
        'Q = :LIBSEQ')
    Left = 352
    Top = 176
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
  end
  object qryDupSeat_Provider: TDataSetProvider
    DataSet = qryDupSeat
    Left = 344
    Top = 248
  end
  object qrySeat: TFDQuery
    Connection = LibConnection
    SQL.Strings = (
      
        'SELECT RENT_SEATNUM FROM RENT WHERE RENT_DATE = :DATE AND LIB_SE' +
        'Q = :LIBSEQ')
    Left = 480
    Top = 176
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
    object qrySeatRENT_SEATNUM: TIntegerField
      FieldName = 'RENT_SEATNUM'
      Origin = 'RENT_SEATNUM'
    end
  end
  object qrySeat_Provider: TDataSetProvider
    DataSet = qrySeat
    Left = 480
    Top = 256
  end
  object qryDuplicatedNum: TFDQuery
    Connection = LibConnection
    SQL.Strings = (
      
        'SELECT RENT_SEATNUM FROM RENT WHERE RENT_DATE = :DATE AND LIB_SE' +
        'Q = :LIBSEQ AND RENT_SEATNUM = :Rent_SeatNum')
    Left = 608
    Top = 168
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
    object qryDuplicatedNumRENT_SEATNUM: TIntegerField
      FieldName = 'RENT_SEATNUM'
      Origin = 'RENT_SEATNUM'
    end
  end
  object qryDuplicatedNum_Provider: TDataSetProvider
    DataSet = qryDuplicatedNum
    Left = 616
    Top = 240
  end
  object qryTalking: TFDQuery
    Connection = LibConnection
    UpdateOptions.AutoIncFields = 'MES_SEQ'
    SQL.Strings = (
      'SELECT * FROM MESSENGER')
    Left = 752
    Top = 168
    object qryTalkingMES_SEQ: TFDAutoIncField
      FieldName = 'MES_SEQ'
      Origin = 'MES_SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object qryTalkingMES_CONTENT: TWideStringField
      FieldName = 'MES_CONTENT'
      Origin = 'MES_CONTENT'
      Size = 400
    end
    object qryTalkingMES_TIME: TTimeField
      FieldName = 'MES_TIME'
      Origin = 'MES_TIME'
    end
    object qryTalkingMES_DATE: TDateField
      FieldName = 'MES_DATE'
      Origin = 'MES_DATE'
    end
    object qryTalkingUSERFROM_ID: TStringField
      FieldName = 'USERFROM_ID'
      Origin = 'USERFROM_ID'
    end
    object qryTalkingUSERTO_ID: TStringField
      FieldName = 'USERTO_ID'
      Origin = 'USERTO_ID'
    end
  end
  object qryTalking_Provider: TDataSetProvider
    DataSet = qryTalking
    Left = 760
    Top = 240
  end
end
