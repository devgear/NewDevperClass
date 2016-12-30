object Dm: TDm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 303
  Width = 506
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
    Left = 95
    Top = 56
    UniqueId = '{3657BF2F-EC1F-48F6-9E30-968A8ECE51BE}'
  end
  object DSProviderConnection1: TDSProviderConnection
    ServerClassName = 'TServerMethods1'
    Connected = True
    SQLConnection = SQLConnection1
    Left = 216
    Top = 56
  end
  object CafeInfoDataSet: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'Cafe_Table_Provider'
    RemoteServer = DSProviderConnection1
    Left = 288
    Top = 144
    object CafeInfoDataSetC_NAME: TWideStringField
      FieldName = 'C_NAME'
      Required = True
      Size = 80
    end
    object CafeInfoDataSetC_LOCA: TWideStringField
      FieldName = 'C_LOCA'
      Required = True
      Size = 80
    end
    object CafeInfoDataSetC_LAT: TSingleField
      FieldName = 'C_LAT'
      Required = True
    end
    object CafeInfoDataSetC_LONG: TSingleField
      FieldName = 'C_LONG'
      Required = True
    end
  end
  object GetReserveDataSet: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'PC_Query_Provider'
    RemoteServer = DSProviderConnection1
    Left = 296
    Top = 224
    object GetReserveDataSetR_TOTAL_AMOUNT: TIntegerField
      FieldName = 'R_TOTAL_AMOUNT'
    end
    object GetReserveDataSetR_ARRIVAL: TSQLTimeStampField
      FieldName = 'R_ARRIVAL'
      Required = True
    end
    object GetReserveDataSetR_PAYMENT_PLAN: TWideStringField
      FieldName = 'R_PAYMENT_PLAN'
      Size = 80
    end
    object GetReserveDataSetU_LAT: TSingleField
      FieldName = 'U_LAT'
    end
    object GetReserveDataSetU_LONG: TSingleField
      FieldName = 'U_LONG'
    end
    object GetReserveDataSetR_COMMENT: TWideStringField
      FieldName = 'R_COMMENT'
      Size = 400
    end
    object GetReserveDataSetU_ID: TWideStringField
      FieldName = 'U_ID'
      Required = True
      Size = 64
    end
    object GetReserveDataSetU_NAME: TWideStringField
      FieldName = 'U_NAME'
      Required = True
      Size = 80
    end
    object GetReserveDataSetU_PHONENUM: TWideStringField
      FieldName = 'U_PHONENUM'
      Size = 60
    end
    object GetReserveDataSetU_GENDER: TBooleanField
      FieldName = 'U_GENDER'
    end
    object GetReserveDataSetR_NUM: TIntegerField
      FieldName = 'R_NUM'
    end
  end
  object GetReserveDetailDataSet: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'SQL_ReserveDetail_Check_Provider'
    RemoteServer = DSProviderConnection1
    Left = 320
    Top = 72
    object GetReserveDetailDataSetR_NUM: TIntegerField
      FieldName = 'R_NUM'
      Required = True
    end
    object GetReserveDetailDataSetM_NAME: TWideStringField
      FieldName = 'M_NAME'
      Required = True
      Size = 120
    end
    object GetReserveDetailDataSetRL_QUANTITY: TIntegerField
      FieldName = 'RL_QUANTITY'
    end
    object GetReserveDetailDataSetRL_PRICE: TIntegerField
      FieldName = 'RL_PRICE'
    end
    object GetReserveDetailDataSetM_PRICE: TIntegerField
      FieldName = 'M_PRICE'
    end
    object GetReserveDetailDataSetM_INFO: TWideStringField
      FieldName = 'M_INFO'
      Size = 600
    end
    object GetReserveDetailDataSetM_PHOTO: TBlobField
      FieldName = 'M_PHOTO'
      Size = 1
    end
  end
  object CafeInfoDataSet_Source: TDataSource
    DataSet = CafeInfoDataSet
    Left = 416
    Top = 144
  end
end
