object ServerMethods1: TServerMethods1
  OldCreateOrder = False
  Height = 305
  Width = 427
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\yumi\Documents\Embarcadero\Studio\Projects\201' +
        '6\16.Final_Project\FinalProject_DB\FinalProject_DB.IB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'CharacterSet=UTF8'
      'DriverID=IB')
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 16
  end
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 152
    Top = 16
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 272
    Top = 16
  end
  object TbClassInfo: TFDTable
    Active = True
    IndexFieldNames = 'C_NUM'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'CLASS_INFO'
    TableName = 'CLASS_INFO'
    Left = 40
    Top = 128
    object TbClassInfoC_NUM: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'C_NUM'
      Origin = 'C_NUM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TbClassInfoC_DATE: TDateField
      FieldName = 'C_DATE'
      Origin = 'C_DATE'
      Required = True
    end
    object TbClassInfoC_TIME: TWideStringField
      FieldName = 'C_TIME'
      Origin = 'C_TIME'
      Required = True
      Size = 48
    end
    object TbClassInfoC_GROUPTYPE: TIntegerField
      FieldName = 'C_GROUPTYPE'
      Origin = 'C_GROUPTYPE'
      Required = True
    end
    object TbClassInfoC_TEACHER: TWideStringField
      FieldName = 'C_TEACHER'
      Origin = 'C_TEACHER'
      Required = True
      Size = 32
    end
    object TbClassInfoC_CLASSP: TIntegerField
      FieldName = 'C_CLASSP'
      Origin = 'C_CLASSP'
      Required = True
    end
    object TbClassInfoC_RESVP: TIntegerField
      FieldName = 'C_RESVP'
      Origin = 'C_RESVP'
    end
    object TbClassInfoC_CLASSCOST: TIntegerField
      FieldName = 'C_CLASSCOST'
      Origin = 'C_CLASSCOST'
      Required = True
    end
  end
  object DspClassInfo: TDataSetProvider
    DataSet = TbClassInfo
    Left = 152
    Top = 128
  end
  object TbReservationInfo: TFDTable
    Active = True
    IndexFieldNames = 'R_NUM'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'RESERVATION_INFO'
    TableName = 'RESERVATION_INFO'
    Left = 40
    Top = 72
    object TbReservationInfoR_NUM: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'R_NUM'
      Origin = 'R_NUM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TbReservationInfoR_DATE: TDateField
      FieldName = 'R_DATE'
      Origin = 'R_DATE'
      Required = True
    end
    object TbReservationInfoR_TIME: TWideStringField
      FieldName = 'R_TIME'
      Origin = 'R_TIME'
      Required = True
      Size = 48
    end
    object TbReservationInfoR_NAME: TWideStringField
      FieldName = 'R_NAME'
      Origin = 'R_NAME'
      Required = True
      Size = 80
    end
    object TbReservationInfoR_PHONE: TWideStringField
      FieldName = 'R_PHONE'
      Origin = 'R_PHONE'
      Required = True
      Size = 52
    end
    object TbReservationInfoR_RESVP: TIntegerField
      FieldName = 'R_RESVP'
      Origin = 'R_RESVP'
      Required = True
    end
    object TbReservationInfoR_PW: TWideStringField
      FieldName = 'R_PW'
      Origin = 'R_PW'
      Size = 80
    end
    object TbReservationInfoR_EMAIL: TWideStringField
      FieldName = 'R_EMAIL'
      Origin = 'R_EMAIL'
      Size = 120
    end
    object TbReservationInfoR_MEMO: TWideStringField
      FieldName = 'R_MEMO'
      Origin = 'R_MEMO'
      Size = 200
    end
    object TbReservationInfoR_STATUS: TIntegerField
      FieldName = 'R_STATUS'
      Origin = 'R_STATUS'
    end
    object TbReservationInfoC_NUM: TIntegerField
      FieldName = 'C_NUM'
      Origin = 'C_NUM'
    end
    object TbReservationInfoM_NUM: TIntegerField
      FieldName = 'M_NUM'
      Origin = 'M_NUM'
    end
    object TbReservationInfoR_CLASSNUMBER: TIntegerField
      FieldName = 'R_CLASSNUMBER'
      Origin = 'R_CLASSNUMBER'
      Required = True
    end
    object TbReservationInfoR_TOTALCLASSCOST: TIntegerField
      FieldName = 'R_TOTALCLASSCOST'
      Origin = 'R_TOTALCLASSCOST'
      Required = True
    end
  end
  object TbMemberInfo: TFDTable
    Active = True
    IndexFieldNames = 'M_NAME'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'MEMBER_INFO'
    TableName = 'MEMBER_INFO'
    Left = 40
    Top = 184
    object TbMemberInfoM_NUM: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'M_NUM'
      Origin = 'M_NUM'
      Required = True
    end
    object TbMemberInfoM_ID: TWideStringField
      FieldName = 'M_ID'
      Origin = 'M_ID'
      Required = True
      Size = 80
    end
    object TbMemberInfoM_PW: TWideStringField
      FieldName = 'M_PW'
      Origin = 'M_PW'
      Required = True
      Size = 80
    end
    object TbMemberInfoM_NAME: TWideStringField
      FieldName = 'M_NAME'
      Origin = 'M_NAME'
      Required = True
      Size = 80
    end
    object TbMemberInfoM_BIRTHDATE: TWideStringField
      FieldName = 'M_BIRTHDATE'
      Origin = 'M_BIRTHDATE'
      Required = True
      Size = 48
    end
    object TbMemberInfoM_PHONE: TWideStringField
      FieldName = 'M_PHONE'
      Origin = 'M_PHONE'
      Required = True
      Size = 52
    end
    object TbMemberInfoM_EMAIL: TWideStringField
      FieldName = 'M_EMAIL'
      Origin = 'M_EMAIL'
      Size = 120
    end
  end
  object DspReservationInfo: TDataSetProvider
    DataSet = TbReservationInfo
    Left = 152
    Top = 72
  end
  object DspMemberInfo: TDataSetProvider
    DataSet = TbMemberInfo
    Left = 152
    Top = 184
  end
  object FdqClassInfo: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select C_Num, C_Time,C_GroupType,C_Teacher,C_ClassP,C_ResvP'
      ''
      'From Class_Info'
      ''
      'Where C_Date like :Date')
    Left = 256
    Top = 128
    ParamData = <
      item
        Name = 'DATE'
        DataType = ftString
        ParamType = ptInput
        Size = 30
        Value = Null
      end>
  end
  object DspqueryClassInfo: TDataSetProvider
    DataSet = FdqClassInfo
    Left = 344
    Top = 128
  end
  object FdqResevClassInfo: TFDQuery
    Active = True
    Connection = FDConnection1
    UpdateObject = FdusResevClassInfo
    SQL.Strings = (
      'select '
      '  R_Num,r_date,r_time,r_name,r_phone,r_resvp,'
      '  R_memo,R_status,r_classnumber,r_totalclasscost,'
      '  c_grouptype,c_teacher,c_classp,C_resvp '
      'from '
      '  RESERVATION_INFO, CLASS_INFO '
      'where'
      '    '
      '    RESERVATION_INFO.C_Num = CLASS_INFO.C_Num')
    Left = 40
    Top = 248
  end
  object DspqueryResevClassInfo: TDataSetProvider
    DataSet = FdqResevClassInfo
    Left = 152
    Top = 248
  end
  object FdusResevClassInfo: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO RESERVATION_INFO'
      '(R_NUM, R_DATE, R_TIME, R_NAME, R_PHONE, '
      '  R_RESVP, R_MEMO, R_STATUS, R_CLASSNUMBER, '
      '  R_TOTALCLASSCOST)'
      
        'VALUES (:NEW_R_NUM, :NEW_R_DATE, :NEW_R_TIME, :NEW_R_NAME, :NEW_' +
        'R_PHONE, '
      '  :NEW_R_RESVP, :NEW_R_MEMO, :NEW_R_STATUS, :NEW_R_CLASSNUMBER, '
      '  :NEW_R_TOTALCLASSCOST)')
    ModifySQL.Strings = (
      'UPDATE RESERVATION_INFO'
      
        'SET R_NUM = :NEW_R_NUM, R_DATE = :NEW_R_DATE, R_TIME = :NEW_R_TI' +
        'ME, '
      
        '  R_NAME = :NEW_R_NAME, R_PHONE = :NEW_R_PHONE, R_RESVP = :NEW_R' +
        '_RESVP, '
      
        '  R_MEMO = :NEW_R_MEMO, R_STATUS = :NEW_R_STATUS, R_CLASSNUMBER ' +
        '= :NEW_R_CLASSNUMBER, '
      '  R_TOTALCLASSCOST = :NEW_R_TOTALCLASSCOST'
      'WHERE R_NUM = :OLD_R_NUM')
    DeleteSQL.Strings = (
      'DELETE FROM RESERVATION_INFO'
      'WHERE R_NUM = :OLD_R_NUM')
    FetchRowSQL.Strings = (
      
        'SELECT R_NUM, R_DATE, R_TIME, R_NAME, R_PHONE, R_RESVP, R_PW, R_' +
        'EMAIL, '
      
        '  R_MEMO, R_STATUS, C_NUM, M_NUM, R_CLASSNUMBER, R_TOTALCLASSCOS' +
        'T'
      'FROM RESERVATION_INFO'
      'WHERE R_NUM = :R_NUM')
    Left = 272
    Top = 248
  end
end
