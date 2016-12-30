object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 329
  Width = 350
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=D:\2016MiniProject\MiniProject-DataBase\PROJECT2.GDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'CharacterSet=UTF8'
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
  object DsProject: TDataSource
    DataSet = TblProject
    Left = 152
    Top = 104
  end
  object DsMember: TDataSource
    DataSet = TblMember
    Left = 152
    Top = 176
  end
  object DsDept: TDataSource
    DataSet = TblDept
    Left = 152
    Top = 248
  end
  object TblMember: TFDTable
    Active = True
    IndexFieldNames = 'M_ID'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'MEMBER'
    TableName = 'MEMBER'
    Left = 48
    Top = 168
    object TblMemberM_ID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'M_ID'
      Origin = 'M_ID'
      Required = True
    end
    object TblMemberM_NAME: TWideStringField
      DisplayWidth = 20
      FieldName = 'M_NAME'
      Origin = 'M_NAME'
      Size = 120
    end
    object TblMemberM_TEAM: TIntegerField
      FieldName = 'M_TEAM'
      Origin = 'M_TEAM'
    end
    object TblMemberM_TeamName: TStringField
      FieldKind = fkLookup
      FieldName = 'M_TeamName'
      LookupDataSet = TblDept
      LookupKeyFields = 'D_ID'
      LookupResultField = 'D_TEAM'
      KeyFields = 'M_TEAM'
      Lookup = True
    end
  end
  object TblDept: TFDTable
    Active = True
    IndexFieldNames = 'D_ID'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'DEPT'
    TableName = 'DEPT'
    Left = 48
    Top = 248
    object TblDeptD_ID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'D_ID'
      Origin = 'D_ID'
      Required = True
    end
    object TblDeptD_DEPT: TWideStringField
      DisplayWidth = 20
      FieldName = 'D_DEPT'
      Origin = 'D_DEPT'
    end
    object TblDeptD_TEAM: TWideStringField
      FieldName = 'D_TEAM'
      Origin = 'D_TEAM'
    end
  end
  object TblProject: TFDTable
    Active = True
    IndexFieldNames = 'P_ID'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'PROJECT'
    TableName = 'PROJECT'
    Left = 48
    Top = 104
    object TblProjectP_ID: TIntegerField
      FieldName = 'P_ID'
      Origin = 'P_ID'
      Required = True
    end
    object TblProjectP_NAME: TWideStringField
      FieldName = 'P_NAME'
      Origin = 'P_NAME'
      Required = True
      Size = 200
    end
    object TblProjectP_STARTDATE: TDateField
      FieldName = 'P_STARTDATE'
      Origin = 'P_STARTDATE'
    end
    object TblProjectP_ENDDATE: TDateField
      FieldName = 'P_ENDDATE'
      Origin = 'P_ENDDATE'
    end
    object TblProjectP_MANAGER_ID: TIntegerField
      FieldName = 'P_MANAGER_ID'
      Origin = 'P_MANAGER_ID'
    end
    object TblProjectP_MEMBERCOUNT: TIntegerField
      FieldName = 'P_MEMBERCOUNT'
      Origin = 'P_MEMBERCOUNT'
    end
    object TblProjectP_STATUS: TIntegerField
      FieldName = 'P_STATUS'
      Origin = 'P_STATUS'
    end
  end
end
