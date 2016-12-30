object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 418
  Width = 574
  object SQLConnection1: TSQLConnection
    DriverName = 'DataSnap'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXDataSnap'
      'HostName=192.168.1.15'
      'Port=211'
      'CommunicationProtocol=tcp/ip'
      'DatasnapContext=datasnap/'
      
        'DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland' +
        '.Data.DbxClientDriver,Version=21.0.0.0,Culture=neutral,PublicKey' +
        'Token=91d62ebb5b0d1b1b'
      'Filters={}')
    Connected = True
    Left = 40
    Top = 32
    UniqueId = '{41D22235-9C50-4394-AAE0-B58D7D3C827E}'
  end
  object DSProviderConnection1: TDSProviderConnection
    ServerClassName = 'TServerMethods1'
    Connected = True
    SQLConnection = SQLConnection1
    Left = 176
    Top = 32
  end
  object SearchSQueryClient: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftWideString
        Name = 'ADDRESS'
        ParamType = ptInput
        Size = 160
      end>
    ProviderName = 'SearchSQueryProvider'
    RemoteServer = DSProviderConnection1
    Left = 48
    Top = 120
    object SearchSQueryClientS_NO: TIntegerField
      FieldName = 'S_NO'
      Origin = 'S_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SearchSQueryClientS_NAME: TWideStringField
      FieldName = 'S_NAME'
      Origin = 'S_NAME'
      Required = True
      Size = 80
    end
    object SearchSQueryClientS_ADDRESS: TWideStringField
      FieldName = 'S_ADDRESS'
      Origin = 'S_ADDRESS'
      Required = True
      Size = 240
    end
  end
  object SearchRQueryClient: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'NO'
        ParamType = ptInput
        Size = 30
      end>
    ProviderName = 'SearchR_QueryProvider'
    RemoteServer = DSProviderConnection1
    Left = 48
    Top = 192
    object SearchRQueryClientR_NO: TIntegerField
      FieldName = 'R_NO'
      Origin = 'R_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SearchRQueryClientR_NAME: TWideStringField
      FieldName = 'R_NAME'
      Origin = 'R_NAME'
      Required = True
      Size = 80
    end
    object SearchRQueryClientR_PHONE: TWideStringField
      FieldName = 'R_PHONE'
      Origin = 'R_PHONE'
      Size = 80
    end
    object SearchRQueryClientR_ADDRESS: TWideStringField
      FieldName = 'R_ADDRESS'
      Origin = 'R_ADDRESS'
      Required = True
      Size = 200
    end
  end
  object SearchRBQueryClient: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'NO'
        ParamType = ptInput
        Size = 30
      end>
    ProviderName = 'SearchRB_QueryProvider'
    RemoteServer = DSProviderConnection1
    Left = 176
    Top = 184
    object SearchRBQueryClientRB_NO: TIntegerField
      FieldName = 'RB_NO'
      Origin = 'RB_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SearchRBQueryClientRB_TITLE: TWideStringField
      FieldName = 'RB_TITLE'
      Origin = 'RB_TITLE'
      Required = True
      Size = 160
    end
    object SearchRBQueryClientRB_GRADE: TWideStringField
      FieldName = 'RB_GRADE'
      Origin = 'RB_GRADE'
      Required = True
      Size = 40
    end
    object SearchRBQueryClientM_ID: TWideStringField
      FieldName = 'M_ID'
      Origin = 'M_ID'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object SearchRBQueryClientRB_RNO: TIntegerField
      FieldName = 'RB_RNO'
      Origin = 'RB_RNO'
      Required = True
    end
    object SearchRBQueryClientRB_MEMO: TWideStringField
      FieldName = 'RB_MEMO'
      Origin = 'RB_MEMO'
      Size = 200
    end
  end
  object SearchSBQueryClient: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'NO'
        ParamType = ptInput
        Size = 30
      end>
    ProviderName = 'SearchSB_QueryProvider'
    RemoteServer = DSProviderConnection1
    Left = 176
    Top = 112
    object SearchSBQueryClientSB_NO: TIntegerField
      FieldName = 'SB_NO'
      Origin = 'SB_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SearchSBQueryClientSB_TITLE: TWideStringField
      FieldName = 'SB_TITLE'
      Origin = 'SB_TITLE'
      Required = True
      Size = 160
    end
    object SearchSBQueryClientSB_GRADE: TWideStringField
      FieldName = 'SB_GRADE'
      Origin = 'SB_GRADE'
      Required = True
      Size = 40
    end
    object SearchSBQueryClientM_ID: TWideStringField
      FieldName = 'M_ID'
      Origin = 'M_ID'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object SearchSBQueryClientSB_SNO: TIntegerField
      FieldName = 'SB_SNO'
      Origin = 'SB_SNO'
      Required = True
    end
    object SearchSBQueryClientSB_MEMO: TWideStringField
      FieldName = 'SB_MEMO'
      Origin = 'SB_MEMO'
      Size = 400
    end
  end
end
