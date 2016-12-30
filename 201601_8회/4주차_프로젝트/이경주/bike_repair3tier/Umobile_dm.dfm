object dm: Tdm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 348
  Width = 348
  object SQLConnection1: TSQLConnection
    DriverName = 'DataSnap'
    KeepConnection = False
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXDataSnap'
      'CommunicationProtocol=tcp/ip'
      'DatasnapContext=datasnap/'
      
        'DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland' +
        '.Data.DbxClientDriver,Version=23.0.0.0,Culture=neutral,PublicKey' +
        'Token=91d62ebb5b0d1b1b'
      'DriverName=DataSnap'
      'HostName=192.168.1.10'
      'Port=211'
      'Filters={}')
    Connected = True
    Left = 32
    Top = 24
    UniqueId = '{3D3F1E30-2D58-4C7B-B534-B1637EAD4C99}'
  end
  object bike: TClientDataSet
    Active = True
    Aggregates = <>
    Filtered = True
    Params = <>
    ProviderName = 'bikeDSP'
    RemoteServer = DSProviderConnection1
    Left = 32
    Top = 80
  end
  object user2: TClientDataSet
    Active = True
    Aggregates = <>
    Filtered = True
    Params = <
      item
        DataType = ftUnknown
        ParamType = ptUnknown
      end>
    ProviderName = 'user2DSP'
    RemoteServer = DSProviderConnection1
    Left = 32
    Top = 128
  end
  object repairman: TClientDataSet
    Active = True
    Aggregates = <>
    Filtered = True
    Params = <>
    ProviderName = 'repairmanDSP'
    RemoteServer = DSProviderConnection1
    Left = 32
    Top = 176
  end
  object repaircenter: TClientDataSet
    Active = True
    Aggregates = <>
    Filtered = True
    Params = <>
    ProviderName = 'repaircenterDSP'
    RemoteServer = DSProviderConnection1
    Left = 32
    Top = 235
  end
  object DSProviderConnection1: TDSProviderConnection
    ServerClassName = 'TServerMethods1'
    Connected = True
    SQLConnection = SQLConnection1
    Left = 144
    Top = 16
  end
  object duringview: TClientDataSet
    Active = True
    Aggregates = <>
    Filtered = True
    Params = <
      item
        DataType = ftWideString
        Name = 'PUNAME'
        ParamType = ptInput
        Size = 80
      end
      item
        DataType = ftWideString
        Name = 'PUPHONE'
        ParamType = ptInput
        Size = 80
      end>
    ProviderName = 'inglistQueryDSP'
    RemoteServer = DSProviderConnection1
    Left = 136
    Top = 88
  end
  object comview: TClientDataSet
    Active = True
    Aggregates = <>
    Filtered = True
    Params = <>
    ProviderName = 'comlistQueryDSp'
    RemoteServer = DSProviderConnection1
    Left = 136
    Top = 160
  end
  object repairlist: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'repairlistDSP'
    RemoteServer = DSProviderConnection1
    Left = 40
    Top = 296
    object repairlistUNAME: TWideStringField
      FieldName = 'UNAME'
      Origin = 'UNAME'
      Required = True
      Size = 80
    end
    object repairlistUPHONE: TWideStringField
      FieldName = 'UPHONE'
      Origin = 'UPHONE'
      Required = True
      Size = 80
    end
    object repairlistRESERVEDATE: TSQLTimeStampField
      FieldName = 'RESERVEDATE'
      Origin = 'RESERVEDATE'
      Required = True
    end
    object repairlistCOMPO: TWideStringField
      FieldName = 'COMPO'
      Origin = 'COMPO'
      Required = True
      Size = 80
    end
    object repairlistCNAME: TWideStringField
      FieldName = 'CNAME'
      Origin = 'CNAME'
      Required = True
      Size = 200
    end
    object repairlistSCORE: TIntegerField
      FieldName = 'SCORE'
      Origin = 'SCORE'
    end
    object repairlistRKEY: TWideStringField
      FieldName = 'RKEY'
      Origin = 'RKEY'
      Size = 80
    end
  end
end
