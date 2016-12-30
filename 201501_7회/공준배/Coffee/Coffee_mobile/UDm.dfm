object Dm: TDm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 320
  Width = 619
  object SQLConnection1: TSQLConnection
    ConnectionName = 'DataSnapCONNECTION'
    DriverName = 'DataSnap'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXDataSnap'
      'DatasnapContext=datasnap/'
      
        'DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland' +
        '.Data.DbxClientDriver,Version=21.0.0.0,Culture=neutral,PublicKey' +
        'Token=91d62ebb5b0d1b1b'
      'DriverName=DataSnap'
      'HostName=192.168.0.3'
      'Port=211'
      'CommunicationProtocol=tcp/ip'
      'Filters={}')
    Connected = True
    Left = 48
    Top = 32
    UniqueId = '{2B84322F-A8EC-4327-838D-CD7216BDCA7F}'
  end
  object DSProviderConnection1: TDSProviderConnection
    ServerClassName = 'TServerMethods1'
    Connected = True
    SQLConnection = SQLConnection1
    Left = 136
    Top = 96
  end
  object CafeDataSet: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'Cafe_Table_Provider'
    RemoteServer = DSProviderConnection1
    Left = 296
    Top = 168
    object CafeDataSetC_NAME: TWideStringField
      FieldName = 'C_NAME'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 80
    end
    object CafeDataSetC_LOCA: TWideStringField
      FieldName = 'C_LOCA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 80
    end
    object CafeDataSetC_LAT: TSingleField
      FieldName = 'C_LAT'
      Required = True
    end
    object CafeDataSetC_LONG: TSingleField
      FieldName = 'C_LONG'
      Required = True
    end
  end
  object MenuDataSet: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'Menu_Table_Provider'
    RemoteServer = DSProviderConnection1
    Left = 216
    Top = 168
    object MenuDataSetM_NAME: TWideStringField
      FieldName = 'M_NAME'
      Size = 120
    end
    object MenuDataSetM_PRICE: TIntegerField
      FieldName = 'M_PRICE'
    end
    object MenuDataSetM_EPRICE: TIntegerField
      FieldName = 'M_EPRICE'
    end
    object MenuDataSetM_INFO: TWideStringField
      FieldName = 'M_INFO'
      Size = 600
    end
    object MenuDataSetM_PHOTO: TBlobField
      FieldName = 'M_PHOTO'
      Size = 1
    end
    object MenuDataSetM_CAFENAME: TWideStringField
      FieldName = 'M_CAFENAME'
      Size = 80
    end
  end
  object AlphaDataSet: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'AlphaBet_Table_Provider'
    RemoteServer = DSProviderConnection1
    Left = 144
    Top = 168
  end
  object ReserveDetailDataSet: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'SQL_ReserveDetail_Check_Provider'
    RemoteServer = DSProviderConnection1
    Left = 296
    Top = 48
    object ReserveDetailDataSetR_NUM: TIntegerField
      FieldName = 'R_NUM'
      Required = True
    end
    object ReserveDetailDataSetM_NAME: TWideStringField
      FieldName = 'M_NAME'
      Required = True
      Size = 120
    end
    object ReserveDetailDataSetRL_QUANTITY: TIntegerField
      FieldName = 'RL_QUANTITY'
    end
    object ReserveDetailDataSetRL_PRICE: TIntegerField
      FieldName = 'RL_PRICE'
    end
    object ReserveDetailDataSetM_PRICE: TIntegerField
      FieldName = 'M_PRICE'
    end
    object ReserveDetailDataSetM_INFO: TWideStringField
      FieldName = 'M_INFO'
      Size = 600
    end
    object ReserveDetailDataSetM_PHOTO: TBlobField
      FieldName = 'M_PHOTO'
      Size = 1
    end
  end
  object ReserveDataSet: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'SQL_Reserve_Check_Provider'
    RemoteServer = DSProviderConnection1
    Left = 288
    Top = 112
  end
end
