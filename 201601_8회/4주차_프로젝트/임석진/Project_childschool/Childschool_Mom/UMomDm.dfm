object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 275
  Width = 180
  object SQLConnection1: TSQLConnection
    DriverName = 'DataSnap'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXDataSnap'
      'HostName=localhost'
      'Port=211'
      'CommunicationProtocol=tcp/ip'
      'DatasnapContext=datasnap/'
      
        'DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland' +
        '.Data.DbxClientDriver,Version=23.0.0.0,Culture=neutral,PublicKey' +
        'Token=91d62ebb5b0d1b1b')
    Left = 32
    Top = 16
  end
  object DSProviderConnection1: TDSProviderConnection
    ServerClassName = 'TServerMethods1'
    SQLConnection = SQLConnection1
    Left = 32
    Top = 72
  end
  object CDS_Teacher: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DS_TEACHER'
    RemoteServer = DSProviderConnection1
    Left = 40
    Top = 118
    object CDS_TeacherT_NAME: TWideStringField
      FieldName = 'T_NAME'
      Origin = 'T_NAME'
      Required = True
      Size = 200
    end
    object CDS_TeacherT_AGE: TIntegerField
      FieldName = 'T_AGE'
      Origin = 'T_AGE'
    end
    object CDS_TeacherT_ADDRESS: TWideStringField
      FieldName = 'T_ADDRESS'
      Origin = 'T_ADDRESS'
      Size = 400
    end
    object CDS_TeacherT_PHONE: TWideStringField
      FieldName = 'T_PHONE'
      Origin = 'T_PHONE'
      Size = 200
    end
    object CDS_TeacherT_DEPT: TWideStringField
      FieldName = 'T_DEPT'
      Origin = 'T_DEPT'
      Size = 200
    end
    object CDS_TeacherT_MANAGEMENT: TIntegerField
      FieldName = 'T_MANAGEMENT'
      Origin = 'T_MANAGEMENT'
    end
    object CDS_TeacherT_COMMENT: TWideStringField
      FieldName = 'T_COMMENT'
      Origin = 'T_COMMENT'
      Size = 4000
    end
    object CDS_TeacherT_SCORE: TIntegerField
      FieldName = 'T_SCORE'
      Origin = 'T_SCORE'
    end
    object CDS_TeacherT_IMAGE: TBlobField
      FieldName = 'T_IMAGE'
      Origin = 'T_IMAGE'
    end
  end
  object CDS_Student_Info: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DS_STUDENT_INFO'
    RemoteServer = DSProviderConnection1
    Left = 40
    Top = 166
    object CDS_Student_InfoS_NAME: TWideStringField
      FieldName = 'S_NAME'
      Origin = 'S_NAME'
      Required = True
      Size = 200
    end
    object CDS_Student_InfoS_AGE: TIntegerField
      FieldName = 'S_AGE'
      Origin = 'S_AGE'
    end
    object CDS_Student_InfoS_ADDRESS: TWideStringField
      FieldName = 'S_ADDRESS'
      Origin = 'S_ADDRESS'
      Size = 400
    end
    object CDS_Student_InfoS_CLASS: TWideStringField
      FieldName = 'S_CLASS'
      Origin = 'S_CLASS'
      Size = 200
    end
    object CDS_Student_InfoP_NAME: TWideStringField
      FieldName = 'P_NAME'
      Origin = 'P_NAME'
      Size = 200
    end
    object CDS_Student_InfoP_AGE: TIntegerField
      FieldName = 'P_AGE'
      Origin = 'P_AGE'
    end
    object CDS_Student_InfoP_PHONE: TWideStringField
      FieldName = 'P_PHONE'
      Origin = 'P_PHONE'
      Size = 200
    end
    object CDS_Student_InfoP_COMMENT: TWideStringField
      FieldName = 'P_COMMENT'
      Origin = 'P_COMMENT'
      Size = 4000
    end
    object CDS_Student_InfoT_IMAGE: TBlobField
      FieldName = 'T_IMAGE'
      Origin = 'T_IMAGE'
    end
  end
  object CDS_MEMO: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DS_MEMO'
    RemoteServer = DSProviderConnection1
    Left = 40
    Top = 207
    object CDS_MEMOM_DATE: TWideStringField
      FieldName = 'M_DATE'
      Origin = 'M_DATE'
      Size = 120
    end
    object CDS_MEMOM_MEMO: TWideStringField
      FieldName = 'M_MEMO'
      Origin = 'M_MEMO'
      Size = 4000
    end
    object CDS_MEMOM_EDITER: TWideStringField
      FieldName = 'M_EDITER'
      Origin = 'M_EDITER'
      Size = 120
    end
  end
  object CDS_QA: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DS_QA'
    RemoteServer = DSProviderConnection1
    Left = 116
    Top = 200
    object CDS_QAQ_DATE: TWideStringField
      FieldName = 'Q_DATE'
      Origin = 'Q_DATE'
      Size = 120
    end
    object CDS_QAQ_MEMO: TWideStringField
      FieldName = 'Q_MEMO'
      Origin = 'Q_MEMO'
      Size = 4000
    end
    object CDS_QAQ_NAME: TWideStringField
      FieldName = 'Q_NAME'
      Origin = 'Q_NAME'
      Size = 120
    end
    object CDS_QAA_DATE: TWideStringField
      FieldName = 'A_DATE'
      Origin = 'A_DATE'
      Size = 120
    end
    object CDS_QAA_MEMO: TWideStringField
      FieldName = 'A_MEMO'
      Origin = 'A_MEMO'
      Size = 4000
    end
    object CDS_QAA_NAME: TWideStringField
      FieldName = 'A_NAME'
      Origin = 'A_NAME'
      Size = 120
    end
    object CDS_QARESULT: TIntegerField
      FieldName = 'RESULT'
      Origin = 'RESULT'
    end
  end
end
