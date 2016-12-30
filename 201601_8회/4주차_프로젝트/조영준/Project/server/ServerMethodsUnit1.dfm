object ServerMethods1: TServerMethods1
  OldCreateOrder = False
  Height = 545
  Width = 870
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\Users\Jo\Desktop\Project\DB.IB'
      'User_Name=sysdba'
      'Password=masterkey'
      'CharacterSet=UTF8'
      'DriverID=IB')
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 32
  end
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 128
    Top = 32
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 216
    Top = 32
  end
  object LoginQuery: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'Select * from STUDENT where SDT_NUM like :SDT_NUM and SDT_PW lik' +
        'e :SDT_PW')
    Left = 304
    Top = 32
    ParamData = <
      item
        Name = 'SDT_NUM'
        DataType = ftString
        ParamType = ptInput
        Size = 30
        Value = Null
      end
      item
        Name = 'SDT_PW'
        DataType = ftWideString
        ParamType = ptInput
        Size = 40
      end>
  end
  object refinementQuery: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from subject where sbjt_div like '#39#44368#50577#39)
    Left = 40
    Top = 96
  end
  object refinementProvider: TDataSetProvider
    DataSet = refinementQuery
    Left = 128
    Top = 96
  end
  object UserQuery: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from student where sdt_num like :sdt_num')
    Left = 40
    Top = 208
    ParamData = <
      item
        Name = 'SDT_NUM'
        DataType = ftString
        ParamType = ptInput
        Size = 30
        Value = Null
      end>
  end
  object UserProvider: TDataSetProvider
    DataSet = UserQuery
    Left = 128
    Top = 208
  end
  object specialityQuery: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select * from subject where sbjt_div like '#39#51204#44277#39'  and sbjt_deptnum' +
        ' = :sbjt_deptnum ')
    Left = 40
    Top = 152
    ParamData = <
      item
        Name = 'SBJT_DEPTNUM'
        DataType = ftWideString
        ParamType = ptInput
        Size = 40
        Value = Null
      end>
  end
  object specialityProvider: TDataSetProvider
    DataSet = specialityQuery
    Left = 128
    Top = 152
  end
  object markQuery: TFDQuery
    Connection = FDConnection1
    Left = 376
    Top = 32
  end
  object GRADEQuery: TFDQuery
    Connection = FDConnection1
    Left = 208
    Top = 96
  end
  object makrQuery: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from mark where mk_sdtnum = :sdt_num')
    Left = 40
    Top = 264
    ParamData = <
      item
        Name = 'SDT_NUM'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object makrProvider: TDataSetProvider
    DataSet = makrQuery
    Left = 128
    Top = 264
  end
  object SignupQuery: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from SIGNUP where SIGN_sdtnum = :sdt_num')
    Left = 40
    Top = 320
    ParamData = <
      item
        Name = 'SDT_NUM'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object signQuery: TFDQuery
    Connection = FDConnection1
    Left = 376
    Top = 96
  end
  object SignupProvider: TDataSetProvider
    DataSet = SignupQuery
    Left = 128
    Top = 320
  end
  object NoTQuery: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from notice order by not_seq DESC')
    Left = 304
    Top = 312
  end
  object NotProvider: TDataSetProvider
    DataSet = NoTQuery
    Left = 368
    Top = 312
  end
  object sbjtQuery: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from subject where sbjt_num = :a and sbjt_class = :b')
    Left = 40
    Top = 384
    ParamData = <
      item
        Name = 'A'
        ParamType = ptInput
      end
      item
        Name = 'B'
        ParamType = ptInput
      end>
  end
  object sbjtProvider: TDataSetProvider
    DataSet = sbjtQuery
    Left = 128
    Top = 384
  end
  object totalQuery: TFDQuery
    Connection = FDConnection1
    Left = 304
    Top = 96
  end
  object DeptTable: TFDTable
    Active = True
    IndexFieldNames = 'DEPT_NUM'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'DEPT'
    TableName = 'DEPT'
    Left = 528
    Top = 56
    object DeptTableDEPT_NUM: TWideStringField
      FieldName = 'DEPT_NUM'
      Origin = 'DEPT_NUM'
      Required = True
      Size = 40
    end
    object DeptTableDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Origin = 'DEPT_NAME'
      Size = 80
    end
  end
  object deptProvider: TDataSetProvider
    DataSet = DeptTable
    Left = 584
    Top = 56
  end
  object studentTable: TFDTable
    Active = True
    IndexFieldNames = 'SDT_NUM'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'STUDENT'
    TableName = 'STUDENT'
    Left = 528
    Top = 120
  end
  object studentProvider: TDataSetProvider
    DataSet = studentTable
    Left = 584
    Top = 120
  end
  object PROFESSORTable: TFDTable
    Active = True
    IndexFieldNames = 'PROF_NUM'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'PROFESSOR'
    TableName = 'PROFESSOR'
    Left = 520
    Top = 176
  end
  object SUBJECTTable: TFDTable
    Active = True
    IndexFieldNames = 'SBJT_NUM;SBJT_CLASS'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'SUBJECT'
    TableName = 'SUBJECT'
    Left = 520
    Top = 232
  end
  object PROFESSORProvider: TDataSetProvider
    DataSet = PROFESSORTable
    Left = 584
    Top = 176
  end
  object SUBJECTProvider: TDataSetProvider
    DataSet = SUBJECTTable
    Left = 584
    Top = 232
  end
  object vclsignQuery: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select SIGN_STDNAME, SIGN_SDTNUM from SIGNUP where SIGN_SBJTNUM ' +
        '= :a and SIGN_SBJTCLASS = :b')
    Left = 520
    Top = 304
    ParamData = <
      item
        Name = 'A'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'B'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object vclsignProvider: TDataSetProvider
    DataSet = vclsignQuery
    Left = 592
    Top = 304
  end
end
