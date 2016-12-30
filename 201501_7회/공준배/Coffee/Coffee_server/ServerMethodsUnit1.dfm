object ServerMethods1: TServerMethods1
  OldCreateOrder = False
  OnCreate = DSServerModuleCreate
  Height = 315
  Width = 810
  object SQLConnection1: TSQLConnection
    ConnectionName = 'Coffee'
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
      'Database=C:\Users\Kong\Desktop\Coffee\COFFEE.IB'
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
    Left = 64
    Top = 56
  end
  object SQL_UserQuery: TSQLQuery
    Active = True
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from cafe')
    SQLConnection = SQLConnection1
    Left = 168
    Top = 56
  end
  object SQL_UserQuery_Provider: TDataSetProvider
    DataSet = SQL_UserQuery
    Left = 272
    Top = 56
  end
  object Cafe_Table_Provider: TDataSetProvider
    DataSet = Cafe_Table
    Left = 272
    Top = 128
  end
  object Cafe_Table: TSQLTable
    Active = True
    MaxBlobSize = -1
    SQLConnection = SQLConnection1
    TableName = 'CAFE'
    Left = 168
    Top = 128
    object Cafe_TableC_NAME: TWideStringField
      FieldName = 'C_NAME'
      Required = True
      Size = 80
    end
    object Cafe_TableC_LOCA: TWideStringField
      FieldName = 'C_LOCA'
      Required = True
      Size = 80
    end
    object Cafe_TableC_LAT: TSingleField
      FieldName = 'C_LAT'
      Required = True
    end
    object Cafe_TableC_LONG: TSingleField
      FieldName = 'C_LONG'
      Required = True
    end
  end
  object Menu_Table: TSQLTable
    Active = True
    MaxBlobSize = 1
    SQLConnection = SQLConnection1
    TableName = 'MENU'
    Left = 168
    Top = 240
    object Menu_TableM_NAME: TWideStringField
      FieldName = 'M_NAME'
      Size = 120
    end
    object Menu_TableM_PRICE: TIntegerField
      FieldName = 'M_PRICE'
    end
    object Menu_TableM_EPRICE: TIntegerField
      FieldName = 'M_EPRICE'
    end
    object Menu_TableM_INFO: TWideStringField
      FieldName = 'M_INFO'
      Size = 600
    end
    object Menu_TableM_PHOTO: TBlobField
      FieldName = 'M_PHOTO'
      Size = 1
    end
    object Menu_TableM_CAFENAME: TWideStringField
      FieldName = 'M_CAFENAME'
      Size = 80
    end
  end
  object Menu_Table_Provider: TDataSetProvider
    DataSet = Menu_Table
    Left = 272
    Top = 239
  end
  object AlphaBet_Table: TSQLTable
    Active = True
    MaxBlobSize = 1
    SQLConnection = SQLConnection1
    TableName = 'IMAGE'
    Left = 168
    Top = 184
    object AlphaBet_TableI_ALPHABET: TBlobField
      FieldName = 'I_ALPHABET'
      Size = 1
    end
  end
  object AlphaBet_Table_Provider: TDataSetProvider
    DataSet = AlphaBet_Table
    Left = 272
    Top = 184
  end
  object SQL_Reserve_Check_Provider: TDataSetProvider
    DataSet = SQL_Reserve_Check
    Left = 304
    Top = 8
  end
  object SQL_Reserve_Check: TSQLQuery
    Active = True
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftWideString
        Name = 'U_ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select R_NUM,R_ARRIVAL,C_NAME,C_LOCA, R_PAYMENT_PLAN, R_TOTAL_AM' +
        'OUNT, R_COMMENT from RESERVE where U_ID like :U_ID order by R_AR' +
        'RIVAL')
    SQLConnection = SQLConnection1
    Left = 168
    Top = 8
    object SQL_Reserve_CheckR_NUM: TIntegerField
      FieldName = 'R_NUM'
    end
    object SQL_Reserve_CheckR_ARRIVAL: TSQLTimeStampField
      FieldName = 'R_ARRIVAL'
      Required = True
    end
    object SQL_Reserve_CheckC_NAME: TWideStringField
      FieldName = 'C_NAME'
      Size = 80
    end
    object SQL_Reserve_CheckC_LOCA: TWideStringField
      FieldName = 'C_LOCA'
      Size = 80
    end
    object SQL_Reserve_CheckR_PAYMENT_PLAN: TWideStringField
      FieldName = 'R_PAYMENT_PLAN'
      Size = 80
    end
    object SQL_Reserve_CheckR_TOTAL_AMOUNT: TIntegerField
      FieldName = 'R_TOTAL_AMOUNT'
    end
    object SQL_Reserve_CheckR_COMMENT: TWideStringField
      FieldName = 'R_COMMENT'
      Size = 400
    end
  end
  object SQL_ReserveDetail_Check: TSQLQuery
    Active = True
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      
        'select R_NUM, M_NAME, RL_QUANTITY, RL_PRICE, M_PRICE, M_INFO, M_' +
        'PHOTO from RESERVE, RESERVE_LIST, MENU WHERE RESERVE.R_NUM = RES' +
        'ERVE_LIST.R_NUM AND MENU.M_NAME = RESERVE_LIST.M_NAME AND R_NUM ' +
        '= 19')
    SQLConnection = SQLConnection1
    Left = 496
    Top = 8
  end
  object SQL_ReserveDetail_Check_Provider: TDataSetProvider
    DataSet = SQL_ReserveDetail_Check
    Left = 688
    Top = 8
  end
  object PC_Query: TSQLQuery
    Active = True
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select R_NUM,R_TOTAL_AMOUNT, R_ARRIVAL, R_PAYMENT_PLAN, U_LAT, U' +
        '_LONG, R_COMMENT, U_ID, U_NAME, U_PHONENUM, U_GENDER  from RESER' +
        'VE, USERS where RESERVE.U_ID = USERS.U_ID AND C_LOCA = '#39#44053#45224#45824#47196#51216#39)
    SQLConnection = SQLConnection1
    Left = 496
    Top = 72
    object PC_QueryR_NUM: TIntegerField
      FieldName = 'R_NUM'
    end
    object PC_QueryR_TOTAL_AMOUNT: TIntegerField
      FieldName = 'R_TOTAL_AMOUNT'
    end
    object PC_QueryR_ARRIVAL: TSQLTimeStampField
      FieldName = 'R_ARRIVAL'
      Required = True
    end
    object PC_QueryR_PAYMENT_PLAN: TWideStringField
      FieldName = 'R_PAYMENT_PLAN'
      Size = 80
    end
    object PC_QueryU_LAT: TSingleField
      FieldName = 'U_LAT'
    end
    object PC_QueryU_LONG: TSingleField
      FieldName = 'U_LONG'
    end
    object PC_QueryR_COMMENT: TWideStringField
      FieldName = 'R_COMMENT'
      Size = 400
    end
    object PC_QueryU_ID: TWideStringField
      FieldName = 'U_ID'
      Required = True
      Size = 64
    end
    object PC_QueryU_NAME: TWideStringField
      FieldName = 'U_NAME'
      Required = True
      Size = 80
    end
    object PC_QueryU_PHONENUM: TWideStringField
      FieldName = 'U_PHONENUM'
      Size = 60
    end
    object PC_QueryU_GENDER: TBooleanField
      FieldName = 'U_GENDER'
    end
  end
  object PC_Query_Provider: TDataSetProvider
    DataSet = PC_Query
    Left = 688
    Top = 72
  end
end
