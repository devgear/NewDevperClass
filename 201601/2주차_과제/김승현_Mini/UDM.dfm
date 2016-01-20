object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 294
  Width = 379
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\Delphi_class_2016\'#44608#49849#54788'_Mini\DB_Project\PROJECT2.GDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'CharacterSet=UTF8'
      'DriverID=IB')
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 48
  end
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 144
    Top = 48
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 256
    Top = 48
  end
  object Dept: TFDTable
    Active = True
    IndexFieldNames = 'D_ID'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'DEPT'
    TableName = 'DEPT'
    Left = 40
    Top = 96
    object DeptD_ID: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = #48512#49436#48264#54840
      FieldName = 'D_ID'
      Origin = 'D_ID'
      Required = True
    end
    object DeptD_DEPT: TWideStringField
      DisplayLabel = #48512#49436#47749
      FieldName = 'D_DEPT'
      Origin = 'D_DEPT'
      Size = 120
    end
    object DeptD_TEAM: TWideStringField
      DisplayLabel = #49548#49549#54016
      FieldName = 'D_TEAM'
      Origin = 'D_TEAM'
      Size = 120
    end
  end
  object DeptSource: TDataSource
    AutoEdit = False
    DataSet = Dept
    Left = 144
    Top = 96
  end
  object Member: TFDTable
    Active = True
    IndexFieldNames = 'M_ID'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'MEMBER'
    TableName = 'MEMBER'
    Left = 40
    Top = 144
    object MemberM_ID: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = #49324#50896#48264#54840
      FieldName = 'M_ID'
      Origin = 'M_ID'
      Required = True
    end
    object MemberM_NAME: TWideStringField
      DisplayLabel = #49324#50896#51060#47492
      FieldName = 'M_NAME'
      Origin = 'M_NAME'
      Size = 120
    end
    object MemberM_TEAM: TIntegerField
      DisplayLabel = #49548#49549#54016
      FieldName = 'M_TEAM'
      Origin = 'M_TEAM'
    end
    object MemberM_TEAMNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'M_TEAMNAME'
      LookupDataSet = Dept
      LookupKeyFields = 'D_ID'
      LookupResultField = 'D_TEAM'
      KeyFields = 'M_TEAM'
      Lookup = True
    end
  end
  object MemSource: TDataSource
    AutoEdit = False
    DataSet = Member
    Left = 144
    Top = 144
  end
  object Project: TFDTable
    Active = True
    IndexFieldNames = 'P_ID'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'PROJECT'
    TableName = 'PROJECT'
    Left = 40
    Top = 192
    object ProjectP_ID: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = #48264#54840
      FieldName = 'P_ID'
      Origin = 'P_ID'
      Required = True
    end
    object ProjectP_NAME: TWideStringField
      DisplayLabel = #54532#47196#51229#53944
      FieldName = 'P_NAME'
      Origin = 'P_NAME'
      Required = True
      Size = 200
    end
    object ProjectP_STARTDATE: TSQLTimeStampField
      DisplayLabel = #49884#51089#51068
      FieldName = 'P_STARTDATE'
      Origin = 'P_STARTDATE'
      DisplayFormat = 'YYYY'#45380'MM'#50900'DD'#51068
    end
    object ProjectP_ENDDATE: TSQLTimeStampField
      DisplayLabel = #50756#47308#51068
      FieldName = 'P_ENDDATE'
      Origin = 'P_ENDDATE'
      DisplayFormat = 'YYYY'#45380'MM'#50900'DD'#51068
    end
    object ProjectP_MANAGER_ID: TIntegerField
      DisplayLabel = #44288#47532#51088
      FieldName = 'P_MANAGER_ID'
      Origin = 'P_MANAGER_ID'
      DisplayFormat = '#,##0'#47749
    end
    object ProjectP_MEMBERCOUNT: TIntegerField
      DisplayLabel = #51064#50896#49688
      DisplayWidth = 5
      FieldName = 'P_MEMBERCOUNT'
      Origin = 'P_MEMBERCOUNT'
      DisplayFormat = '#,##0'#47749
    end
    object ProjectP_STATUS: TIntegerField
      DisplayLabel = #51652#54665#49345#53468
      FieldName = 'P_STATUS'
      Origin = 'P_STATUS'
    end
  end
  object ProSource: TDataSource
    DataSet = Project
    Left = 144
    Top = 192
  end
  object ProMa: TFDTable
    Active = True
    IndexFieldNames = 'R_ID'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'PROJECTMEMBER'
    TableName = 'PROJECTMEMBER'
    Left = 40
    Top = 240
    object ProMaR_ID: TIntegerField
      Alignment = taCenter
      AutoGenerateValue = arAutoInc
      DisplayLabel = #44288#47532#48264#54840
      FieldName = 'R_ID'
      Origin = 'R_ID'
      Required = True
      DisplayFormat = '#,##0'#48264
    end
    object ProMaP_ID: TIntegerField
      Alignment = taCenter
      DisplayLabel = #54532#47196#51229#53944#48264#54840
      FieldName = 'P_ID'
      Origin = 'P_ID'
      DisplayFormat = '#,##0'#48264
    end
    object ProMaM_ID: TIntegerField
      Alignment = taCenter
      DisplayLabel = #49324#50896#48264#54840
      FieldName = 'M_ID'
      Origin = 'M_ID'
      DisplayFormat = '#,##0'#48264
    end
  end
  object PromaSource: TDataSource
    DataSet = ProMa
    Left = 144
    Top = 240
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select count(P_NAME) num from project'
      'where P_NAME = :NAME')
    Left = 216
    Top = 104
    ParamData = <
      item
        Position = 1
        Name = 'NAME'
        DataType = ftWideString
        ParamType = ptInput
        Size = 200
        Value = Null
      end>
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 275
    Top = 104
  end
  object SelectName: TFDQuery
    Active = True
    MasterSource = PromaSource
    MasterFields = 'R_ID;P_ID;M_ID'
    Connection = FDConnection1
    SQL.Strings = (
      'select R_ID, P_ID, P_NAME,M_ID, m.M_NAME from MEMBER m'
      'inner join PROJECTMEMBER PM'
      'on m.M_ID = PM.M_ID'
      'inner join PROJECT P'
      'on P.P_ID = PM.P_ID'
      '')
    Left = 216
    Top = 200
  end
  object SelectSource: TDataSource
    DataSet = SelectName
    Left = 296
    Top = 200
  end
end
