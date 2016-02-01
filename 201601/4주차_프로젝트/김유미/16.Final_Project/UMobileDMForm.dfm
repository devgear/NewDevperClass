object DataModule1: TDataModule1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 371
  Width = 394
  object SQLConnection1: TSQLConnection
    DriverName = 'DataSnap'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXDataSnap'
      'DatasnapContext=datasnap/'
      
        'DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland' +
        '.Data.DbxClientDriver,Version=23.0.0.0,Culture=neutral,PublicKey' +
        'Token=91d62ebb5b0d1b1b'
      'DriverName=DataSnap'
      'HostName=192.168.1.161'
      'Port=211'
      'CommunicationProtocol=tcp/ip'
      'Filters={}')
    Connected = True
    Left = 48
    Top = 24
    UniqueId = '{E1603CD0-88F0-4B89-9E2E-5FE0F967C47C}'
  end
  object DSProviderConnection1: TDSProviderConnection
    ServerClassName = 'TServerMethods1'
    Connected = True
    SQLConnection = SQLConnection1
    Left = 168
    Top = 24
  end
  object CdsClassInfo: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DspClassInfo'
    RemoteServer = DSProviderConnection1
    OnNewRecord = CdsClassInfoNewRecord
    Left = 48
    Top = 136
    object CdsClassInfoC_NUM: TIntegerField
      FieldName = 'C_NUM'
      Origin = 'C_NUM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsClassInfoC_DATE: TDateField
      FieldName = 'C_DATE'
      Origin = 'C_DATE'
      Required = True
    end
    object CdsClassInfoC_TIME: TWideStringField
      FieldName = 'C_TIME'
      Origin = 'C_TIME'
      Required = True
      Size = 48
    end
    object CdsClassInfoC_GROUPTYPE: TIntegerField
      FieldName = 'C_GROUPTYPE'
      Origin = 'C_GROUPTYPE'
      Required = True
    end
    object CdsClassInfoC_TEACHER: TWideStringField
      FieldName = 'C_TEACHER'
      Origin = 'C_TEACHER'
      Required = True
      Size = 32
    end
    object CdsClassInfoC_CLASSP: TIntegerField
      FieldName = 'C_CLASSP'
      Origin = 'C_CLASSP'
      Required = True
    end
    object CdsClassInfoC_RESVP: TIntegerField
      FieldName = 'C_RESVP'
      Origin = 'C_RESVP'
    end
    object CdsClassInfoC_CLASSCOST: TIntegerField
      FieldName = 'C_CLASSCOST'
      Origin = 'C_CLASSCOST'
      Required = True
    end
  end
  object CdsReservationInfo: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DspReservationInfo'
    RemoteServer = DSProviderConnection1
    OnNewRecord = CdsReservationInfoNewRecord
    Left = 48
    Top = 80
    object CdsReservationInfoR_NUM: TIntegerField
      FieldName = 'R_NUM'
      Origin = 'R_NUM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsReservationInfoR_DATE: TDateField
      FieldName = 'R_DATE'
      Origin = 'R_DATE'
      Required = True
    end
    object CdsReservationInfoR_TIME: TWideStringField
      FieldName = 'R_TIME'
      Origin = 'R_TIME'
      Required = True
      Size = 48
    end
    object CdsReservationInfoR_NAME: TWideStringField
      FieldName = 'R_NAME'
      Origin = 'R_NAME'
      Required = True
      Size = 80
    end
    object CdsReservationInfoR_PHONE: TWideStringField
      FieldName = 'R_PHONE'
      Origin = 'R_PHONE'
      Required = True
      Size = 52
    end
    object CdsReservationInfoR_RESVP: TIntegerField
      FieldName = 'R_RESVP'
      Origin = 'R_RESVP'
      Required = True
    end
    object CdsReservationInfoR_PW: TWideStringField
      FieldName = 'R_PW'
      Origin = 'R_PW'
      Size = 80
    end
    object CdsReservationInfoR_EMAIL: TWideStringField
      FieldName = 'R_EMAIL'
      Origin = 'R_EMAIL'
      Size = 120
    end
    object CdsReservationInfoR_MEMO: TWideStringField
      FieldName = 'R_MEMO'
      Origin = 'R_MEMO'
      Size = 200
    end
    object CdsReservationInfoR_STATUS: TIntegerField
      FieldName = 'R_STATUS'
      Origin = 'R_STATUS'
    end
    object CdsReservationInfoC_NUM: TIntegerField
      FieldName = 'C_NUM'
      Origin = 'C_NUM'
    end
    object CdsReservationInfoM_NUM: TIntegerField
      FieldName = 'M_NUM'
      Origin = 'M_NUM'
    end
    object CdsReservationInfoR_CLASSNUMBER: TIntegerField
      FieldName = 'R_CLASSNUMBER'
      Origin = 'R_CLASSNUMBER'
      Required = True
    end
    object CdsReservationInfoR_TOTALCLASSCOST: TIntegerField
      FieldName = 'R_TOTALCLASSCOST'
      Origin = 'R_TOTALCLASSCOST'
      Required = True
      DisplayFormat = '#,##0'
    end
  end
  object CdsMemberInfo: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DspMemberInfo'
    RemoteServer = DSProviderConnection1
    OnNewRecord = CdsMemberInfoNewRecord
    Left = 48
    Top = 192
    object CdsMemberInfoM_NUM: TIntegerField
      FieldName = 'M_NUM'
      Origin = 'M_NUM'
      Required = True
    end
    object CdsMemberInfoM_ID: TWideStringField
      FieldName = 'M_ID'
      Origin = 'M_ID'
      Required = True
      Size = 80
    end
    object CdsMemberInfoM_PW: TWideStringField
      FieldName = 'M_PW'
      Origin = 'M_PW'
      Required = True
      Size = 80
    end
    object CdsMemberInfoM_NAME: TWideStringField
      FieldName = 'M_NAME'
      Origin = 'M_NAME'
      Required = True
      Size = 80
    end
    object CdsMemberInfoM_BIRTHDATE: TWideStringField
      FieldName = 'M_BIRTHDATE'
      Origin = 'M_BIRTHDATE'
      Required = True
      Size = 48
    end
    object CdsMemberInfoM_PHONE: TWideStringField
      FieldName = 'M_PHONE'
      Origin = 'M_PHONE'
      Required = True
      Size = 52
    end
    object CdsMemberInfoM_EMAIL: TWideStringField
      FieldName = 'M_EMAIL'
      Origin = 'M_EMAIL'
      Size = 120
    end
  end
  object CdsQueryClassInfo: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'DATE'
        ParamType = ptInput
        Size = 30
      end>
    ProviderName = 'DspqueryClassInfo'
    RemoteServer = DSProviderConnection1
    OnCalcFields = CdsQueryClassInfoCalcFields
    Left = 168
    Top = 136
    object CdsQueryClassInfoC_TIME: TWideStringField
      FieldName = 'C_TIME'
      Origin = 'C_TIME'
      Required = True
      Size = 48
    end
    object CdsQueryClassInfoC_GROUPTYPE: TIntegerField
      FieldName = 'C_GROUPTYPE'
      Origin = 'C_GROUPTYPE'
      Required = True
    end
    object CdsQueryClassInfoC_TEACHER: TWideStringField
      FieldName = 'C_TEACHER'
      Origin = 'C_TEACHER'
      Required = True
      Size = 32
    end
    object CdsQueryClassInfoC_CLASSP: TIntegerField
      FieldName = 'C_CLASSP'
      Origin = 'C_CLASSP'
      Required = True
    end
    object CdsQueryClassInfoC_RESVP: TIntegerField
      FieldName = 'C_RESVP'
      Origin = 'C_RESVP'
      Required = True
    end
    object CdsQueryClassInfoC_Group: TStringField
      FieldKind = fkCalculated
      FieldName = 'C_Group'
      Calculated = True
    end
    object CdsQueryClassInfoC_NUM: TIntegerField
      FieldName = 'C_NUM'
      Origin = 'C_NUM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object CdsQueryResevClassInfo: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DspqueryResevClassInfo'
    RemoteServer = DSProviderConnection1
    OnCalcFields = CdsQueryResevClassInfoCalcFields
    Left = 48
    Top = 248
    object CdsQueryResevClassInfoR_DATE: TDateField
      FieldName = 'R_DATE'
      Origin = 'R_DATE'
      Required = True
    end
    object CdsQueryResevClassInfoR_TIME: TWideStringField
      FieldName = 'R_TIME'
      Origin = 'R_TIME'
      Required = True
      Size = 48
    end
    object CdsQueryResevClassInfoR_NAME: TWideStringField
      FieldName = 'R_NAME'
      Origin = 'R_NAME'
      Required = True
      Size = 80
    end
    object CdsQueryResevClassInfoR_PHONE: TWideStringField
      FieldName = 'R_PHONE'
      Origin = 'R_PHONE'
      Required = True
      Size = 52
    end
    object CdsQueryResevClassInfoR_RESVP: TIntegerField
      FieldName = 'R_RESVP'
      Origin = 'R_RESVP'
      Required = True
    end
    object CdsQueryResevClassInfoR_MEMO: TWideStringField
      FieldName = 'R_MEMO'
      Origin = 'R_MEMO'
      Size = 200
    end
    object CdsQueryResevClassInfoR_STATUS: TIntegerField
      FieldName = 'R_STATUS'
      Origin = 'R_STATUS'
    end
    object CdsQueryResevClassInfoR_CLASSNUMBER: TIntegerField
      FieldName = 'R_CLASSNUMBER'
      Origin = 'R_CLASSNUMBER'
      Required = True
    end
    object CdsQueryResevClassInfoR_TOTALCLASSCOST: TIntegerField
      FieldName = 'R_TOTALCLASSCOST'
      Origin = 'R_TOTALCLASSCOST'
      Required = True
    end
    object CdsQueryResevClassInfoC_GROUPTYPE: TIntegerField
      FieldName = 'C_GROUPTYPE'
      Origin = 'C_GROUPTYPE'
      ProviderFlags = []
      ReadOnly = True
    end
    object CdsQueryResevClassInfoC_TEACHER: TWideStringField
      FieldName = 'C_TEACHER'
      Origin = 'C_TEACHER'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
    object CdsQueryResevClassInfoC_CLASSP: TIntegerField
      FieldName = 'C_CLASSP'
      Origin = 'C_CLASSP'
      ProviderFlags = []
      ReadOnly = True
    end
    object CdsQueryResevClassInfoC_RESVP: TIntegerField
      FieldName = 'C_RESVP'
      Origin = 'C_RESVP'
      ProviderFlags = []
      ReadOnly = True
    end
    object CdsQueryResevClassInfoC_Group: TStringField
      FieldKind = fkCalculated
      FieldName = 'C_Group'
      Calculated = True
    end
  end
end
