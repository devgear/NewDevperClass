object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 857
  Width = 739
  object SQLConnection1: TSQLConnection
    DriverName = 'DataSnap'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=DataSnap'
      'HostName=192.168.1.46'
      'Port=211'
      'CommunicationProtocol=tcp/ip')
    Connected = True
    Left = 64
    Top = 40
  end
  object DSProviderConnection1: TDSProviderConnection
    ServerClassName = 'TFlowerServerMethods'
    Connected = True
    SQLConnection = SQLConnection1
    Left = 176
    Top = 40
  end
  object Member_ClientDataSet: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'Member_DataSetProvider'
    RemoteServer = DSProviderConnection1
    Left = 176
    Top = 128
    object Member_ClientDataSetMEMBER_SEQ: TIntegerField
      Alignment = taCenter
      AutoGenerateValue = arAutoInc
      FieldName = 'MEMBER_SEQ'
      Origin = 'MEMBER_SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Member_ClientDataSetMEMBER_NAME: TWideStringField
      Alignment = taCenter
      FieldName = 'MEMBER_NAME'
      Origin = 'MEMBER_NAME'
      Required = True
      Size = 120
    end
    object Member_ClientDataSetMEMBER_ADDRESS: TWideStringField
      Alignment = taCenter
      FieldName = 'MEMBER_ADDRESS'
      Origin = 'MEMBER_ADDRESS'
      Size = 400
    end
    object Member_ClientDataSetMEMBER_PHONENUMBER: TWideStringField
      Alignment = taCenter
      FieldName = 'MEMBER_PHONENUMBER'
      Origin = 'MEMBER_PHONENUMBER'
      Size = 120
    end
    object Member_ClientDataSetMEMBER_BIRTHDAY: TSQLTimeStampField
      Alignment = taCenter
      FieldName = 'MEMBER_BIRTHDAY'
      Origin = 'MEMBER_BIRTHDAY'
    end
    object Member_ClientDataSetMEMBER_POINT: TIntegerField
      Alignment = taCenter
      FieldName = 'MEMBER_POINT'
      Origin = 'MEMBER_POINT'
    end
    object Member_ClientDataSetMEMBER_LASTVISIT: TSQLTimeStampField
      Alignment = taCenter
      FieldName = 'MEMBER_LASTVISIT'
      Origin = 'MEMBER_LASTVISIT'
      DisplayFormat = 'yyyy'#45380' mm'#50900' dd'#51068
      EditMask = '!9999/99/00;1;_'
    end
  end
  object Member_DataSource: TDataSource
    DataSet = Member_ClientDataSet
    Left = 344
    Top = 128
  end
  object Flower_List_ClientDataSet: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'Flower_List_DataSetProvider'
    RemoteServer = DSProviderConnection1
    Left = 176
    Top = 208
    object Flower_List_ClientDataSetLIST_SEQ: TIntegerField
      Alignment = taCenter
      AutoGenerateValue = arAutoInc
      FieldName = 'LIST_SEQ'
      Origin = 'LIST_SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Flower_List_ClientDataSetLIST_NAME: TWideStringField
      Alignment = taCenter
      FieldName = 'LIST_NAME'
      Origin = 'LIST_NAME'
      Required = True
      Size = 120
    end
    object Flower_List_ClientDataSetLIST_QTY: TWideStringField
      Alignment = taCenter
      FieldName = 'LIST_QTY'
      Origin = 'LIST_QTY'
      Size = 80
    end
    object Flower_List_ClientDataSetLIST_PRICE: TIntegerField
      Alignment = taCenter
      FieldName = 'LIST_PRICE'
      Origin = 'LIST_PRICE'
      DisplayFormat = '#,##0'#50896
    end
    object Flower_List_ClientDataSetLIST_POINT: TIntegerField
      Alignment = taCenter
      FieldName = 'LIST_POINT'
      Origin = 'LIST_POINT'
    end
    object Flower_List_ClientDataSetLIST_IMAGE: TBlobField
      Alignment = taCenter
      FieldName = 'LIST_IMAGE'
      Origin = 'LIST_IMAGE'
    end
    object Flower_List_ClientDataSetLIST_SCIENTIFICNAME: TWideStringField
      Alignment = taCenter
      FieldName = 'LIST_SCIENTIFICNAME'
      Origin = 'LIST_SCIENTIFICNAME'
      Size = 80
    end
    object Flower_List_ClientDataSetLIST_AREA: TWideStringField
      Alignment = taCenter
      FieldName = 'LIST_AREA'
      Origin = 'LIST_AREA'
      Size = 120
    end
    object Flower_List_ClientDataSetLIST_PERIOD: TWideStringField
      Alignment = taCenter
      FieldName = 'LIST_PERIOD'
      Origin = 'LIST_PERIOD'
      Size = 120
    end
    object Flower_List_ClientDataSetLIST_LANGUAGE: TWideStringField
      Alignment = taCenter
      FieldName = 'LIST_LANGUAGE'
      Origin = 'LIST_LANGUAGE'
      Size = 200
    end
  end
  object Flower_List_DataSource: TDataSource
    DataSet = Flower_List_ClientDataSet
    Left = 344
    Top = 208
  end
  object Reservation_ClientDataSet: TClientDataSet
    Active = True
    Aggregates = <>
    Filtered = True
    Params = <>
    ProviderName = 'Reservation_DataSetProvider'
    RemoteServer = DSProviderConnection1
    Left = 176
    Top = 288
    object Reservation_ClientDataSetRESERVATION_SEQ: TIntegerField
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
  object Reservation_DataSource: TDataSource
    DataSet = Reservation_ClientDataSet
    Left = 344
    Top = 288
  end
  object Reservation_Join_ClientDataSet: TClientDataSet
    Active = True
    Aggregates = <>
    Filtered = True
    Params = <>
    ProviderName = 'Reservation_Join_DataSetProvider'
    RemoteServer = DSProviderConnection1
    Left = 176
    Top = 368
  end
  object Reservation_Join_DataSource: TDataSource
    DataSet = Reservation_Join_ClientDataSet
    Left = 344
    Top = 368
  end
  object Order_ClientDataSet: TClientDataSet
    Active = True
    Aggregates = <>
    Filtered = True
    Params = <>
    ProviderName = 'Order_DataSetProvider'
    RemoteServer = DSProviderConnection1
    Left = 176
    Top = 448
  end
  object Order_DataSource: TDataSource
    DataSet = Order_ClientDataSet
    Left = 344
    Top = 448
  end
  object Order_Join_ClientDataSet: TClientDataSet
    Active = True
    Aggregates = <>
    Filtered = True
    Params = <>
    ProviderName = 'Order_Join_DataSetProvider'
    RemoteServer = DSProviderConnection1
    Left = 176
    Top = 528
  end
  object Order_Join_DataSource: TDataSource
    DataSet = Order_Join_ClientDataSet
    Left = 344
    Top = 528
  end
end
