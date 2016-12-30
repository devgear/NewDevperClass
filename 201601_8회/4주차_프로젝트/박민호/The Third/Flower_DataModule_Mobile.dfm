object DataModule2: TDataModule2
  OldCreateOrder = False
  Height = 502
  Width = 749
  object SQLConnection1: TSQLConnection
    DriverName = 'DataSnap'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXDataSnap'
      'HostName=192.168.1.46'
      'Port=211'
      'CommunicationProtocol=tcp/ip'
      'DatasnapContext=datasnap/'
      
        'DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland' +
        '.Data.DbxClientDriver,Version=23.0.0.0,Culture=neutral,PublicKey' +
        'Token=91d62ebb5b0d1b1b'
      'Filters={}')
    Connected = True
    Left = 80
    Top = 48
    UniqueId = '{96C57177-E317-4735-AED9-7CE4D464DAD7}'
  end
  object DSProviderConnection1: TDSProviderConnection
    ServerClassName = 'TFlowerServerMethods'
    Connected = True
    SQLConnection = SQLConnection1
    Left = 200
    Top = 48
  end
  object Flower_List_ClientDataSet: TClientDataSet
    Active = True
    Aggregates = <>
    Filtered = True
    Params = <>
    ProviderName = 'Flower_List_DataSetProvider'
    RemoteServer = DSProviderConnection1
    Left = 200
    Top = 128
    object Flower_List_ClientDataSetLIST_SEQ: TIntegerField
      FieldName = 'LIST_SEQ'
      Origin = 'LIST_SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Flower_List_ClientDataSetLIST_NAME: TWideStringField
      FieldName = 'LIST_NAME'
      Origin = 'LIST_NAME'
      Required = True
      Size = 120
    end
    object Flower_List_ClientDataSetLIST_QTY: TWideStringField
      FieldName = 'LIST_QTY'
      Origin = 'LIST_QTY'
      Size = 80
    end
    object Flower_List_ClientDataSetLIST_PRICE: TIntegerField
      FieldName = 'LIST_PRICE'
      Origin = 'LIST_PRICE'
    end
    object Flower_List_ClientDataSetLIST_POINT: TIntegerField
      FieldName = 'LIST_POINT'
      Origin = 'LIST_POINT'
    end
    object Flower_List_ClientDataSetLIST_IMAGE: TBlobField
      FieldName = 'LIST_IMAGE'
      Origin = 'LIST_IMAGE'
    end
    object Flower_List_ClientDataSetLIST_SCIENTIFICNAME: TWideStringField
      FieldName = 'LIST_SCIENTIFICNAME'
      Origin = 'LIST_SCIENTIFICNAME'
      Size = 80
    end
    object Flower_List_ClientDataSetLIST_AREA: TWideStringField
      FieldName = 'LIST_AREA'
      Origin = 'LIST_AREA'
      Size = 120
    end
    object Flower_List_ClientDataSetLIST_PERIOD: TWideStringField
      FieldName = 'LIST_PERIOD'
      Origin = 'LIST_PERIOD'
      Size = 120
    end
    object Flower_List_ClientDataSetLIST_LANGUAGE: TWideStringField
      FieldName = 'LIST_LANGUAGE'
      Origin = 'LIST_LANGUAGE'
      Size = 200
    end
  end
  object Reservation_ClientDataSet: TClientDataSet
    Active = True
    Aggregates = <>
    Filtered = True
    Params = <>
    ProviderName = 'Reservation_DataSetProvider'
    RemoteServer = DSProviderConnection1
    OnNewRecord = Reservation_ClientDataSetNewRecord
    Left = 200
    Top = 272
    object Reservation_ClientDataSetRESERVATION_SEQ: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'RESERVATION_SEQ'
      Origin = 'RESERVATION_SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Reservation_ClientDataSetRESERVATION_DATE: TSQLTimeStampField
      FieldName = 'RESERVATION_DATE'
      Origin = 'RESERVATION_DATE'
    end
    object Reservation_ClientDataSetRESERVATION_TIME: TSQLTimeStampField
      FieldName = 'RESERVATION_TIME'
      Origin = 'RESERVATION_TIME'
    end
    object Reservation_ClientDataSetLIST_SEQ: TIntegerField
      FieldName = 'LIST_SEQ'
      Origin = 'LIST_SEQ'
      Required = True
    end
    object Reservation_ClientDataSetRESERVATION_QTY: TIntegerField
      FieldName = 'RESERVATION_QTY'
      Origin = 'RESERVATION_QTY'
    end
    object Reservation_ClientDataSetRESERVATION_NAME: TWideStringField
      FieldName = 'RESERVATION_NAME'
      Origin = 'RESERVATION_NAME'
      Size = 80
    end
    object Reservation_ClientDataSetRESERVATION_PHONENUMBER: TWideStringField
      FieldName = 'RESERVATION_PHONENUMBER'
      Origin = 'RESERVATION_PHONENUMBER'
      Size = 120
    end
    object Reservation_ClientDataSetRECIPIENT_NAME: TWideStringField
      FieldName = 'RECIPIENT_NAME'
      Origin = 'RECIPIENT_NAME'
      Size = 80
    end
    object Reservation_ClientDataSetRECIPIENT_PHONENUMBER: TWideStringField
      FieldName = 'RECIPIENT_PHONENUMBER'
      Origin = 'RECIPIENT_PHONENUMBER'
      Size = 120
    end
    object Reservation_ClientDataSetRECIPIENT_ADDRESS: TWideStringField
      FieldName = 'RECIPIENT_ADDRESS'
      Origin = 'RECIPIENT_ADDRESS'
      Size = 400
    end
    object Reservation_ClientDataSetRESERVATION_PRICE_TOTAL: TIntegerField
      FieldName = 'RESERVATION_PRICE_TOTAL'
      Origin = 'RESERVATION_PRICE_TOTAL'
    end
    object Reservation_ClientDataSetRESERVATION_ETC: TWideStringField
      FieldName = 'RESERVATION_ETC'
      Origin = 'RESERVATION_ETC'
      Size = 4000
    end
    object Reservation_ClientDataSetRECIPIENT_ETC: TWideStringField
      FieldName = 'RECIPIENT_ETC'
      Origin = 'RECIPIENT_ETC'
      Size = 4000
    end
    object Reservation_ClientDataSetRECEIVE_TYPE: TWideStringField
      FieldName = 'RECEIVE_TYPE'
      Origin = 'RECEIVE_TYPE'
      Size = 40
    end
    object Reservation_ClientDataSetPAYMENT_TYPE: TWideStringField
      FieldName = 'PAYMENT_TYPE'
      Origin = 'PAYMENT_TYPE'
      Size = 40
    end
  end
  object Flower_Main_ClientDataSet: TClientDataSet
    Active = True
    Aggregates = <>
    Filtered = True
    Params = <>
    ProviderName = 'Flower_List_DataSetProvider'
    RemoteServer = DSProviderConnection1
    Left = 200
    Top = 200
  end
  object Reserve_Query_ClientDataSet: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftWideString
        Name = 'NUMBER'
        ParamType = ptInput
        Size = 120
      end>
    ProviderName = 'reserve_Query_DataSetProvider'
    RemoteServer = DSProviderConnection1
    Left = 400
    Top = 264
    object Reserve_Query_ClientDataSetRESERVATION_SEQ: TIntegerField
      FieldName = 'RESERVATION_SEQ'
      Origin = 'RESERVATION_SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Reserve_Query_ClientDataSetRESERVATION_DATE: TSQLTimeStampField
      FieldName = 'RESERVATION_DATE'
      Origin = 'RESERVATION_DATE'
    end
    object Reserve_Query_ClientDataSetRESERVATION_TIME: TSQLTimeStampField
      FieldName = 'RESERVATION_TIME'
      Origin = 'RESERVATION_TIME'
    end
    object Reserve_Query_ClientDataSetLIST_SEQ: TIntegerField
      FieldName = 'LIST_SEQ'
      Origin = 'LIST_SEQ'
      Required = True
    end
    object Reserve_Query_ClientDataSetRESERVATION_QTY: TIntegerField
      FieldName = 'RESERVATION_QTY'
      Origin = 'RESERVATION_QTY'
    end
    object Reserve_Query_ClientDataSetRESERVATION_NAME: TWideStringField
      FieldName = 'RESERVATION_NAME'
      Origin = 'RESERVATION_NAME'
      Size = 80
    end
    object Reserve_Query_ClientDataSetRESERVATION_PHONENUMBER: TWideStringField
      FieldName = 'RESERVATION_PHONENUMBER'
      Origin = 'RESERVATION_PHONENUMBER'
      Size = 120
    end
    object Reserve_Query_ClientDataSetRECIPIENT_NAME: TWideStringField
      FieldName = 'RECIPIENT_NAME'
      Origin = 'RECIPIENT_NAME'
      Size = 80
    end
    object Reserve_Query_ClientDataSetRECIPIENT_PHONENUMBER: TWideStringField
      FieldName = 'RECIPIENT_PHONENUMBER'
      Origin = 'RECIPIENT_PHONENUMBER'
      Size = 120
    end
    object Reserve_Query_ClientDataSetRECIPIENT_ADDRESS: TWideStringField
      FieldName = 'RECIPIENT_ADDRESS'
      Origin = 'RECIPIENT_ADDRESS'
      Size = 400
    end
    object Reserve_Query_ClientDataSetRESERVATION_PRICE_TOTAL: TIntegerField
      FieldName = 'RESERVATION_PRICE_TOTAL'
      Origin = 'RESERVATION_PRICE_TOTAL'
    end
    object Reserve_Query_ClientDataSetRESERVATION_ETC: TWideStringField
      FieldName = 'RESERVATION_ETC'
      Origin = 'RESERVATION_ETC'
      Size = 4000
    end
    object Reserve_Query_ClientDataSetRECIPIENT_ETC: TWideStringField
      FieldName = 'RECIPIENT_ETC'
      Origin = 'RECIPIENT_ETC'
      Size = 4000
    end
    object Reserve_Query_ClientDataSetRECEIVE_TYPE: TWideStringField
      FieldName = 'RECEIVE_TYPE'
      Origin = 'RECEIVE_TYPE'
      Size = 40
    end
    object Reserve_Query_ClientDataSetPAYMENT_TYPE: TWideStringField
      FieldName = 'PAYMENT_TYPE'
      Origin = 'PAYMENT_TYPE'
      Size = 40
    end
  end
end
