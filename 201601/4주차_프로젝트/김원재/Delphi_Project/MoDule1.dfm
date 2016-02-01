object DM: TDM
  OldCreateOrder = False
  Height = 821
  Width = 35
  object SQLConnection1: TSQLConnection
    DriverName = 'DataSnap'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DbxDatasnap'
      'HostName=localhost'
      'Port=211'
      'CommunicationProtocol=tcp/ip'
      'DatasnapContext=datasnap/'
      
        'DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland' +
        '.Data.DbxClientDriver,Version=23.0.0.0,Culture=neutral,PublicKey' +
        'Token=91d62ebb5b0d1b1b'
      'Filters={}')
    AfterConnect = SQLConnection1AfterConnect
    Connected = True
    Left = 40
    Top = 8
    UniqueId = '{EAB2C53F-4C11-4187-B40A-87756BE547A4}'
  end
  object DSProviderConnection1: TDSProviderConnection
    ServerClassName = 'TServerMethods1'
    Connected = True
    SQLConnection = SQLConnection1
    Left = 151
    Top = 8
  end
  object Client_CDS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 743
    Top = 392
  end
  object SERCH_MEMBER_CDS: TClientDataSet
    Active = True
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DataSetProvider2'
    RemoteServer = DSProviderConnection1
    Left = 64
    Top = 128
    object SERCH_MEMBER_CDSJISA_CODE: TWideStringField
      FieldName = 'JISA_CODE'
      Origin = 'JISA_CODE'
      Required = True
      Size = 40
    end
    object SERCH_MEMBER_CDSM_CODE: TWideStringField
      FieldName = 'M_CODE'
      Origin = 'M_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object SERCH_MEMBER_CDSM_NAME: TWideStringField
      FieldName = 'M_NAME'
      Origin = 'M_NAME'
      Size = 80
    end
    object SERCH_MEMBER_CDSM_DEPTCODE: TWideStringField
      FieldName = 'M_DEPTCODE'
      Origin = 'M_DEPTCODE'
      Size = 40
    end
    object SERCH_MEMBER_CDSM_DEPT: TWideStringField
      FieldName = 'M_DEPT'
      Origin = 'M_DEPT'
      Size = 80
    end
    object SERCH_MEMBER_CDSM_PHONE: TWideStringField
      FieldName = 'M_PHONE'
      Origin = 'M_PHONE'
      Size = 120
    end
    object SERCH_MEMBER_CDSM_ADDRESS: TWideStringField
      FieldName = 'M_ADDRESS'
      Origin = 'M_ADDRESS'
      Size = 200
    end
    object SERCH_MEMBER_CDSM_MAIL: TWideStringField
      FieldName = 'M_MAIL'
      Origin = 'M_MAIL'
      Size = 120
    end
  end
  object MEMBER_DS: TDataSource
    DataSet = SERCH_MEMBER_CDS
    Left = 168
    Top = 128
  end
  object SERCH_GAMAENG_CDS: TClientDataSet
    Active = True
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DataSetProvider3'
    RemoteServer = DSProviderConnection1
    Left = 64
    Top = 264
    object SERCH_GAMAENG_CDSG_CODE: TWideStringField
      FieldName = 'G_CODE'
      Origin = 'G_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object SERCH_GAMAENG_CDSG_NAME: TWideStringField
      FieldName = 'G_NAME'
      Origin = 'G_NAME'
      Size = 80
    end
    object SERCH_GAMAENG_CDSG_CONTNAME: TWideStringField
      FieldName = 'G_CONTNAME'
      Origin = 'G_CONTNAME'
      Size = 40
    end
    object SERCH_GAMAENG_CDSG_KIND: TWideStringField
      FieldName = 'G_KIND'
      Origin = 'G_KIND'
      Size = 120
    end
    object SERCH_GAMAENG_CDSG_PHONE: TWideStringField
      FieldName = 'G_PHONE'
      Origin = 'G_PHONE'
      Size = 120
    end
    object SERCH_GAMAENG_CDSG_TEL: TWideStringField
      FieldName = 'G_TEL'
      Origin = 'G_TEL'
      Size = 120
    end
    object SERCH_GAMAENG_CDSG_FAX: TWideStringField
      FieldName = 'G_FAX'
      Origin = 'G_FAX'
      Size = 120
    end
    object SERCH_GAMAENG_CDSG_ADDRESS: TWideStringField
      FieldName = 'G_ADDRESS'
      Origin = 'G_ADDRESS'
      Size = 200
    end
    object SERCH_GAMAENG_CDSG_MAIL: TWideStringField
      FieldName = 'G_MAIL'
      Origin = 'G_MAIL'
      Size = 120
    end
  end
  object GAMAENG_DS: TDataSource
    DataSet = SERCH_GAMAENG_CDS
    Left = 168
    Top = 264
  end
  object MEMBER_Q_DS: TDataSource
    DataSet = MEMBER_Q_CDS
    Left = 368
    Top = 128
  end
  object MEMBER_Q_CDS: TClientDataSet
    Active = True
    Aggregates = <>
    AggregatesActive = True
    Params = <
      item
        DataType = ftWideString
        Name = 'CODE'
        ParamType = ptInput
        Size = 40
      end>
    ProviderName = 'MQ_DataSetProvider'
    RemoteServer = DSProviderConnection1
    Left = 264
    Top = 128
  end
  object GAMAENG_Q_CDS: TClientDataSet
    Active = True
    Aggregates = <>
    AggregatesActive = True
    Params = <
      item
        DataType = ftWideString
        Name = 'CODE'
        ParamType = ptInput
        Size = 40
      end>
    ProviderName = 'GQ_DataSetProvider'
    RemoteServer = DSProviderConnection1
    Left = 264
    Top = 264
  end
  object GAMAENG_Q_DS: TDataSource
    DataSet = GAMAENG_Q_CDS
    Left = 368
    Top = 264
  end
  object Info_ROOM_CDS: TClientDataSet
    Active = True
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'R_DataSetProvider'
    RemoteServer = DSProviderConnection1
    Left = 64
    Top = 384
    object Info_ROOM_CDSJISA_CODE: TWideStringField
      FieldName = 'JISA_CODE'
      Origin = 'JISA_CODE'
      Required = True
      Size = 40
    end
    object Info_ROOM_CDSRM_CODE: TWideStringField
      FieldName = 'RM_CODE'
      Origin = 'RM_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object Info_ROOM_CDSRM_NAME: TWideStringField
      FieldName = 'RM_NAME'
      Origin = 'RM_NAME'
      Size = 80
    end
    object Info_ROOM_CDSRM_SIZE: TWideStringField
      FieldName = 'RM_SIZE'
      Origin = 'RM_SIZE'
      Size = 40
    end
    object Info_ROOM_CDSRM_CHAIR: TIntegerField
      FieldName = 'RM_CHAIR'
      Origin = 'RM_CHAIR'
    end
    object Info_ROOM_CDSRENT_LIST: TWideStringField
      FieldName = 'RENT_LIST'
      Origin = 'RENT_LIST'
      Required = True
      Size = 120
    end
    object Info_ROOM_CDSRM_FLOOR: TWideStringField
      FieldName = 'RM_FLOOR'
      Origin = 'RM_FLOOR'
      Size = 40
    end
    object Info_ROOM_CDSRM_TOTAL: TWideStringField
      FieldName = 'RM_TOTAL'
      Origin = 'RM_TOTAL'
      Size = 80
    end
    object Info_ROOM_CDSRM_IMG: TBlobField
      FieldName = 'RM_IMG'
      Origin = 'RM_IMG'
    end
    object Info_ROOM_CDSRM_GAEK1: TWideStringField
      FieldName = 'RM_GAEK1'
      Origin = 'RM_GAEK1'
      Size = 80
    end
    object Info_ROOM_CDSRM_JAJE1: TIntegerField
      FieldName = 'RM_JAJE1'
      Origin = 'RM_JAJE1'
    end
    object Info_ROOM_CDSRM_JAJE2: TIntegerField
      FieldName = 'RM_JAJE2'
      Origin = 'RM_JAJE2'
    end
    object Info_ROOM_CDSRM_JAJE3: TIntegerField
      FieldName = 'RM_JAJE3'
      Origin = 'RM_JAJE3'
    end
    object Info_ROOM_CDSRM_FIMG: TBlobField
      Alignment = taCenter
      FieldName = 'RM_FIMG'
      Origin = 'RM_FIMG'
    end
  end
  object ROOM_DS: TDataSource
    DataSet = Info_ROOM_CDS
    Left = 168
    Top = 384
  end
  object ROOM_Q_CDS: TClientDataSet
    Active = True
    Aggregates = <>
    AggregatesActive = True
    Params = <
      item
        DataType = ftWideString
        Name = 'CODE'
        ParamType = ptInput
        Size = 40
      end>
    ProviderName = 'RQ_DataSetProvider'
    RemoteServer = DSProviderConnection1
    Left = 264
    Top = 384
    object ROOM_Q_CDSJISA_CODE: TWideStringField
      FieldName = 'JISA_CODE'
      Origin = 'JISA_CODE'
      Required = True
      Size = 40
    end
    object ROOM_Q_CDSRM_CODE: TWideStringField
      FieldName = 'RM_CODE'
      Origin = 'RM_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object ROOM_Q_CDSRM_NAME: TWideStringField
      FieldName = 'RM_NAME'
      Origin = 'RM_NAME'
      Size = 80
    end
    object ROOM_Q_CDSRM_FLOOR: TWideStringField
      FieldName = 'RM_FLOOR'
      Origin = 'RM_FLOOR'
      Size = 40
    end
    object ROOM_Q_CDSRM_SIZE: TWideStringField
      FieldName = 'RM_SIZE'
      Origin = 'RM_SIZE'
      Size = 40
    end
    object ROOM_Q_CDSRM_CHAIR: TIntegerField
      FieldName = 'RM_CHAIR'
      Origin = 'RM_CHAIR'
    end
    object ROOM_Q_CDSRENT_LIST: TWideStringField
      FieldName = 'RENT_LIST'
      Origin = 'RENT_LIST'
      Required = True
      Size = 120
    end
    object ROOM_Q_CDSRM_GAEK1: TWideStringField
      FieldName = 'RM_GAEK1'
      Origin = 'RM_GAEK1'
      Size = 80
    end
    object ROOM_Q_CDSRM_JAJE1: TIntegerField
      FieldName = 'RM_JAJE1'
      Origin = 'RM_JAJE1'
    end
    object ROOM_Q_CDSRM_JAJE2: TIntegerField
      FieldName = 'RM_JAJE2'
      Origin = 'RM_JAJE2'
    end
    object ROOM_Q_CDSRM_JAJE3: TIntegerField
      FieldName = 'RM_JAJE3'
      Origin = 'RM_JAJE3'
    end
    object ROOM_Q_CDSRM_TOTAL: TWideStringField
      FieldName = 'RM_TOTAL'
      Origin = 'RM_TOTAL'
      Size = 80
    end
    object ROOM_Q_CDSRM_IMG: TBlobField
      FieldName = 'RM_IMG'
      Origin = 'RM_IMG'
    end
    object ROOM_Q_CDSRM_FIMG: TBlobField
      FieldName = 'RM_FIMG'
      Origin = 'RM_FIMG'
    end
  end
  object ROOM_Q_DS: TDataSource
    DataSet = ROOM_Q_CDS
    Left = 368
    Top = 384
  end
  object RESERVE_Q_CDS: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'DATE'
        ParamType = ptInput
        Size = 30
      end>
    ProviderName = 'RESQ_DataSetProvider'
    RemoteServer = DSProviderConnection1
    Left = 272
    Top = 472
    object RESERVE_Q_CDSRECORD_NUM: TIntegerField
      FieldName = 'RECORD_NUM'
      Origin = 'RECORD_NUM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object RESERVE_Q_CDSJISA_CODE: TWideStringField
      FieldName = 'JISA_CODE'
      Origin = 'JISA_CODE'
      Required = True
      Size = 40
    end
    object RESERVE_Q_CDSSIN_NAME: TWideStringField
      FieldName = 'SIN_NAME'
      Origin = 'SIN_NAME'
      Size = 80
    end
    object RESERVE_Q_CDSSIN_CODE: TWideStringField
      FieldName = 'SIN_CODE'
      Origin = 'SIN_CODE'
      Required = True
      Size = 120
    end
    object RESERVE_Q_CDSSIN_SONAME: TWideStringField
      FieldName = 'SIN_SONAME'
      Origin = 'SIN_SONAME'
      Size = 120
    end
    object RESERVE_Q_CDSSIN_SOKIND: TWideStringField
      FieldName = 'SIN_SOKIND'
      Origin = 'SIN_SOKIND'
      Size = 80
    end
    object RESERVE_Q_CDSSIN_TEL: TWideStringField
      FieldName = 'SIN_TEL'
      Origin = 'SIN_TEL'
      Size = 80
    end
    object RESERVE_Q_CDSSIN_FAX: TWideStringField
      FieldName = 'SIN_FAX'
      Origin = 'SIN_FAX'
      Size = 80
    end
    object RESERVE_Q_CDSSIN_MOBILE: TWideStringField
      FieldName = 'SIN_MOBILE'
      Origin = 'SIN_MOBILE'
      Size = 80
    end
    object RESERVE_Q_CDSSIN_ADD: TWideStringField
      FieldName = 'SIN_ADD'
      Origin = 'SIN_ADD'
      Required = True
      Size = 120
    end
    object RESERVE_Q_CDSSIN_MAIL: TWideStringField
      FieldName = 'SIN_MAIL'
      Origin = 'SIN_MAIL'
      Size = 80
    end
    object RESERVE_Q_CDSSIN_GITA: TWideStringField
      FieldName = 'SIN_GITA'
      Origin = 'SIN_GITA'
      Size = 120
    end
    object RESERVE_Q_CDSSIN_ROOMNAME: TWideStringField
      FieldName = 'SIN_ROOMNAME'
      Origin = 'SIN_ROOMNAME'
      Size = 80
    end
    object RESERVE_Q_CDSSIN_FL: TWideStringField
      FieldName = 'SIN_FL'
      Origin = 'SIN_FL'
      Size = 40
    end
    object RESERVE_Q_CDSSIN_HOSIL: TWideStringField
      FieldName = 'SIN_HOSIL'
      Origin = 'SIN_HOSIL'
      Size = 80
    end
    object RESERVE_Q_CDSSIN_CHAIR: TWideStringField
      FieldName = 'SIN_CHAIR'
      Origin = 'SIN_CHAIR'
      Size = 40
    end
    object RESERVE_Q_CDSSIN_DATE: TDateField
      FieldName = 'SIN_DATE'
      Origin = 'SIN_DATE'
      EditMask = '!9999/99/00;1;_'
    end
    object RESERVE_Q_CDSSIN_KIND: TWideStringField
      FieldName = 'SIN_KIND'
      Origin = 'SIN_KIND'
      Size = 80
    end
    object RESERVE_Q_CDSSIN_COUNT: TWideStringField
      FieldName = 'SIN_COUNT'
      Origin = 'SIN_COUNT'
      Size = 40
    end
    object RESERVE_Q_CDSSIN_USEJAJE: TWideStringField
      FieldName = 'SIN_USEJAJE'
      Origin = 'SIN_USEJAJE'
      Size = 120
    end
    object RESERVE_Q_CDSSIN_ROOMCOST: TWideStringField
      FieldName = 'SIN_ROOMCOST'
      Origin = 'SIN_ROOMCOST'
      Size = 80
    end
    object RESERVE_Q_CDSSIN_JAJECOST: TWideStringField
      FieldName = 'SIN_JAJECOST'
      Origin = 'SIN_JAJECOST'
      Size = 80
    end
    object RESERVE_Q_CDSSIN_TOTALCOST: TWideStringField
      FieldName = 'SIN_TOTALCOST'
      Origin = 'SIN_TOTALCOST'
      Size = 80
    end
  end
  object RESERVE_Q_DS: TDataSource
    DataSet = RESERVE_Q_CDS
    Left = 368
    Top = 472
  end
  object RES_CDS: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'RES_DataSetProvider'
    RemoteServer = DSProviderConnection1
    Left = 64
    Top = 600
    object RES_CDSRES_CODE: TIntegerField
      FieldName = 'RES_CODE'
      Origin = 'RES_CODE'
      Required = True
    end
    object RES_CDSRES_DATE: TDateField
      FieldName = 'RES_DATE'
      Origin = 'RES_DATE'
    end
    object RES_CDSRES_RMCODE: TWideStringField
      FieldName = 'RES_RMCODE'
      Origin = 'RES_RMCODE'
      Size = 80
    end
    object RES_CDSRES_RMNAME: TWideStringField
      FieldName = 'RES_RMNAME'
      Origin = 'RES_RMNAME'
      Size = 80
    end
  end
  object RES_DS: TDataSource
    DataSet = RES_CDS
    Left = 152
    Top = 600
  end
  object RESERVE_CDS: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'RESERVE_DataSetProvider'
    RemoteServer = DSProviderConnection1
    Left = 64
    Top = 472
    object RESERVE_CDSRECORD_NUM: TIntegerField
      FieldName = 'RECORD_NUM'
      Origin = 'RECORD_NUM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object RESERVE_CDSJISA_CODE: TWideStringField
      FieldName = 'JISA_CODE'
      Origin = 'JISA_CODE'
      Required = True
      Size = 40
    end
    object RESERVE_CDSSIN_NAME: TWideStringField
      FieldName = 'SIN_NAME'
      Origin = 'SIN_NAME'
      Size = 80
    end
    object RESERVE_CDSSIN_CODE: TWideStringField
      FieldName = 'SIN_CODE'
      Origin = 'SIN_CODE'
      Required = True
      Size = 120
    end
    object RESERVE_CDSSIN_SONAME: TWideStringField
      FieldName = 'SIN_SONAME'
      Origin = 'SIN_SONAME'
      Size = 120
    end
    object RESERVE_CDSSIN_SOKIND: TWideStringField
      FieldName = 'SIN_SOKIND'
      Origin = 'SIN_SOKIND'
      Size = 80
    end
    object RESERVE_CDSSIN_TEL: TWideStringField
      FieldName = 'SIN_TEL'
      Origin = 'SIN_TEL'
      Size = 80
    end
    object RESERVE_CDSSIN_FAX: TWideStringField
      FieldName = 'SIN_FAX'
      Origin = 'SIN_FAX'
      Size = 80
    end
    object RESERVE_CDSSIN_MOBILE: TWideStringField
      FieldName = 'SIN_MOBILE'
      Origin = 'SIN_MOBILE'
      Size = 80
    end
    object RESERVE_CDSSIN_ADD: TWideStringField
      FieldName = 'SIN_ADD'
      Origin = 'SIN_ADD'
      Required = True
      Size = 120
    end
    object RESERVE_CDSSIN_MAIL: TWideStringField
      FieldName = 'SIN_MAIL'
      Origin = 'SIN_MAIL'
      Size = 80
    end
    object RESERVE_CDSSIN_GITA: TWideStringField
      FieldName = 'SIN_GITA'
      Origin = 'SIN_GITA'
      Size = 120
    end
    object RESERVE_CDSSIN_ROOMNAME: TWideStringField
      FieldName = 'SIN_ROOMNAME'
      Origin = 'SIN_ROOMNAME'
      Size = 80
    end
    object RESERVE_CDSSIN_FL: TWideStringField
      FieldName = 'SIN_FL'
      Origin = 'SIN_FL'
      Size = 40
    end
    object RESERVE_CDSSIN_HOSIL: TWideStringField
      FieldName = 'SIN_HOSIL'
      Origin = 'SIN_HOSIL'
      Size = 80
    end
    object RESERVE_CDSSIN_CHAIR: TWideStringField
      FieldName = 'SIN_CHAIR'
      Origin = 'SIN_CHAIR'
      Size = 40
    end
    object RESERVE_CDSSIN_DATE: TDateField
      FieldName = 'SIN_DATE'
      Origin = 'SIN_DATE'
      EditMask = '!9999/99/00;1;_'
    end
    object RESERVE_CDSSIN_KIND: TWideStringField
      FieldName = 'SIN_KIND'
      Origin = 'SIN_KIND'
      Size = 80
    end
    object RESERVE_CDSSIN_COUNT: TWideStringField
      FieldName = 'SIN_COUNT'
      Origin = 'SIN_COUNT'
      Size = 40
    end
    object RESERVE_CDSSIN_USEJAJE: TWideStringField
      FieldName = 'SIN_USEJAJE'
      Origin = 'SIN_USEJAJE'
      Size = 120
    end
    object RESERVE_CDSSIN_ROOMCOST: TWideStringField
      FieldName = 'SIN_ROOMCOST'
      Origin = 'SIN_ROOMCOST'
      Size = 80
    end
    object RESERVE_CDSSIN_JAJECOST: TWideStringField
      FieldName = 'SIN_JAJECOST'
      Origin = 'SIN_JAJECOST'
      Size = 80
    end
    object RESERVE_CDSSIN_TOTALCOST: TWideStringField
      FieldName = 'SIN_TOTALCOST'
      Origin = 'SIN_TOTALCOST'
      Size = 80
    end
  end
  object RESERVE_DS: TDataSource
    DataSet = RESERVE_CDS
    Left = 160
    Top = 472
  end
end
