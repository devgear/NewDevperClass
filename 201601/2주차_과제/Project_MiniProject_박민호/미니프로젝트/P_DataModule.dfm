object TDataModule: TTDataModule
  OldCreateOrder = False
  Height = 541
  Width = 673
  object FDConnection1: TFDConnection
    Params.Strings = (
      'User_Name=SYSDBA'
      'Database=C:\Users\USER\Desktop\PROJECT2.GDB'
      'Password=masterkey'
      'CharacterSet=UTF8'
      'DriverID=IB')
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 32
  end
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 168
    Top = 32
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 296
    Top = 32
  end
  object ProjectTable: TFDTable
    Active = True
    IndexFieldNames = 'P_ID'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'PROJECT'
    TableName = 'PROJECT'
    Left = 48
    Top = 120
    object ProjectTableP_ID: TIntegerField
      Alignment = taCenter
      AutoGenerateValue = arAutoInc
      DisplayLabel = #48264#54840
      DisplayWidth = 10
      FieldName = 'P_ID'
      KeyFields = 'P_ID'
      Origin = 'P_ID'
      Required = True
    end
    object ProjectTableP_NAME: TWideStringField
      Alignment = taCenter
      DisplayLabel = #54532#47196#51229#53944' '#47749
      DisplayWidth = 20
      FieldName = 'P_NAME'
      KeyFields = 'P_NAME'
      Origin = 'P_NAME'
      Required = True
      Size = 200
    end
    object ProjectTableP_STARTDATE: TSQLTimeStampField
      Alignment = taCenter
      DisplayLabel = #49884#51089#51068
      DisplayWidth = 20
      FieldName = 'P_STARTDATE'
      KeyFields = 'P_STARTDATE'
      Origin = 'P_STARTDATE'
      DisplayFormat = 'yyyy'#45380'mm'#50900'dd'#51068
      EditMask = '!9999/99/00;1;_'
    end
    object ProjectTableP_ENDDATE: TSQLTimeStampField
      Alignment = taCenter
      DisplayLabel = #51333#47308#51068
      DisplayWidth = 20
      FieldName = 'P_ENDDATE'
      KeyFields = 'P_ENDDATE'
      Origin = 'P_ENDDATE'
      DisplayFormat = 'yyyy'#45380'mm'#50900'dd'#51068
      EditMask = '!9999/99/00;1;_'
    end
    object ProjectTableP_MANAGER_ID: TStringField
      Alignment = taCenter
      DisplayLabel = #44288#47532#51088
      DisplayWidth = 100
      FieldName = 'P_MANAGER_ID'
      Origin = 'P_MANAGER_ID'
      Size = 200
    end
    object ProjectTableP_MEMBERCOUNT: TStringField
      Alignment = taCenter
      DisplayLabel = #52280#50668#51088' '#49688
      DisplayWidth = 20
      FieldName = 'P_MEMBERCOUNT'
      Origin = 'P_MEMBERCOUNT'
      Size = 80
    end
    object ProjectTableP_STATUS: TStringField
      Alignment = taCenter
      DisplayLabel = #51652#54665' '#49345#53468
      DisplayWidth = 100
      FieldName = 'P_STATUS'
      Origin = 'P_STATUS'
      Size = 80
    end
  end
  object InsaTable: TFDTable
    Active = True
    IndexFieldNames = 'M_ID'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'MEMBER'
    TableName = 'MEMBER'
    Left = 48
    Top = 203
    object InsaTableM_ID: TIntegerField
      Alignment = taCenter
      AutoGenerateValue = arAutoInc
      DisplayLabel = #49324#50896#48264#54840
      DisplayWidth = 20
      FieldName = 'M_ID'
      Origin = 'M_ID'
      Required = True
    end
    object InsaTableM_NAME: TWideStringField
      Alignment = taCenter
      DisplayLabel = #51060#47492
      DisplayWidth = 50
      FieldName = 'M_NAME'
      Origin = 'M_NAME'
      Size = 120
    end
    object InsaTableM_TEAM: TStringField
      Alignment = taCenter
      DisplayLabel = #49548#49549#54016
      DisplayWidth = 50
      FieldName = 'M_TEAM'
      Origin = 'M_TEAM'
      Size = 120
    end
    object InsaTableM_PHONE: TWideStringField
      Alignment = taCenter
      DisplayLabel = #50672#46973#52376
      DisplayWidth = 100
      FieldName = 'M_PHONE'
      Origin = 'M_PHONE'
      Size = 80
    end
  end
  object ProjectMemberTable: TFDTable
    Active = True
    IndexFieldNames = 'R_ID'
    MasterSource = InsaDataSource
    MasterFields = 'M_ID'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'PROJECTMEMBER'
    TableName = 'PROJECTMEMBER'
    Left = 48
    Top = 376
    object ProjectMemberTableR_ID: TIntegerField
      Alignment = taCenter
      AutoGenerateValue = arAutoInc
      DisplayLabel = #48264#54840
      DisplayWidth = 19
      FieldName = 'R_ID'
      KeyFields = 'R_ID'
      Origin = 'R_ID'
      Required = True
    end
    object ProjectMemberTableP_ID: TIntegerField
      Alignment = taCenter
      DisplayLabel = #54532#47196#51229#53944#48264#54840
      DisplayWidth = 39
      FieldName = 'P_ID'
      KeyFields = 'P_ID'
      Origin = 'P_ID'
    end
    object ProjectMemberTableM_ID: TIntegerField
      Alignment = taCenter
      DisplayLabel = #49324#50896#48264#54840
      DisplayWidth = 39
      FieldName = 'M_ID'
      KeyFields = 'M_ID'
      Origin = 'M_ID'
    end
    object ProjectMemberTableM_NAME: TWideStringField
      FieldName = 'M_NAME'
      Origin = 'M_NAME'
      Size = 200
    end
  end
  object ProjectDataSource: TDataSource
    DataSet = ProjectTable
    Left = 168
    Top = 120
  end
  object InsaDataSource: TDataSource
    DataSet = InsaTable
    Left = 168
    Top = 200
  end
  object DeptDataSource: TDataSource
    DataSet = DeptTable
    Left = 168
    Top = 288
  end
  object ProjectMemberDataSource: TDataSource
    DataSet = ProjectMemberTable
    Left = 168
    Top = 376
  end
  object DeptTable: TFDTable
    Active = True
    IndexFieldNames = 'D_ID'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'DEPT'
    TableName = 'DEPT'
    Left = 48
    Top = 288
    object DeptTableD_ID: TIntegerField
      Alignment = taCenter
      AutoGenerateValue = arAutoInc
      DisplayLabel = #48264#54840
      DisplayWidth = 20
      FieldName = 'D_ID'
      Origin = 'D_ID'
      Required = True
    end
    object DeptTableD_DEPT: TWideStringField
      Alignment = taCenter
      DisplayLabel = #48512#49436' '#47749
      DisplayWidth = 50
      FieldName = 'D_DEPT'
      Origin = 'D_DEPT'
      Size = 120
    end
    object DeptTableD_TEAM: TWideStringField
      Alignment = taCenter
      DisplayLabel = #54016' '#47749
      DisplayWidth = 50
      FieldName = 'D_TEAM'
      Origin = 'D_TEAM'
      Size = 120
    end
  end
end
