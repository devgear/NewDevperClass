object ServerMethods1: TServerMethods1
  OldCreateOrder = False
  Height = 388
  Width = 665
  object FDConnection1: TFDConnection
    Params.Strings = (
      'ConnectionDef=TRABEL')
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 24
  end
  object Login_Query: TFDQuery
    Connection = FDConnection1
    Left = 280
    Top = 96
  end
  object signup_Query: TFDQuery
    Connection = FDConnection1
    Left = 280
    Top = 160
  end
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 168
    Top = 24
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 312
    Top = 16
  end
  object SearchS_Query: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT S_NO, S_NAME, S_ADDRESS'
      'FROM SIGHTS'
      'WHERE S_ADDRESS like :ADDRESS')
    Left = 48
    Top = 96
    ParamData = <
      item
        Name = 'ADDRESS'
        DataType = ftWideString
        ParamType = ptInput
        Size = 160
        Value = Null
      end>
    object SearchS_QueryS_NO: TIntegerField
      FieldName = 'S_NO'
      Origin = 'S_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SearchS_QueryS_NAME: TWideStringField
      FieldName = 'S_NAME'
      Origin = 'S_NAME'
      Required = True
      Size = 80
    end
    object SearchS_QueryS_ADDRESS: TWideStringField
      FieldName = 'S_ADDRESS'
      Origin = 'S_ADDRESS'
      Required = True
      Size = 240
    end
  end
  object SearchSQueryProvider: TDataSetProvider
    DataSet = SearchS_Query
    Left = 160
    Top = 96
  end
  object Sum_Query: TFDQuery
    Connection = FDConnection1
    Left = 280
    Top = 296
  end
  object SearchR_Query: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT R_NO, R_NAME, R_PHONE, R_ADDRESS'
      'FROM REST'
      'WHERE R_SNO like :NO')
    Left = 48
    Top = 232
    ParamData = <
      item
        Name = 'NO'
        DataType = ftString
        ParamType = ptInput
        Size = 30
        Value = Null
      end>
    object SearchR_QueryR_NO: TIntegerField
      FieldName = 'R_NO'
      Origin = 'R_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SearchR_QueryR_NAME: TWideStringField
      FieldName = 'R_NAME'
      Origin = 'R_NAME'
      Required = True
      Size = 80
    end
    object SearchR_QueryR_PHONE: TWideStringField
      FieldName = 'R_PHONE'
      Origin = 'R_PHONE'
      Size = 80
    end
    object SearchR_QueryR_ADDRESS: TWideStringField
      FieldName = 'R_ADDRESS'
      Origin = 'R_ADDRESS'
      Required = True
      Size = 200
    end
  end
  object SearchR_QueryProvider: TDataSetProvider
    DataSet = SearchR_Query
    Left = 160
    Top = 232
  end
  object SearchSB_Query: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT SB_NO, SB_TITLE, SB_GRADE, M_ID, SB_SNO, SB_MEMO'
      'FROM S_BOARD S, MEMBER M'
      'WHERE S.SB_SNO like :NO AND S.SB_MNO=M.M_NO')
    Left = 48
    Top = 168
    ParamData = <
      item
        Name = 'NO'
        DataType = ftString
        ParamType = ptInput
        Size = 30
        Value = Null
      end>
    object SearchSB_QuerySB_NO: TIntegerField
      FieldName = 'SB_NO'
      Origin = 'SB_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SearchSB_QuerySB_TITLE: TWideStringField
      FieldName = 'SB_TITLE'
      Origin = 'SB_TITLE'
      Required = True
      Size = 160
    end
    object SearchSB_QuerySB_GRADE: TWideStringField
      FieldName = 'SB_GRADE'
      Origin = 'SB_GRADE'
      Required = True
      Size = 40
    end
    object SearchSB_QueryM_ID: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'M_ID'
      Origin = 'M_ID'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object SearchSB_QuerySB_SNO: TIntegerField
      FieldName = 'SB_SNO'
      Origin = 'SB_SNO'
      Required = True
    end
    object SearchSB_QuerySB_MEMO: TWideStringField
      FieldName = 'SB_MEMO'
      Origin = 'SB_MEMO'
      Size = 400
    end
  end
  object SearchRB_Query: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT RB_NO, RB_TITLE, RB_GRADE, M_ID, RB_RNO, RB_MEMO'
      'FROM R_BOARD R, MEMBER M'
      'WHERE R.RB_RNO like :NO AND R.RB_MNO=M.M_NO')
    Left = 40
    Top = 296
    ParamData = <
      item
        Name = 'NO'
        DataType = ftString
        ParamType = ptInput
        Size = 30
        Value = Null
      end>
    object SearchRB_QueryRB_NO: TIntegerField
      FieldName = 'RB_NO'
      Origin = 'RB_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SearchRB_QueryRB_TITLE: TWideStringField
      FieldName = 'RB_TITLE'
      Origin = 'RB_TITLE'
      Required = True
      Size = 160
    end
    object SearchRB_QueryRB_GRADE: TWideStringField
      FieldName = 'RB_GRADE'
      Origin = 'RB_GRADE'
      Required = True
      Size = 40
    end
    object SearchRB_QueryM_ID: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'M_ID'
      Origin = 'M_ID'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object SearchRB_QueryRB_RNO: TIntegerField
      FieldName = 'RB_RNO'
      Origin = 'RB_RNO'
      Required = True
    end
    object SearchRB_QueryRB_MEMO: TWideStringField
      FieldName = 'RB_MEMO'
      Origin = 'RB_MEMO'
      Size = 200
    end
  end
  object SearchSB_QueryProvider: TDataSetProvider
    DataSet = SearchSB_Query
    Left = 152
    Top = 168
  end
  object SearchRB_QueryProvider: TDataSetProvider
    DataSet = SearchRB_Query
    Left = 144
    Top = 296
  end
  object Count_Query: TFDQuery
    Connection = FDConnection1
    Left = 376
    Top = 224
  end
  object SB_Add_Query: TFDQuery
    Connection = FDConnection1
    Left = 376
    Top = 168
  end
  object Search_ID_Query: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      '')
    Left = 376
    Top = 104
  end
  object RB_Add_Query: TFDQuery
    Connection = FDConnection1
    Left = 280
    Top = 224
  end
  object Sights_Table: TFDTable
    Active = True
    IndexFieldNames = 'S_NO'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'SIGHTS'
    TableName = 'SIGHTS'
    Left = 496
    Top = 80
    object Sights_TableS_NO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'S_NO'
      Origin = 'S_NO'
      Required = True
    end
    object Sights_TableS_NAME: TWideStringField
      FieldName = 'S_NAME'
      Origin = 'S_NAME'
      Required = True
      Size = 80
    end
    object Sights_TableS_ADDRESS: TWideStringField
      FieldName = 'S_ADDRESS'
      Origin = 'S_ADDRESS'
      Required = True
      Size = 160
    end
  end
  object Sights_Provider: TDataSetProvider
    DataSet = Sights_Table
    Left = 584
    Top = 80
  end
  object Rest_Table: TFDTable
    Active = True
    IndexFieldNames = 'R_NO'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'REST'
    TableName = 'REST'
    Left = 496
    Top = 136
  end
  object Rest_Provider: TDataSetProvider
    DataSet = Rest_Table
    Left = 584
    Top = 136
  end
  object SBoard_Table: TFDTable
    Active = True
    IndexFieldNames = 'SB_NO'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'S_BOARD'
    TableName = 'S_BOARD'
    Left = 496
    Top = 184
  end
  object SBoard_Provider: TDataSetProvider
    DataSet = SBoard_Table
    Left = 584
    Top = 184
  end
  object RBoard_Table: TFDTable
    Active = True
    IndexFieldNames = 'RB_NO'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'R_BOARD'
    TableName = 'R_BOARD'
    Left = 496
    Top = 232
  end
  object RBoard_Provider: TDataSetProvider
    DataSet = RBoard_Table
    Left = 584
    Top = 232
  end
  object Insert_Query: TFDQuery
    Connection = FDConnection1
    Left = 376
    Top = 296
  end
  object Delete_Query: TFDQuery
    Connection = FDConnection1
    Left = 488
    Top = 296
  end
  object sno_Query: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select S_NO from Sights where s_Name like :name')
    Left = 584
    Top = 296
    ParamData = <
      item
        Name = 'NAME'
        DataType = ftWideString
        ParamType = ptInput
        Size = 80
        Value = Null
      end>
  end
  object Update_Query: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      '')
    Left = 424
    Top = 16
  end
end
