object DM: TDM
  OldCreateOrder = False
  Height = 333
  Width = 456
  object ScheduleTableSource: TDataSource
    DataSet = ScheduleTable
    Left = 352
    Top = 24
  end
  object FindDayDataQuery: TQuery
    DatabaseName = 'Schedule'
    SQL.Strings = (
      'select title from schedule where title =:pdate')
    Left = 40
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pdate'
        ParamType = ptUnknown
      end>
  end
  object SelectDataQuery: TQuery
    DatabaseName = 'Schedule'
    SQL.Strings = (
      ' ')
    Left = 40
    Top = 136
  end
  object SelectDataQuerySource: TDataSource
    DataSet = SelectDataQuery
    Left = 352
    Top = 144
  end
  object FindDayDataQuerySource: TDataSource
    DataSet = FindDayDataQuery
    Left = 352
    Top = 88
  end
  object DeleteDataQuery: TQuery
    DatabaseName = 'Schedule'
    Left = 40
    Top = 200
  end
  object FineSameTitleQuery: TQuery
    DatabaseName = 'Schedule'
    Left = 40
    Top = 256
  end
  object AlarmQuery: TQuery
    DatabaseName = 'Schedule'
    Left = 152
    Top = 256
  end
  object ScheduleTable: TTable
    Active = True
    DatabaseName = 'Schedule'
    TableName = 'SCHEDULE.db'
    TableType = ttParadox
    Left = 40
    Top = 24
    object ScheduleTableDay_data: TStringField
      DisplayLabel = #46321#47197#51068#51088
      DisplayWidth = 10
      FieldName = 'Day_data'
      Size = 16
    end
    object ScheduleTableTitle: TStringField
      DisplayLabel = #51228#47785
      FieldName = 'Title'
      Size = 32
    end
    object ScheduleTableTimeH_data: TStringField
      DisplayLabel = #51068#51221#49884#44036
      FieldName = 'TimeH_data'
      Visible = False
      Size = 2
    end
    object ScheduleTableTimeM_data: TStringField
      DisplayLabel = #48516
      FieldName = 'TimeM_data'
      Visible = False
      Size = 2
    end
    object ScheduleTableAlarm_data: TStringField
      DisplayLabel = #50508#46988#49324#50857
      FieldName = 'Alarm_data'
      Size = 1
    end
    object ScheduleTableGrade: TIntegerField
      DisplayLabel = #46321#44553
      FieldName = 'Grade'
    end
    object ScheduleTableText: TStringField
      FieldName = 'Text'
      Size = 255
    end
    object ScheduleTableCreateTime: TStringField
      DisplayLabel = #46321#47197#49345#49464#49884#44036
      FieldName = 'CreateTime'
      Visible = False
      Size = 16
    end
  end
  object ListQuery: TQuery
    Left = 152
    Top = 192
  end
  object ListQuerySource: TDataSource
    DataSet = ListQuery
    Left = 352
    Top = 208
  end
  object ListTable: TTable
    Active = True
    DatabaseName = 'Schedule'
    TableName = 'SCHEDULE.db'
    Left = 144
    Top = 24
    object ListTableDay_data: TStringField
      DisplayLabel = #46321#47197#51068#51088
      DisplayWidth = 10
      FieldName = 'Day_data'
      Size = 16
    end
    object ListTableTitle: TStringField
      DisplayLabel = #51228#47785
      DisplayWidth = 15
      FieldName = 'Title'
      Size = 32
    end
    object ListTableText: TStringField
      DisplayLabel = #45236#50857
      DisplayWidth = 40
      FieldName = 'Text'
      Size = 255
    end
    object ListTableTimeH_data: TStringField
      DisplayLabel = #49884#44036
      DisplayWidth = 4
      FieldName = 'TimeH_data'
      Size = 2
    end
    object ListTableTimeM_data: TStringField
      DisplayLabel = #48516
      DisplayWidth = 4
      FieldName = 'TimeM_data'
      Size = 2
    end
    object ListTableAlarm_data: TStringField
      FieldName = 'Alarm_data'
      Visible = False
      Size = 1
    end
    object ListTableGrade: TIntegerField
      FieldName = 'Grade'
      Visible = False
    end
    object ListTableCreateTime: TStringField
      FieldName = 'CreateTime'
      Visible = False
      Size = 16
    end
  end
  object ListTableSource: TDataSource
    DataSet = ListTable
    Left = 352
    Top = 264
  end
end
