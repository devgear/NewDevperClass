object ServerMethods1: TServerMethods1
  OldCreateOrder = False
  Height = 735
  Width = 591
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=localhost/gds_db:C:\Delphi\DONGLE.IB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'CharacterSet=UTF8'
      'DriverID=IB')
    Connected = True
    LoginPrompt = False
    Left = 56
    Top = 32
  end
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 184
    Top = 32
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 344
    Top = 32
  end
  object FDTable1: TFDTable
    Active = True
    IndexFieldNames = 'RM_CODE'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'ROOM'
    TableName = 'ROOM'
    Left = 96
    Top = 136
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = FDTable1
    Left = 184
    Top = 136
  end
  object MEMBER_Table: TFDTable
    Active = True
    IndexFieldNames = 'M_CODE'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'MEMBER'
    TableName = 'MEMBER'
    Left = 96
    Top = 216
    object MEMBER_TableJISA_CODE: TWideStringField
      FieldName = 'JISA_CODE'
      Origin = 'JISA_CODE'
      Required = True
      Size = 40
    end
    object MEMBER_TableM_CODE: TWideStringField
      FieldName = 'M_CODE'
      Origin = 'M_CODE'
      Required = True
      Size = 40
    end
    object MEMBER_TableM_NAME: TWideStringField
      FieldName = 'M_NAME'
      Origin = 'M_NAME'
      Size = 80
    end
    object MEMBER_TableM_DEPTCODE: TWideStringField
      FieldName = 'M_DEPTCODE'
      Origin = 'M_DEPTCODE'
      Size = 40
    end
    object MEMBER_TableM_DEPT: TWideStringField
      FieldName = 'M_DEPT'
      Origin = 'M_DEPT'
      Size = 80
    end
    object MEMBER_TableM_PHONE: TWideStringField
      FieldName = 'M_PHONE'
      Origin = 'M_PHONE'
      Size = 120
    end
    object MEMBER_TableM_ADDRESS: TWideStringField
      FieldName = 'M_ADDRESS'
      Origin = 'M_ADDRESS'
      Size = 200
    end
    object MEMBER_TableM_MAIL: TWideStringField
      FieldName = 'M_MAIL'
      Origin = 'M_MAIL'
      Size = 120
    end
  end
  object GAMAENG_Table: TFDTable
    Active = True
    IndexFieldNames = 'G_CODE'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'GAMAENG'
    TableName = 'GAMAENG'
    Left = 96
    Top = 320
    object GAMAENG_TableG_CODE: TWideStringField
      FieldName = 'G_CODE'
      Origin = 'G_CODE'
      Required = True
      Size = 40
    end
    object GAMAENG_TableG_NAME: TWideStringField
      FieldName = 'G_NAME'
      Origin = 'G_NAME'
      Size = 80
    end
    object GAMAENG_TableG_CONTNAME: TWideStringField
      FieldName = 'G_CONTNAME'
      Origin = 'G_CONTNAME'
      Size = 40
    end
    object GAMAENG_TableG_KIND: TWideStringField
      FieldName = 'G_KIND'
      Origin = 'G_KIND'
      Size = 120
    end
    object GAMAENG_TableG_PHONE: TWideStringField
      FieldName = 'G_PHONE'
      Origin = 'G_PHONE'
      Size = 120
    end
    object GAMAENG_TableG_TEL: TWideStringField
      FieldName = 'G_TEL'
      Origin = 'G_TEL'
      Size = 120
    end
    object GAMAENG_TableG_FAX: TWideStringField
      FieldName = 'G_FAX'
      Origin = 'G_FAX'
      Size = 120
    end
    object GAMAENG_TableG_ADDRESS: TWideStringField
      FieldName = 'G_ADDRESS'
      Origin = 'G_ADDRESS'
      Size = 200
    end
    object GAMAENG_TableG_MAIL: TWideStringField
      FieldName = 'G_MAIL'
      Origin = 'G_MAIL'
      Size = 120
    end
  end
  object DataSetProvider2: TDataSetProvider
    DataSet = MEMBER_Table
    Left = 184
    Top = 216
  end
  object DataSetProvider3: TDataSetProvider
    DataSet = GAMAENG_Table
    Left = 184
    Top = 320
  end
  object MEMBER_Query: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT *  FROM MEMBER'
      'WHERE M_CODE LIKE :CODE')
    Left = 336
    Top = 216
    ParamData = <
      item
        Name = 'CODE'
        DataType = ftWideString
        ParamType = ptInput
        Size = 40
      end>
  end
  object MQ_DataSetProvider: TDataSetProvider
    DataSet = MEMBER_Query
    Left = 440
    Top = 216
  end
  object GAMAENG_Query: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM GAMAENG'
      'WHERE G_CODE LIKE :CODE')
    Left = 328
    Top = 320
    ParamData = <
      item
        Name = 'CODE'
        DataType = ftWideString
        ParamType = ptInput
        Size = 40
        Value = 'G001'
      end>
  end
  object GQ_DataSetProvider: TDataSetProvider
    DataSet = GAMAENG_Query
    Left = 440
    Top = 320
  end
  object ROOM_Table: TFDTable
    Active = True
    IndexFieldNames = 'RM_CODE'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'ROOM'
    TableName = 'ROOM'
    Left = 96
    Top = 408
    object ROOM_TableJISA_CODE: TWideStringField
      FieldName = 'JISA_CODE'
      Origin = 'JISA_CODE'
      Required = True
      Size = 40
    end
    object ROOM_TableRM_CODE: TWideStringField
      FieldName = 'RM_CODE'
      Origin = 'RM_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object ROOM_TableRM_NAME: TWideStringField
      FieldName = 'RM_NAME'
      Origin = 'RM_NAME'
      Size = 80
    end
    object ROOM_TableRM_FLOOR: TWideStringField
      FieldName = 'RM_FLOOR'
      Origin = 'RM_FLOOR'
      Size = 40
    end
    object ROOM_TableRM_SIZE: TWideStringField
      FieldName = 'RM_SIZE'
      Origin = 'RM_SIZE'
      Size = 40
    end
    object ROOM_TableRM_CHAIR: TIntegerField
      FieldName = 'RM_CHAIR'
      Origin = 'RM_CHAIR'
    end
    object ROOM_TableRENT_LIST: TWideStringField
      FieldName = 'RENT_LIST'
      Origin = 'RENT_LIST'
      Required = True
      Size = 120
    end
    object ROOM_TableRM_GAEK1: TWideStringField
      FieldName = 'RM_GAEK1'
      Origin = 'RM_GAEK1'
      Size = 80
    end
    object ROOM_TableRM_JAJE1: TIntegerField
      FieldName = 'RM_JAJE1'
      Origin = 'RM_JAJE1'
    end
    object ROOM_TableRM_JAJE2: TIntegerField
      FieldName = 'RM_JAJE2'
      Origin = 'RM_JAJE2'
    end
    object ROOM_TableRM_JAJE3: TIntegerField
      FieldName = 'RM_JAJE3'
      Origin = 'RM_JAJE3'
    end
    object ROOM_TableRM_TOTAL: TWideStringField
      FieldName = 'RM_TOTAL'
      Origin = 'RM_TOTAL'
      Size = 80
    end
    object ROOM_TableRM_IMG: TBlobField
      FieldName = 'RM_IMG'
      Origin = 'RM_IMG'
    end
    object ROOM_TableRM_FIMG: TBlobField
      FieldName = 'RM_FIMG'
      Origin = 'RM_FIMG'
    end
  end
  object R_DataSetProvider: TDataSetProvider
    DataSet = ROOM_Table
    Left = 184
    Top = 408
  end
  object ROOM_Query: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM ROOM'
      'WHERE RM_CODE LIKE :CODE')
    Left = 328
    Top = 408
    ParamData = <
      item
        Name = 'CODE'
        DataType = ftWideString
        ParamType = ptInput
        Size = 40
        Value = Null
      end>
    object ROOM_QueryJISA_CODE: TWideStringField
      FieldName = 'JISA_CODE'
      Origin = 'JISA_CODE'
      Required = True
      Size = 40
    end
    object ROOM_QueryRM_CODE: TWideStringField
      FieldName = 'RM_CODE'
      Origin = 'RM_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object ROOM_QueryRM_NAME: TWideStringField
      FieldName = 'RM_NAME'
      Origin = 'RM_NAME'
      Size = 80
    end
    object ROOM_QueryRM_FLOOR: TWideStringField
      FieldName = 'RM_FLOOR'
      Origin = 'RM_FLOOR'
      Size = 40
    end
    object ROOM_QueryRM_SIZE: TWideStringField
      FieldName = 'RM_SIZE'
      Origin = 'RM_SIZE'
      Size = 40
    end
    object ROOM_QueryRM_CHAIR: TIntegerField
      FieldName = 'RM_CHAIR'
      Origin = 'RM_CHAIR'
    end
    object ROOM_QueryRENT_LIST: TWideStringField
      FieldName = 'RENT_LIST'
      Origin = 'RENT_LIST'
      Required = True
      Size = 120
    end
    object ROOM_QueryRM_GAEK1: TWideStringField
      FieldName = 'RM_GAEK1'
      Origin = 'RM_GAEK1'
      Size = 80
    end
    object ROOM_QueryRM_JAJE1: TIntegerField
      FieldName = 'RM_JAJE1'
      Origin = 'RM_JAJE1'
    end
    object ROOM_QueryRM_JAJE2: TIntegerField
      FieldName = 'RM_JAJE2'
      Origin = 'RM_JAJE2'
    end
    object ROOM_QueryRM_JAJE3: TIntegerField
      FieldName = 'RM_JAJE3'
      Origin = 'RM_JAJE3'
    end
    object ROOM_QueryRM_TOTAL: TWideStringField
      FieldName = 'RM_TOTAL'
      Origin = 'RM_TOTAL'
      Size = 80
    end
    object ROOM_QueryRM_IMG: TBlobField
      FieldName = 'RM_IMG'
      Origin = 'RM_IMG'
    end
    object ROOM_QueryRM_FIMG: TBlobField
      FieldName = 'RM_FIMG'
      Origin = 'RM_FIMG'
    end
  end
  object RQ_DataSetProvider: TDataSetProvider
    DataSet = ROOM_Query
    Left = 440
    Top = 408
  end
  object Res_Query: TFDQuery
    Connection = FDConnection1
    Left = 96
    Top = 568
  end
  object RESERVE_Query: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from reserve'
      'where sin_date like :date')
    Left = 328
    Top = 592
    ParamData = <
      item
        Name = 'DATE'
        DataType = ftString
        ParamType = ptInput
        Size = 30
        Value = Null
      end>
    object RESERVE_QueryRECORD_NUM: TIntegerField
      FieldName = 'RECORD_NUM'
      Origin = 'RECORD_NUM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object RESERVE_QueryJISA_CODE: TWideStringField
      FieldName = 'JISA_CODE'
      Origin = 'JISA_CODE'
      Required = True
      Size = 40
    end
    object RESERVE_QuerySIN_NAME: TWideStringField
      FieldName = 'SIN_NAME'
      Origin = 'SIN_NAME'
      Size = 80
    end
    object RESERVE_QuerySIN_CODE: TWideStringField
      FieldName = 'SIN_CODE'
      Origin = 'SIN_CODE'
      Required = True
      Size = 120
    end
    object RESERVE_QuerySIN_SONAME: TWideStringField
      FieldName = 'SIN_SONAME'
      Origin = 'SIN_SONAME'
      Size = 120
    end
    object RESERVE_QuerySIN_SOKIND: TWideStringField
      FieldName = 'SIN_SOKIND'
      Origin = 'SIN_SOKIND'
      Size = 80
    end
    object RESERVE_QuerySIN_TEL: TWideStringField
      FieldName = 'SIN_TEL'
      Origin = 'SIN_TEL'
      Size = 80
    end
    object RESERVE_QuerySIN_FAX: TWideStringField
      FieldName = 'SIN_FAX'
      Origin = 'SIN_FAX'
      Size = 80
    end
    object RESERVE_QuerySIN_MOBILE: TWideStringField
      FieldName = 'SIN_MOBILE'
      Origin = 'SIN_MOBILE'
      Size = 80
    end
    object RESERVE_QuerySIN_ADD: TWideStringField
      FieldName = 'SIN_ADD'
      Origin = 'SIN_ADD'
      Required = True
      Size = 120
    end
    object RESERVE_QuerySIN_MAIL: TWideStringField
      FieldName = 'SIN_MAIL'
      Origin = 'SIN_MAIL'
      Size = 80
    end
    object RESERVE_QuerySIN_GITA: TWideStringField
      FieldName = 'SIN_GITA'
      Origin = 'SIN_GITA'
      Size = 120
    end
    object RESERVE_QuerySIN_ROOMNAME: TWideStringField
      FieldName = 'SIN_ROOMNAME'
      Origin = 'SIN_ROOMNAME'
      Size = 80
    end
    object RESERVE_QuerySIN_FL: TWideStringField
      FieldName = 'SIN_FL'
      Origin = 'SIN_FL'
      Size = 40
    end
    object RESERVE_QuerySIN_HOSIL: TWideStringField
      FieldName = 'SIN_HOSIL'
      Origin = 'SIN_HOSIL'
      Size = 80
    end
    object RESERVE_QuerySIN_CHAIR: TWideStringField
      FieldName = 'SIN_CHAIR'
      Origin = 'SIN_CHAIR'
      Size = 40
    end
    object RESERVE_QuerySIN_DATE: TDateField
      FieldName = 'SIN_DATE'
      Origin = 'SIN_DATE'
      EditMask = '!9999/99/00;1;_'
    end
    object RESERVE_QuerySIN_KIND: TWideStringField
      FieldName = 'SIN_KIND'
      Origin = 'SIN_KIND'
      Size = 80
    end
    object RESERVE_QuerySIN_COUNT: TWideStringField
      FieldName = 'SIN_COUNT'
      Origin = 'SIN_COUNT'
      Size = 40
    end
    object RESERVE_QuerySIN_USEJAJE: TWideStringField
      FieldName = 'SIN_USEJAJE'
      Origin = 'SIN_USEJAJE'
      Size = 120
    end
    object RESERVE_QuerySIN_ROOMCOST: TWideStringField
      FieldName = 'SIN_ROOMCOST'
      Origin = 'SIN_ROOMCOST'
      Size = 80
    end
    object RESERVE_QuerySIN_JAJECOST: TWideStringField
      FieldName = 'SIN_JAJECOST'
      Origin = 'SIN_JAJECOST'
      Size = 80
    end
    object RESERVE_QuerySIN_TOTALCOST: TWideStringField
      FieldName = 'SIN_TOTALCOST'
      Origin = 'SIN_TOTALCOST'
      Size = 80
    end
  end
  object RESQ_DataSetProvider: TDataSetProvider
    DataSet = RESERVE_Query
    Left = 440
    Top = 592
  end
  object RES_Table: TFDTable
    Active = True
    IndexFieldNames = 'RES_CODE'
    Connection = FDConnection1
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereAll
    UpdateOptions.UpdateTableName = 'RESERVATION'
    TableName = 'RESERVATION'
    Left = 96
    Top = 488
    object RES_TableRES_CODE: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'RES_CODE'
      Origin = 'RES_CODE'
      Required = True
    end
    object RES_TableRES_DATE: TDateField
      FieldName = 'RES_DATE'
      Origin = 'RES_DATE'
    end
    object RES_TableRES_RMCODE: TWideStringField
      FieldName = 'RES_RMCODE'
      Origin = 'RES_RMCODE'
      Size = 80
    end
    object RES_TableRES_RMNAME: TWideStringField
      FieldName = 'RES_RMNAME'
      Origin = 'RES_RMNAME'
      Size = 80
    end
  end
  object RES_DataSetProvider: TDataSetProvider
    DataSet = RES_Table
    Left = 184
    Top = 488
  end
  object RESERVE_Table: TFDTable
    Active = True
    IndexFieldNames = 'RECORD_NUM'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'RESERVE'
    TableName = 'RESERVE'
    Left = 328
    Top = 536
    object RESERVE_TableRECORD_NUM: TIntegerField
      FieldName = 'RECORD_NUM'
      Origin = 'RECORD_NUM'
      Required = True
    end
    object RESERVE_TableJISA_CODE: TWideStringField
      FieldName = 'JISA_CODE'
      Origin = 'JISA_CODE'
      Required = True
      Size = 40
    end
    object RESERVE_TableSIN_NAME: TWideStringField
      FieldName = 'SIN_NAME'
      Origin = 'SIN_NAME'
      Size = 80
    end
    object RESERVE_TableSIN_CODE: TWideStringField
      FieldName = 'SIN_CODE'
      Origin = 'SIN_CODE'
      Required = True
      Size = 120
    end
    object RESERVE_TableSIN_SONAME: TWideStringField
      FieldName = 'SIN_SONAME'
      Origin = 'SIN_SONAME'
      Size = 120
    end
    object RESERVE_TableSIN_SOKIND: TWideStringField
      FieldName = 'SIN_SOKIND'
      Origin = 'SIN_SOKIND'
      Size = 80
    end
    object RESERVE_TableSIN_TEL: TWideStringField
      FieldName = 'SIN_TEL'
      Origin = 'SIN_TEL'
      Size = 80
    end
    object RESERVE_TableSIN_FAX: TWideStringField
      FieldName = 'SIN_FAX'
      Origin = 'SIN_FAX'
      Size = 80
    end
    object RESERVE_TableSIN_MOBILE: TWideStringField
      FieldName = 'SIN_MOBILE'
      Origin = 'SIN_MOBILE'
      Size = 80
    end
    object RESERVE_TableSIN_ADD: TWideStringField
      FieldName = 'SIN_ADD'
      Origin = 'SIN_ADD'
      Required = True
      Size = 120
    end
    object RESERVE_TableSIN_MAIL: TWideStringField
      FieldName = 'SIN_MAIL'
      Origin = 'SIN_MAIL'
      Size = 80
    end
    object RESERVE_TableSIN_GITA: TWideStringField
      FieldName = 'SIN_GITA'
      Origin = 'SIN_GITA'
      Size = 120
    end
    object RESERVE_TableSIN_ROOMNAME: TWideStringField
      FieldName = 'SIN_ROOMNAME'
      Origin = 'SIN_ROOMNAME'
      Size = 80
    end
    object RESERVE_TableSIN_FL: TWideStringField
      FieldName = 'SIN_FL'
      Origin = 'SIN_FL'
      Size = 40
    end
    object RESERVE_TableSIN_HOSIL: TWideStringField
      FieldName = 'SIN_HOSIL'
      Origin = 'SIN_HOSIL'
      Size = 80
    end
    object RESERVE_TableSIN_CHAIR: TWideStringField
      FieldName = 'SIN_CHAIR'
      Origin = 'SIN_CHAIR'
      Size = 40
    end
    object RESERVE_TableSIN_DATE: TDateField
      FieldName = 'SIN_DATE'
      Origin = 'SIN_DATE'
      EditMask = '!9999/99/00;1;_'
    end
    object RESERVE_TableSIN_KIND: TWideStringField
      FieldName = 'SIN_KIND'
      Origin = 'SIN_KIND'
      Size = 80
    end
    object RESERVE_TableSIN_COUNT: TWideStringField
      FieldName = 'SIN_COUNT'
      Origin = 'SIN_COUNT'
      Size = 40
    end
    object RESERVE_TableSIN_USEJAJE: TWideStringField
      FieldName = 'SIN_USEJAJE'
      Origin = 'SIN_USEJAJE'
      Size = 120
    end
    object RESERVE_TableSIN_ROOMCOST: TWideStringField
      FieldName = 'SIN_ROOMCOST'
      Origin = 'SIN_ROOMCOST'
      Size = 80
    end
    object RESERVE_TableSIN_JAJECOST: TWideStringField
      FieldName = 'SIN_JAJECOST'
      Origin = 'SIN_JAJECOST'
      Size = 80
    end
    object RESERVE_TableSIN_TOTALCOST: TWideStringField
      FieldName = 'SIN_TOTALCOST'
      Origin = 'SIN_TOTALCOST'
      Size = 80
    end
  end
  object RESERVE_DataSetProvider: TDataSetProvider
    DataSet = RESERVE_Table
    Left = 440
    Top = 536
  end
  object RESERVE_Query2: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT *  FROM RESERVE'
      'WHERE SIN_CODE LIKE :SIN_CODE')
    Left = 328
    Top = 656
    ParamData = <
      item
        Name = 'SIN_CODE'
        DataType = ftWideString
        ParamType = ptInput
        Size = 120
      end>
  end
  object RESQ2_DataSetProvider: TDataSetProvider
    DataSet = RESERVE_Query2
    Left = 456
    Top = 656
  end
end
