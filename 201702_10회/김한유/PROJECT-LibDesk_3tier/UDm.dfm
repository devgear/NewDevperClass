object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 491
  Width = 654
  object LibConnection: TSQLConnection
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
        'Token=91d62ebb5b0d1b1b'
      'Filters={}')
    Connected = True
    Left = 48
    Top = 56
    UniqueId = '{8C55F58F-977A-420F-BE9B-A7C820182DEF}'
  end
  object DSProviderConnection1: TDSProviderConnection
    ServerClassName = 'TServerMethods1'
    Connected = True
    SQLConnection = LibConnection
    Left = 184
    Top = 56
  end
  object Cl_qryUser: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'qryUser_provider'
    RemoteServer = DSProviderConnection1
    Left = 312
    Top = 56
    object Cl_qryUserUSER_SEQ: TAutoIncField
      FieldName = 'USER_SEQ'
      Origin = 'USER_SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
    end
    object Cl_qryUserUSER_NAME: TWideStringField
      FieldName = 'USER_NAME'
      Origin = 'USER_NAME'
      Required = True
      Size = 120
    end
    object Cl_qryUserUSER_ID: TWideStringField
      FieldName = 'USER_ID'
      Origin = 'USER_ID'
      Required = True
      Size = 80
    end
    object Cl_qryUserUSER_PW: TStringField
      FieldName = 'USER_PW'
      Origin = 'USER_PW'
      Size = 15
    end
    object Cl_qryUserUSER_PHONE: TStringField
      FieldName = 'USER_PHONE'
      Origin = 'USER_PHONE'
      Size = 15
    end
    object Cl_qryUserUSER_MAIL: TWideStringField
      FieldName = 'USER_MAIL'
      Origin = 'USER_MAIL'
      Size = 1020
    end
    object Cl_qryUserUSER_OUT_YN: TStringField
      FieldName = 'USER_OUT_YN'
      Origin = 'USER_OUT_YN'
      FixedChar = True
      Size = 1
    end
  end
  object CL_qryCheckLogin: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptInput
        Size = 15
      end
      item
        DataType = ftString
        Name = 'PW'
        ParamType = ptInput
        Size = 15
      end>
    ProviderName = 'qryCheckLogin_Provider'
    RemoteServer = DSProviderConnection1
    Left = 408
    Top = 56
    object CL_qryCheckLoginUSER_SEQ: TIntegerField
      FieldName = 'USER_SEQ'
      Origin = 'USER_SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CL_qryCheckLoginUSER_NAME: TWideStringField
      FieldName = 'USER_NAME'
      Origin = 'USER_NAME'
      Required = True
      Size = 120
    end
    object CL_qryCheckLoginUSER_ID: TWideStringField
      FieldName = 'USER_ID'
      Origin = 'USER_ID'
      Required = True
      Size = 80
    end
    object CL_qryCheckLoginUSER_PW: TStringField
      FieldName = 'USER_PW'
      Origin = 'USER_PW'
      Size = 15
    end
    object CL_qryCheckLoginUSER_PHONE: TStringField
      FieldName = 'USER_PHONE'
      Origin = 'USER_PHONE'
      Size = 15
    end
    object CL_qryCheckLoginUSER_MAIL: TWideStringField
      FieldName = 'USER_MAIL'
      Origin = 'USER_MAIL'
      Size = 1020
    end
    object CL_qryCheckLoginUSER_OUT_YN: TStringField
      FieldName = 'USER_OUT_YN'
      Origin = 'USER_OUT_YN'
      FixedChar = True
      Size = 1
    end
  end
  object UserSource: TDataSource
    DataSet = Cl_qryUser
    Left = 320
    Top = 136
  end
  object CheckLoginSource: TDataSource
    DataSet = CL_qryCheckLogin
    Left = 408
    Top = 128
  end
  object Cl_DuplicateID: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'qryDuplicatedID_provider'
    RemoteServer = DSProviderConnection1
    Left = 536
    Top = 56
    object Cl_DuplicateIDUSER_ID: TWideStringField
      FieldName = 'USER_ID'
      Origin = 'USER_ID'
      Required = True
      Size = 80
    end
  end
  object DuplicatedIDSource: TDataSource
    DataSet = Cl_DuplicateID
    Left = 536
    Top = 128
  end
  object Cl_qryLibAddress: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'qryLibAddress_Provider'
    RemoteServer = DSProviderConnection1
    Left = 56
    Top = 232
    object Cl_qryLibAddressLIBADDRESS: TWideStringField
      FieldName = 'LIBADDRESS'
      Origin = 'LIBADDRESS'
      ProviderFlags = []
      ReadOnly = True
      Size = 120
    end
  end
  object LibAddressSource: TDataSource
    DataSet = Cl_qryLibAddress
    Left = 56
    Top = 304
  end
  object Cl_qryLibName: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'LIBADDRESS'
    MasterFields = 'LIBADDRESS'
    MasterSource = LibAddressSource
    PacketRecords = 0
    Params = <>
    ProviderName = 'qryLib_provider'
    RemoteServer = DSProviderConnection1
    Left = 208
    Top = 240
    object Cl_qryLibNameLIB_SEQ: TAutoIncField
      FieldName = 'LIB_SEQ'
      Origin = 'LIB_SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
    end
    object Cl_qryLibNameLIBNAME: TWideStringField
      FieldName = 'LIBNAME'
      Origin = 'LIBNAME'
      Required = True
      Size = 80
    end
    object Cl_qryLibNameLIBADDRESS: TWideStringField
      FieldName = 'LIBADDRESS'
      Origin = 'LIBADDRESS'
      Required = True
      Size = 120
    end
    object Cl_qryLibNameLIBOPEN: TTimeField
      FieldName = 'LIBOPEN'
      Origin = 'LIBOPEN'
    end
    object Cl_qryLibNameLIBCLOSE: TTimeField
      FieldName = 'LIBCLOSE'
      Origin = 'LIBCLOSE'
    end
    object Cl_qryLibNameLIBHOLIDAY: TDateField
      FieldName = 'LIBHOLIDAY'
      Origin = 'LIBHOLIDAY'
    end
  end
  object LibNameSource: TDataSource
    DataSet = Cl_qryLibName
    Left = 208
    Top = 304
  end
  object RentSource: TDataSource
    DataSet = Cl_qryRent
    Left = 368
    Top = 304
  end
  object Cl_qryRent: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'qryRent_provider'
    RemoteServer = DSProviderConnection1
    Left = 360
    Top = 240
  end
  object Cl_qrySeat: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'LibSeq'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'date'
        ParamType = ptInput
      end>
    ProviderName = 'qrySeat_Provider'
    RemoteServer = DSProviderConnection1
    Left = 480
    Top = 232
    object Cl_qrySeatRENT_SEATNUM: TIntegerField
      FieldName = 'RENT_SEATNUM'
      Origin = 'RENT_SEATNUM'
    end
  end
  object qrySeat_Source: TDataSource
    DataSet = Cl_qrySeat
    Left = 472
    Top = 296
  end
  object Cl_DupSeat: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'qryDupSeat_Provider'
    RemoteServer = DSProviderConnection1
    Left = 560
    Top = 224
  end
  object qryDupSeat_source: TDataSource
    DataSet = Cl_DupSeat
    Left = 576
    Top = 288
  end
  object Cl_qryTalking: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'qryTalking_Provider'
    RemoteServer = DSProviderConnection1
    Left = 88
    Top = 392
  end
  object qryTalking_Source: TDataSource
    DataSet = Cl_qryTalking
    Left = 88
    Top = 440
  end
end
