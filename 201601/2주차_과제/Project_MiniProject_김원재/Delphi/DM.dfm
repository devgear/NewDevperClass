object wDM: TwDM
  OldCreateOrder = False
  Height = 635
  Width = 866
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\Delphi\PROJECT2.GDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'CharacterSet=UTF8'
      'DriverID=IB')
    Connected = True
    Left = 112
    Top = 80
  end
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 240
    Top = 80
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 360
    Top = 80
  end
  object Project: TFDTable
    Active = True
    AfterInsert = ProjectAfterInsert
    AfterPost = ProjectAfterPost
    IndexFieldNames = 'P_ID'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'PROJECT'
    TableName = 'PROJECT'
    Left = 112
    Top = 152
    object ProjectP_ID: TIntegerField
      Alignment = taCenter
      AutoGenerateValue = arAutoInc
      FieldName = 'P_ID'
      Origin = 'P_ID'
      Required = True
    end
    object ProjectP_NAME: TWideStringField
      Alignment = taCenter
      FieldName = 'P_NAME'
      Origin = 'P_NAME'
      Required = True
      Size = 200
    end
    object ProjectP_STARTDATE: TSQLTimeStampField
      Alignment = taCenter
      FieldName = 'P_STARTDATE'
      Origin = 'P_STARTDATE'
      DisplayFormat = 'yyyy'#45380'mm'#50900'dd'#51068
      EditMask = '!9999/99/00;1;_'
    end
    object ProjectP_ENDDATE: TSQLTimeStampField
      Alignment = taCenter
      FieldName = 'P_ENDDATE'
      Origin = 'P_ENDDATE'
      DisplayFormat = 'yyyy'#45380'mm'#50900'dd'#51068
      EditMask = '!9999/99/00;1;_'
    end
    object ProjectP_MANAGER_NAME: TWideStringField
      Alignment = taCenter
      AutoGenerateValue = arAutoInc
      FieldKind = fkLookup
      FieldName = 'P_MANAGER_NAME'
      LookupDataSet = Member
      LookupKeyFields = 'M_ID'
      LookupResultField = 'M_NAME'
      KeyFields = 'P_MANAGER_ID'
      Origin = 'P_MANAGER_NAME'
      Size = 120
      Lookup = True
    end
    object ProjectP_MANAGER_ID: TIntegerField
      Alignment = taCenter
      FieldName = 'P_MANAGER_ID'
      Origin = 'P_MANAGER_ID'
    end
    object ProjectP_MEMBERCOUNT: TIntegerField
      Alignment = taCenter
      FieldName = 'P_MEMBERCOUNT'
      Origin = 'P_MEMBERCOUNT'
    end
    object ProjectP_STATUS: TIntegerField
      Alignment = taCenter
      FieldName = 'P_STATUS'
      Origin = 'P_STATUS'
    end
  end
  object Member: TFDTable
    Active = True
    AfterInsert = MemberAfterInsert
    AfterPost = MemberAfterPost
    IndexFieldNames = 'M_ID'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'MEMBER'
    TableName = 'MEMBER'
    Left = 112
    Top = 232
    object MemberM_ID: TIntegerField
      Alignment = taCenter
      AutoGenerateValue = arAutoInc
      FieldName = 'M_ID'
      Origin = 'M_ID'
      Required = True
    end
    object MemberM_NAME: TWideStringField
      Alignment = taCenter
      FieldName = 'M_NAME'
      Origin = 'M_NAME'
      Size = 120
    end
    object MemberM_TEAM: TStringField
      Alignment = taCenter
      FieldName = 'M_TEAM'
      Origin = 'M_TEAM'
      Size = 120
    end
    object MemberM_PHONE: TDateField
      FieldKind = fkCalculated
      FieldName = 'M_PHONE'
      EditMask = '!999\-000-0000;1;_'
      Calculated = True
    end
    object MemberM_ADDRESS: TStringField
      FieldKind = fkCalculated
      FieldName = 'M_ADDRESS'
      Calculated = True
    end
    object MemberM_SALARY: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'M_SALARY'
      DisplayFormat = '#,##0'#50896
      Calculated = True
    end
    object MemberM_JOINDATE: TDateField
      FieldKind = fkCalculated
      FieldName = 'M_JOINDATE'
      DisplayFormat = 'yyyy'#45380'mm'#50900'dd'#51068
      EditMask = '!9999/99/00;1;_'
      Calculated = True
    end
    object MemberM_ABILITY: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'M_ABILITY'
      Calculated = True
    end
  end
  object Dept: TFDTable
    Active = True
    AfterInsert = DeptAfterInsert
    AfterPost = DeptAfterPost
    IndexFieldNames = 'D_ID'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'DEPT'
    TableName = 'DEPT'
    Left = 112
    Top = 312
    object DeptD_ID: TIntegerField
      Alignment = taCenter
      AutoGenerateValue = arAutoInc
      FieldName = 'D_ID'
      Origin = 'D_ID'
      Required = True
    end
    object DeptD_DEPT: TWideStringField
      Alignment = taCenter
      FieldName = 'D_DEPT'
      Origin = 'D_DEPT'
      Size = 120
    end
    object DeptD_TEAM: TWideStringField
      Alignment = taCenter
      FieldName = 'D_TEAM'
      Origin = 'D_TEAM'
      Size = 120
    end
  end
  object Project_Source: TDataSource
    DataSet = Project
    Left = 240
    Top = 152
  end
  object Member_Source: TDataSource
    DataSet = Member
    Left = 240
    Top = 232
  end
  object Dept_Source: TDataSource
    DataSet = Dept
    Left = 240
    Top = 312
  end
  object PMCount: TFDTable
    Active = True
    IndexFieldNames = 'R_ID'
    MasterSource = Project_Source
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'PROJECTMEMBER'
    TableName = 'PROJECTMEMBER'
    Left = 112
    Top = 392
    object PMCountR_ID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'R_ID'
      Origin = 'R_ID'
      Required = True
    end
    object PMCountP_ID: TIntegerField
      FieldName = 'P_ID'
      Origin = 'P_ID'
    end
    object PMCountM_ID: TIntegerField
      FieldName = 'M_ID'
      Origin = 'M_ID'
    end
    object PMCountMEMBER: TStringField
      FieldKind = fkLookup
      FieldName = 'MEMBER'
      LookupDataSet = Member
      LookupKeyFields = 'M_ID'
      LookupResultField = 'M_NAME'
      KeyFields = 'M_ID'
      Lookup = True
    end
  end
  object PMCount_Source: TDataSource
    DataSet = PMCount
    Left = 240
    Top = 392
  end
end
