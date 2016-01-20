object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 421
  Width = 584
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 352
    Top = 40
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 440
    Top = 48
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'User_Name=SYSDBA'
      'Password=masterkey'
      'CharacterSet=UTF8'
      'Database=C:\MINIPROJECT\PROJECT.GDB'
      'DriverID=IB')
    Connected = True
    Left = 296
    Top = 40
  end
  object DS_Project: TDataSource
    DataSet = FdProject
    Left = 168
    Top = 128
  end
  object DS_Member: TDataSource
    DataSet = Fdmember
    Left = 168
    Top = 192
  end
  object Fddept: TFDTable
    Active = True
    IndexFieldNames = 'D_ID'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'DEPT'
    TableName = 'DEPT'
    Left = 96
    Top = 264
    object FddeptD_ID: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = #48512#49436#53076#46300
      FieldName = 'D_ID'
      Origin = 'D_ID'
      Required = True
    end
    object FddeptD_DEPT: TWideStringField
      DisplayLabel = #48512#49436#47749
      FieldName = 'D_DEPT'
      Origin = 'D_DEPT'
      Size = 120
    end
    object FddeptD_TEAM: TWideStringField
      DisplayLabel = #49548#49549#54016#47749
      FieldName = 'D_TEAM'
      Origin = 'D_TEAM'
      Size = 120
    end
  end
  object DS_Dept: TDataSource
    DataSet = Fddept
    Left = 168
    Top = 272
  end
  object MbQuery: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'create table (M_NAME varchar(30), M_TEAM varchar(30));')
    Left = 240
    Top = 192
  end
  object FdtmQSource: TDataSource
    DataSet = MbQuery
    Left = 328
    Top = 184
  end
  object PjQuery: TFDQuery
    Connection = FDConnection1
    Left = 240
    Top = 120
  end
  object DeQuery: TFDQuery
    Connection = FDConnection1
    Left = 240
    Top = 272
  end
  object FdpjSource: TDataSource
    DataSet = PjQuery
    Left = 320
    Top = 120
  end
  object FddeSource: TDataSource
    DataSet = DeQuery
    Left = 320
    Top = 256
  end
  object FdPromem: TFDTable
    Active = True
    IndexFieldNames = 'P_ID'
    MasterSource = DS_Project
    MasterFields = 'P_ID'
    Connection = FDConnection1
    UpdateOptions.AssignedValues = [uvCountUpdatedRecords]
    UpdateOptions.UpdateTableName = 'PROJECTMEMBER'
    TableName = 'PROJECTMEMBER'
    Left = 104
    Top = 320
    object FdPromemR_ID: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = #53076#46300
      FieldName = 'R_ID'
      Origin = 'R_ID'
      Required = True
    end
    object FdPromemP_ID: TIntegerField
      DisplayLabel = #54532#47196#51229#53944#53076#46300
      FieldName = 'P_ID'
      Origin = 'P_ID'
      Required = True
    end
    object FdPromemM_ID: TIntegerField
      DisplayLabel = #47716#48260#53076#46300
      FieldName = 'M_ID'
      Origin = 'M_ID'
    end
    object FdPromemMember: TStringField
      DisplayLabel = #51060#47492
      FieldKind = fkLookup
      FieldName = 'Member'
      LookupDataSet = Fdmember
      LookupKeyFields = 'M_ID'
      LookupResultField = 'M_NAME'
      KeyFields = 'M_ID'
      Lookup = True
    end
  end
  object DS_Promem: TDataSource
    DataSet = FdPromem
    Left = 184
    Top = 320
  end
  object FdProject: TFDTable
    Active = True
    IndexFieldNames = 'P_ID'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'PROJECT'
    TableName = 'PROJECT'
    Left = 104
    Top = 136
    object FdProjectP_ID: TIntegerField
      DisplayLabel = #54532#47196#51229#53944#53076#46300
      FieldName = 'P_ID'
      Origin = 'P_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FdProjectP_NAME: TWideStringField
      DisplayLabel = #54532#47196#51229#53944#51060#47492
      FieldName = 'P_NAME'
      Origin = 'P_NAME'
      Required = True
      Size = 200
    end
    object FdProjectP_STARTDATE: TSQLTimeStampField
      DisplayLabel = #54532#47196#51229#53944#49884#51089
      FieldName = 'P_STARTDATE'
      Origin = 'P_STARTDATE'
      DisplayFormat = 'yyyy'#45380'mm'#50900'dd'#51068
      EditMask = '!9999/99/00;1;_'
    end
    object FdProjectP_ENDDATE: TSQLTimeStampField
      DisplayLabel = #54532#47196#51229#53944#47560#44048
      FieldName = 'P_ENDDATE'
      Origin = 'P_ENDDATE'
      DisplayFormat = 'yyyy'#45380'mm'#50900'dd'#51068
      EditMask = '!9999/99/00;1;_'
    end
    object FdProjectP_MANAGER_ID: TIntegerField
      DisplayLabel = #54532#47196#51229#53944#44288#47532#51088
      FieldName = 'P_MANAGER_ID'
      Origin = 'P_MANAGER_ID'
    end
    object FdProjectP_MEMBERCOUNT: TIntegerField
      DisplayLabel = #54532#47196#51229#53944#51064#50896#49688
      FieldName = 'P_MEMBERCOUNT'
      Origin = 'P_MEMBERCOUNT'
    end
    object FdProjectP_STATUS: TIntegerField
      DisplayLabel = #51652#54665#49345#53468
      FieldName = 'P_STATUS'
      Origin = 'P_STATUS'
    end
    object FdProjectMANAGER: TStringField
      AutoGenerateValue = arAutoInc
      DisplayLabel = #44288#47532#51088
      FieldKind = fkLookup
      FieldName = 'MANAGER'
      LookupDataSet = Fdmember
      LookupKeyFields = 'M_ID'
      LookupResultField = 'M_NAME'
      KeyFields = 'P_MANAGER_ID'
      Lookup = True
    end
  end
  object Fdmember: TFDTable
    Active = True
    IndexFieldNames = 'M_ID'
    Connection = FDConnection1
    FormatOptions.AssignedValues = [fvStrsTrim]
    UpdateOptions.AssignedValues = [uvCountUpdatedRecords]
    UpdateOptions.CountUpdatedRecords = False
    UpdateOptions.UpdateTableName = 'MEMBER'
    TableName = 'MEMBER'
    Left = 96
    Top = 200
    object FdmemberM_ID: TIntegerField
      FieldName = 'M_ID'
      Origin = 'M_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FdmemberM_NAME: TWideStringField
      FieldName = 'M_NAME'
      Origin = 'M_NAME'
      Size = 120
    end
    object FdmemberM_TEAM: TIntegerField
      FieldName = 'M_TEAM'
      Origin = 'M_TEAM'
    end
    object FdmemberM_TEAMNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'M_TEAMNAME'
      LookupDataSet = Fddept
      LookupKeyFields = 'D_ID'
      LookupResultField = 'D_TEAM'
      KeyFields = 'M_TEAM'
      Lookup = True
    end
  end
end
