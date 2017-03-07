object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 552
  Width = 488
  object cdsTmpOrderlist: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTmpOrderqry'
    RemoteServer = DSProviderConnection1
    Left = 72
    Top = 200
    object cdsTmpOrderlistKEYNUM: TIntegerField
      FieldName = 'KEYNUM'
      Origin = 'KEYNUM'
    end
    object cdsTmpOrderlistTABLENUM: TIntegerField
      DisplayLabel = #53580#51060#48660#48264#54840
      FieldName = 'TABLENUM'
      Origin = 'TABLENUM'
    end
    object cdsTmpOrderlistMENU: TWideStringField
      DisplayLabel = #51020#49885
      FieldName = 'MENU'
      Origin = 'MENU'
      FixedChar = True
      Size = 80
    end
    object cdsTmpOrderlistPEOPLE: TIntegerField
      DisplayLabel = #51064#50896
      FieldName = 'PEOPLE'
      Origin = 'PEOPLE'
    end
    object cdsTmpOrderlistTOTALPRICE: TIntegerField
      DisplayLabel = #44552#50529
      FieldName = 'TOTALPRICE'
      Origin = 'TOTALPRICE'
    end
  end
  object cdsKitchen: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspKitchen'
    RemoteServer = DSProviderConnection1
    Left = 144
    Top = 200
    object cdsKitchenKITCHEN_SEQ: TIntegerField
      DisplayLabel = #51452#47928#48264#54840
      FieldName = 'KITCHEN_SEQ'
      Origin = 'KITCHEN_SEQ'
    end
    object cdsKitchenKIND: TWideStringField
      DisplayLabel = #51333#47448
      FieldName = 'KIND'
      Origin = 'KIND'
      Size = 120
    end
    object cdsKitchenMENU: TWideStringField
      DisplayLabel = #51020#49885#51060#47492
      FieldName = 'MENU'
      Origin = 'MENU'
      Size = 200
    end
    object cdsKitchenPEOPLE: TIntegerField
      DisplayLabel = #51064#50896
      FieldName = 'PEOPLE'
      Origin = 'PEOPLE'
    end
  end
  object SQLConnection1: TSQLConnection
    ConnectionName = 'DataSnapCONNECTION'
    DriverName = 'DataSnap'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXDataSnap'
      'DatasnapContext=datasnap/'
      
        'DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland' +
        '.Data.DbxClientDriver,Version=24.0.0.0,Culture=neutral,PublicKey' +
        'Token=91d62ebb5b0d1b1b'
      'DriverName=DataSnap'
      'HostName=localhost'
      'Port=211'
      'CommunicationProtocol=tcp/ip'
      'Filters={}')
    Left = 64
    Top = 56
    UniqueId = '{DC70C4B7-EA4C-42E4-8316-242CF1529EDC}'
  end
  object DSProviderConnection1: TDSProviderConnection
    ServerClassName = 'TServerMethods1'
    SQLConnection = SQLConnection1
    Left = 168
    Top = 56
  end
  object cdsKind: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspKind'
    RemoteServer = DSProviderConnection1
    Left = 208
    Top = 200
    object cdsKindKIND: TWideStringField
      DisplayLabel = #51333#47448
      FieldName = 'KIND'
      Origin = 'KIND'
      Size = 40
    end
    object cdsKindMENU: TWideStringField
      DisplayLabel = #47700#45684
      FieldName = 'MENU'
      Origin = 'MENU'
      Size = 80
    end
    object cdsKindPRICE: TIntegerField
      DisplayLabel = #44032#44201
      FieldName = 'PRICE'
      Origin = 'PRICE'
    end
  end
  object cdsKeyChange: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspInput'
    RemoteServer = DSProviderConnection1
    Left = 280
    Top = 200
    object cdsKeyChangeKEYNUM: TIntegerField
      DisplayLabel = #51204#54364
      FieldName = 'KEYNUM'
      Origin = 'KEYNUM'
    end
  end
end
