object Dm_PC: TDm_PC
  OldCreateOrder = False
  Height = 443
  Width = 594
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
        '.Data.DbxClientDriver,Version=24.0.0.0,Culture=neutral,PublicKey' +
        'Token=91d62ebb5b0d1b1b')
    Connected = True
    Left = 64
    Top = 64
    UniqueId = '{3C2B0BD4-35CD-4EF2-B26A-63DDA7013138}'
  end
  object DSProviderConnection1: TDSProviderConnection
    ServerClassName = 'TServerMethods1'
    Connected = True
    SQLConnection = SQLConnection1
    Left = 160
    Top = 64
  end
  object cdsTmpOrderlist: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTmpOrderqry'
    RemoteServer = DSProviderConnection1
    Left = 64
    Top = 128
    object cdsTmpOrderlistKEYNUM: TIntegerField
      FieldName = 'KEYNUM'
      Origin = 'KEYNUM'
    end
    object cdsTmpOrderlistTABLENUM: TIntegerField
      DisplayLabel = #48264#54840
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
      DisplayLabel = #52509#54633
      FieldName = 'TOTALPRICE'
      Origin = 'TOTALPRICE'
      DisplayFormat = '#,##0'#50896
    end
  end
  object cdsOrderDb: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOrderDb'
    RemoteServer = DSProviderConnection1
    Left = 400
    Top = 112
    object cdsOrderDbORDERDATE: TDateField
      DisplayLabel = #45216#51676
      FieldName = 'ORDERDATE'
      Origin = 'ORDERDATE'
    end
    object cdsOrderDbKEYNUM: TIntegerField
      DisplayLabel = #51452#47928#48264#54840
      FieldName = 'KEYNUM'
      Origin = 'KEYNUM'
    end
    object cdsOrderDbTABLENUM: TIntegerField
      DisplayLabel = #53580#51060#48660#48264#54840
      FieldName = 'TABLENUM'
      Origin = 'TABLENUM'
    end
    object cdsOrderDbTOTALPRICE: TIntegerField
      DisplayLabel = #44032#44201
      FieldName = 'TOTALPRICE'
      Origin = 'TOTALPRICE'
      DisplayFormat = '#,##0'#50896
    end
  end
  object cdsOrderDetail: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOrderDetail'
    RemoteServer = DSProviderConnection1
    Left = 400
    Top = 192
    object cdsOrderDetailKEYNUM: TIntegerField
      DisplayLabel = #51452#47928#48264#54840
      FieldName = 'KEYNUM'
      Origin = 'KEYNUM'
    end
    object cdsOrderDetailTABLENUM: TIntegerField
      DisplayLabel = #53580#51060#48660#48264#54840
      FieldName = 'TABLENUM'
      Origin = 'TABLENUM'
    end
    object cdsOrderDetailMENU: TWideStringField
      DisplayLabel = #47700#45684
      FieldName = 'MENU'
      Origin = 'MENU'
      Size = 200
    end
    object cdsOrderDetailPEOPLE: TIntegerField
      DisplayLabel = #51064#50896
      FieldName = 'PEOPLE'
      Origin = 'PEOPLE'
    end
    object cdsOrderDetailTOTALPRICE: TIntegerField
      DisplayLabel = #52509#50529
      FieldName = 'TOTALPRICE'
      Origin = 'TOTALPRICE'
    end
  end
  object cdsTotal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTotal'
    RemoteServer = DSProviderConnection1
    Left = 168
    Top = 128
    object cdsTotalTABLENUM2: TIntegerField
      DisplayLabel = #48264#54840
      FieldName = 'TABLENUM'
      ReadOnly = True
    end
    object cdsTotalTOTALPRICE2: TLargeintField
      DisplayLabel = #44552#50529
      FieldName = 'TOTALPRICE'
      ReadOnly = True
      DisplayFormat = '#,##0'#50896
    end
  end
end
