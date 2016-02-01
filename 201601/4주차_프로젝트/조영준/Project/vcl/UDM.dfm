object DM: TDM
  OldCreateOrder = False
  Height = 360
  Width = 490
  object SQLConnection1: TSQLConnection
    DriverName = 'DataSnap'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXDataSnap'
      'HostName=localhost'
      'Port=222'
      'CommunicationProtocol=tcp/ip'
      'DatasnapContext=datasnap/'
      
        'DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland' +
        '.Data.DbxClientDriver,Version=23.0.0.0,Culture=neutral,PublicKey' +
        'Token=91d62ebb5b0d1b1b'
      'Filters={}')
    Connected = True
    Left = 40
    Top = 32
  end
  object DSProviderConnection1: TDSProviderConnection
    ServerClassName = 'TServerMethods1'
    Connected = True
    SQLConnection = SQLConnection1
    Left = 121
    Top = 32
  end
  object deptDataSource: TDataSource
    DataSet = deptDataSet
    Left = 128
    Top = 104
  end
  object deptDataSet: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'deptProvider'
    RemoteServer = DSProviderConnection1
    Left = 40
    Top = 104
    object deptDataSetDEPT_NUM: TWideStringField
      FieldName = 'DEPT_NUM'
      Origin = 'DEPT_NUM'
      Required = True
      Size = 40
    end
    object deptDataSetDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Origin = 'DEPT_NAME'
      Size = 80
    end
  end
  object studentDataSet: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'SDT_NAME'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 80
      end
      item
        Name = 'SDT_NUM'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'SDT_PW'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'SDT_DEPTNUM'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'SDT_YEAR'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'SDT_STATE'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 80
      end>
    IndexDefs = <
      item
        Name = 'sdt_Year'
      end
      item
        Name = 'sdt_deptnum'
      end
      item
        Name = 'sdt_state'
      end>
    Params = <>
    ProviderName = 'studentProvider'
    RemoteServer = DSProviderConnection1
    StoreDefs = True
    Left = 40
    Top = 176
    object studentDataSetSDT_NAME: TWideStringField
      FieldName = 'SDT_NAME'
      Origin = 'SDT_NAME'
      Required = True
      Size = 80
    end
    object studentDataSetSDT_NUM: TIntegerField
      FieldName = 'SDT_NUM'
      Origin = 'SDT_NUM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object studentDataSetSDT_PW: TWideStringField
      FieldName = 'SDT_PW'
      Origin = 'SDT_PW'
      Required = True
      Size = 40
    end
    object studentDataSetSDT_DEPTNUM: TWideStringField
      FieldName = 'SDT_DEPTNUM'
      Origin = 'SDT_DEPTNUM'
      Required = True
      Size = 40
    end
    object studentDataSetSDT_YEAR: TIntegerField
      FieldName = 'SDT_YEAR'
      Origin = 'SDT_YEAR'
      Required = True
    end
    object studentDataSetSDT_STATE: TWideStringField
      FieldName = 'SDT_STATE'
      Origin = 'SDT_STATE'
      Required = True
      Size = 80
    end
  end
  object studentDataSource: TDataSource
    DataSet = studentDataSet
    Left = 128
    Top = 176
  end
  object noticeDataSet: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'NotProvider'
    RemoteServer = DSProviderConnection1
    Left = 296
    Top = 64
    object noticeDataSetNOT_SEQ: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'NOT_SEQ'
      Origin = 'NOT_SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object noticeDataSetNOT_TITLE: TWideStringField
      FieldName = 'NOT_TITLE'
      Origin = 'NOT_TITLE'
      Required = True
      Size = 80
    end
    object noticeDataSetNOT_MEMO: TWideStringField
      FieldName = 'NOT_MEMO'
      Origin = 'NOT_MEMO'
      Required = True
      Size = 800
    end
  end
  object PROFESSORDataSet: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'PROFESSORProvider'
    RemoteServer = DSProviderConnection1
    Left = 296
    Top = 120
  end
  object SUBJECTDataSet: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'SUBJECTProvider'
    RemoteServer = DSProviderConnection1
    Left = 296
    Top = 176
  end
  object noticeSource: TDataSource
    DataSet = noticeDataSet
    Left = 368
    Top = 64
  end
  object PROFESSORSource: TDataSource
    DataSet = PROFESSORDataSet
    Left = 368
    Top = 120
  end
  object SUBJECTSource: TDataSource
    DataSet = SUBJECTDataSet
    Left = 368
    Top = 176
  end
  object signupSource: TDataSource
    DataSet = SignDataSet
    Left = 368
    Top = 248
  end
  object SignDataSet: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'A'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'B'
        ParamType = ptInput
      end>
    ProviderName = 'vclsignProvider'
    RemoteServer = DSProviderConnection1
    Left = 304
    Top = 248
    object SignDataSetSIGN_STDNAME: TWideStringField
      FieldName = 'SIGN_STDNAME'
      Origin = 'SIGN_STDNAME'
      Required = True
      Size = 80
    end
    object SignDataSetSIGN_SDTNUM: TIntegerField
      FieldName = 'SIGN_SDTNUM'
      Origin = 'SIGN_SDTNUM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
end
