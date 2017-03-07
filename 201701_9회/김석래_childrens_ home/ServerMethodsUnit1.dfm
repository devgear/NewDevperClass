object ServerMethods1: TServerMethods1
  OldCreateOrder = False
  Height = 413
  Width = 552
  object qryCheck: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select '
      
        'teacher.teacher_class, teacher.teacher_name, teacher.teacher_id,' +
        ' teacher.teacher_phone,'
      
        'kids.kids_name, kids.kids_id, parents.parents_name, parents.pare' +
        'nts_phone, kids.kids_image,'
      
        'kids.kids_sex, kids.kids_age, parents.parents_address, parents.p' +
        'arents_image, teacher.teacher_image'
      'from'
      'kids, teacher, parents, class'
      'where'
      'kids.kids_seq = parents.parents_seq and'
      'teacher.teacher_seq = class.class_seq and'
      'kids.kids_class = class.class_name '
      '')
    Left = 80
    Top = 96
    object qryCheckTEACHER_CLASS: TWideStringField
      FieldName = 'TEACHER_CLASS'
      Origin = 'TEACHER_CLASS'
      Size = 80
    end
    object qryCheckTEACHER_NAME: TWideStringField
      FieldName = 'TEACHER_NAME'
      Origin = 'TEACHER_NAME'
      Size = 200
    end
    object qryCheckTEACHER_ID: TWideStringField
      FieldName = 'TEACHER_ID'
      Origin = 'TEACHER_ID'
      Size = 200
    end
    object qryCheckTEACHER_PHONE: TWideStringField
      FieldName = 'TEACHER_PHONE'
      Origin = 'TEACHER_PHONE'
      Size = 200
    end
    object qryCheckKIDS_NAME: TWideStringField
      FieldName = 'KIDS_NAME'
      Origin = 'KIDS_NAME'
      Size = 200
    end
    object qryCheckKIDS_ID: TWideStringField
      FieldName = 'KIDS_ID'
      Origin = 'KIDS_ID'
      Size = 200
    end
    object qryCheckPARENTS_NAME: TWideStringField
      FieldName = 'PARENTS_NAME'
      Origin = 'PARENTS_NAME'
      Size = 80
    end
    object qryCheckPARENTS_PHONE: TWideStringField
      FieldName = 'PARENTS_PHONE'
      Origin = 'PARENTS_PHONE'
      Size = 80
    end
    object qryCheckKIDS_IMAGE: TBlobField
      FieldName = 'KIDS_IMAGE'
      Origin = 'KIDS_IMAGE'
    end
    object qryCheckKIDS_SEX: TWideStringField
      FieldName = 'KIDS_SEX'
      Origin = 'KIDS_SEX'
      FixedChar = True
      Size = 40
    end
    object qryCheckKIDS_AGE: TSmallintField
      FieldName = 'KIDS_AGE'
      Origin = 'KIDS_AGE'
    end
    object qryCheckPARENTS_ADDRESS: TWideStringField
      FieldName = 'PARENTS_ADDRESS'
      Origin = 'PARENTS_ADDRESS'
      Size = 200
    end
    object qryCheckPARENTS_IMAGE: TBlobField
      FieldName = 'PARENTS_IMAGE'
      Origin = 'PARENTS_IMAGE'
    end
    object qryCheckTEACHER_IMAGE: TBlobField
      FieldName = 'TEACHER_IMAGE'
      Origin = 'TEACHER_IMAGE'
    end
  end
  object qryTeacher: TFDQuery
    Active = True
    Connection = FDConnection1
    UpdateOptions.AutoIncFields = 'TEACHER_SEQ'
    SQL.Strings = (
      'select * from teacher'
      '')
    Left = 80
    Top = 232
  end
  object qryParents: TFDQuery
    Active = True
    Connection = FDConnection1
    UpdateOptions.AutoIncFields = 'PARENTS_SEQ'
    SQL.Strings = (
      'select * from parents')
    Left = 80
    Top = 296
    object qryParentsPARENTS_SEQ: TFDAutoIncField
      FieldName = 'PARENTS_SEQ'
      Origin = 'PARENTS_SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object qryParentsPARENTS_NAME: TWideStringField
      FieldName = 'PARENTS_NAME'
      Origin = 'PARENTS_NAME'
      Size = 80
    end
    object qryParentsPARENTS_BIRTH: TDateField
      FieldName = 'PARENTS_BIRTH'
      Origin = 'PARENTS_BIRTH'
    end
    object qryParentsPARENTS_SEX: TWideStringField
      FieldName = 'PARENTS_SEX'
      Origin = 'PARENTS_SEX'
      FixedChar = True
      Size = 40
    end
    object qryParentsPARENTS_IMAGE: TBlobField
      FieldName = 'PARENTS_IMAGE'
      Origin = 'PARENTS_IMAGE'
    end
    object qryParentsPARENTS_ADDRESS: TWideStringField
      FieldName = 'PARENTS_ADDRESS'
      Origin = 'PARENTS_ADDRESS'
      Size = 200
    end
    object qryParentsPARENTS_PHONE: TWideStringField
      FieldName = 'PARENTS_PHONE'
      Origin = 'PARENTS_PHONE'
      Size = 80
    end
    object qryParentsPARENTS_ID: TWideStringField
      FieldName = 'PARENTS_ID'
      Origin = 'PARENTS_ID'
      Size = 200
    end
    object qryParentsPARENTS_EMAIL: TWideStringField
      FieldName = 'PARENTS_EMAIL'
      Origin = 'PARENTS_EMAIL'
      Size = 200
    end
    object qryParentsPARENTS_AGE: TWideStringField
      FieldName = 'PARENTS_AGE'
      Origin = 'PARENTS_AGE'
      Size = 40
    end
    object qryParentsKIDS_SEQ: TIntegerField
      FieldName = 'KIDS_SEQ'
      Origin = 'KIDS_SEQ'
    end
  end
  object qryKids: TFDQuery
    Active = True
    Connection = FDConnection1
    UpdateOptions.AutoIncFields = 'KIDS_SEQ'
    SQL.Strings = (
      'select * from kids')
    Left = 80
    Top = 168
    object qryKidsKIDS_NAME: TWideStringField
      FieldName = 'KIDS_NAME'
      Origin = 'KIDS_NAME'
      Size = 200
    end
    object qryKidsKIDS_BIRTH: TStringField
      FieldName = 'KIDS_BIRTH'
      Origin = 'KIDS_BIRTH'
      Size = 200
    end
    object qryKidsKIDS_SEX: TWideStringField
      FieldName = 'KIDS_SEX'
      Origin = 'KIDS_SEX'
      FixedChar = True
      Size = 40
    end
    object qryKidsKIDS_IMAGE: TBlobField
      FieldName = 'KIDS_IMAGE'
      Origin = 'KIDS_IMAGE'
    end
    object qryKidsKIDS_ENTERDATE: TStringField
      FieldName = 'KIDS_ENTERDATE'
      Origin = 'KIDS_ENTERDATE'
      Size = 200
    end
    object qryKidsKIDS_AGE: TSmallintField
      FieldName = 'KIDS_AGE'
      Origin = 'KIDS_AGE'
    end
    object qryKidsKIDS_SEQ: TFDAutoIncField
      FieldName = 'KIDS_SEQ'
      Origin = 'KIDS_SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object qryKidsKIDS_CLASS: TWideStringField
      FieldName = 'KIDS_CLASS'
      Origin = 'KIDS_CLASS'
      Size = 80
    end
    object qryKidsPARENTS_SEQ: TIntegerField
      FieldName = 'PARENTS_SEQ'
      Origin = 'PARENTS_SEQ'
    end
    object qryKidsCLASS_SEQ: TIntegerField
      FieldName = 'CLASS_SEQ'
      Origin = 'CLASS_SEQ'
    end
    object qryKidsKIDS_ID: TWideStringField
      FieldName = 'KIDS_ID'
      Origin = 'KIDS_ID'
      Size = 200
    end
    object qryKidsKIDS_TEXT: TWideStringField
      FieldName = 'KIDS_TEXT'
      Origin = 'KIDS_TEXT'
      Size = 4000
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = qryCheck
    Left = 176
    Top = 88
  end
  object DataSetProvider2: TDataSetProvider
    DataSet = qryKids
    Left = 176
    Top = 152
  end
  object DataSetProvider3: TDataSetProvider
    DataSet = qryTeacher
    Left = 184
    Top = 216
  end
  object DataSetProvider4: TDataSetProvider
    DataSet = qryParents
    Left = 184
    Top = 280
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\Users\lg\Desktop\childrens home\DB\MANAGER.IB'
      'User_Name=sysdba'
      'Password=masterkey'
      'CharacterSet=UTF8'
      'DriverID=IB')
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 16
  end
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 320
    Top = 24
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 432
    Top = 24
  end
end
