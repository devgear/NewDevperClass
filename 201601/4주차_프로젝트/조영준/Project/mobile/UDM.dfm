object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 283
  Width = 363
  object SQLConnection1: TSQLConnection
    DriverName = 'DataSnap'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXDataSnap'
      'HostName=192.168.1.21'
      'Port=222'
      'CommunicationProtocol=tcp/ip'
      'DatasnapContext=datasnap/'
      
        'DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland' +
        '.Data.DbxClientDriver,Version=23.0.0.0,Culture=neutral,PublicKey' +
        'Token=91d62ebb5b0d1b1b'
      'Filters={}')
    Connected = True
    Left = 57
    Top = 41
    UniqueId = '{1562F3AA-1A7C-427A-998A-8B462D48376E}'
  end
  object DSProviderConnection1: TDSProviderConnection
    ServerClassName = 'TServerMethods1'
    Connected = True
    SQLConnection = SQLConnection1
    Left = 160
    Top = 40
  end
  object refinementDataSet: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftWideString
        Name = 'SBJT_DIV'
        ParamType = ptInput
        Size = 40
      end>
    ProviderName = 'refinementProvider'
    RemoteServer = DSProviderConnection1
    Left = 56
    Top = 112
    object refinementDataSetSBJT_DIV: TWideStringField
      FieldName = 'SBJT_DIV'
      Origin = 'SBJT_DIV'
      Required = True
      Size = 40
    end
    object refinementDataSetSBJT_NUM: TIntegerField
      FieldName = 'SBJT_NUM'
      Origin = 'SBJT_NUM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object refinementDataSetSBJT_NAME: TWideStringField
      FieldName = 'SBJT_NAME'
      Origin = 'SBJT_NAME'
      Required = True
      Size = 80
    end
    object refinementDataSetSBJT_DEPTNUM: TWideStringField
      FieldName = 'SBJT_DEPTNUM'
      Origin = 'SBJT_DEPTNUM'
      Required = True
      Size = 40
    end
    object refinementDataSetSBJT_PROFNUM: TIntegerField
      FieldName = 'SBJT_PROFNUM'
      Origin = 'SBJT_PROFNUM'
      Required = True
    end
    object refinementDataSetSBJT_GRADE: TIntegerField
      FieldName = 'SBJT_GRADE'
      Origin = 'SBJT_GRADE'
      Required = True
    end
    object refinementDataSetSBJT_TOTAL: TIntegerField
      FieldName = 'SBJT_TOTAL'
      Origin = 'SBJT_TOTAL'
      Required = True
    end
    object refinementDataSetSBJT_CLASS: TIntegerField
      FieldName = 'SBJT_CLASS'
      Origin = 'SBJT_CLASS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object refinementDataSetSBJT_ROOM: TWideStringField
      FieldName = 'SBJT_ROOM'
      Origin = 'SBJT_ROOM'
      Required = True
      Size = 40
    end
    object refinementDataSetSBJT_TEXT: TWideStringField
      FieldName = 'SBJT_TEXT'
      Origin = 'SBJT_TEXT'
      Required = True
      Size = 400
    end
    object refinementDataSetSBJT_PROFNAME: TWideStringField
      FieldName = 'SBJT_PROFNAME'
      Origin = 'SBJT_PROFNAME'
      Size = 80
    end
  end
  object specialtyDataSet: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftWideString
        Name = 'SBJT_DEPTNUM'
        ParamType = ptInput
        Size = 40
      end>
    ProviderName = 'specialityProvider'
    RemoteServer = DSProviderConnection1
    Left = 144
    Top = 112
    object specialtyDataSetSBJT_DIV: TWideStringField
      FieldName = 'SBJT_DIV'
      Origin = 'SBJT_DIV'
      Required = True
      Size = 40
    end
    object specialtyDataSetSBJT_NUM: TIntegerField
      FieldName = 'SBJT_NUM'
      Origin = 'SBJT_NUM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object specialtyDataSetSBJT_NAME: TWideStringField
      FieldName = 'SBJT_NAME'
      Origin = 'SBJT_NAME'
      Required = True
      Size = 80
    end
    object specialtyDataSetSBJT_DEPTNUM: TWideStringField
      FieldName = 'SBJT_DEPTNUM'
      Origin = 'SBJT_DEPTNUM'
      Required = True
      Size = 40
    end
    object specialtyDataSetSBJT_PROFNUM: TIntegerField
      FieldName = 'SBJT_PROFNUM'
      Origin = 'SBJT_PROFNUM'
      Required = True
    end
    object specialtyDataSetSBJT_GRADE: TIntegerField
      FieldName = 'SBJT_GRADE'
      Origin = 'SBJT_GRADE'
      Required = True
    end
    object specialtyDataSetSBJT_TOTAL: TIntegerField
      FieldName = 'SBJT_TOTAL'
      Origin = 'SBJT_TOTAL'
      Required = True
    end
    object specialtyDataSetSBJT_CLASS: TIntegerField
      FieldName = 'SBJT_CLASS'
      Origin = 'SBJT_CLASS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object specialtyDataSetSBJT_ROOM: TWideStringField
      FieldName = 'SBJT_ROOM'
      Origin = 'SBJT_ROOM'
      Required = True
      Size = 40
    end
    object specialtyDataSetSBJT_TEXT: TWideStringField
      FieldName = 'SBJT_TEXT'
      Origin = 'SBJT_TEXT'
      Required = True
      Size = 400
    end
    object specialtyDataSetSBJT_PROFNAME: TWideStringField
      FieldName = 'SBJT_PROFNAME'
      Origin = 'SBJT_PROFNAME'
      Size = 80
    end
  end
  object userDataSet: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'SDT_NUM'
        ParamType = ptInput
        Size = 30
      end>
    ProviderName = 'UserProvider'
    RemoteServer = DSProviderConnection1
    Left = 48
    Top = 184
  end
  object makrDataSet: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'SDT_NUM'
        ParamType = ptInput
      end>
    ProviderName = 'makrProvider'
    RemoteServer = DSProviderConnection1
    Left = 128
    Top = 184
  end
  object SignupDataSet: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'SDT_NUM'
        ParamType = ptInput
      end>
    ProviderName = 'SignupProvider'
    RemoteServer = DSProviderConnection1
    Left = 224
    Top = 112
  end
  object noticeDataSet: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'NotProvider'
    RemoteServer = DSProviderConnection1
    Left = 224
    Top = 176
  end
  object sbjtDataSet: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'A'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'B'
        ParamType = ptInput
      end>
    ProviderName = 'sbjtProvider'
    RemoteServer = DSProviderConnection1
    Left = 304
    Top = 112
  end
end
