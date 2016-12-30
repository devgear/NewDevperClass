object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 384
  Width = 350
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
        '.Data.DbxClientDriver,Version=23.0.0.0,Culture=neutral,PublicKey' +
        'Token=91d62ebb5b0d1b1b')
    Left = 40
    Top = 24
  end
  object DSProviderConnection1: TDSProviderConnection
    ServerClassName = 'TServerMethods'
    SQLConnection = SQLConnection1
    Left = 40
    Top = 80
  end
  object Book_Log_CDS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBooklog'
    RemoteServer = DSProviderConnection1
    Left = 40
    Top = 136
    object Book_Log_CDSBOOK_SEQ: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'BOOK_SEQ'
      Origin = 'BOOK_SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Book_Log_CDSBOOK_TITLE: TWideStringField
      FieldName = 'BOOK_TITLE'
      Origin = 'BOOK_TITLE'
      Required = True
      Size = 200
    end
    object Book_Log_CDSBOOK_AUTHOR: TWideStringField
      FieldName = 'BOOK_AUTHOR'
      Origin = 'BOOK_AUTHOR'
      Required = True
      Size = 120
    end
    object Book_Log_CDSBOOK_PUBLISHER: TWideStringField
      FieldName = 'BOOK_PUBLISHER'
      Origin = 'BOOK_PUBLISHER'
      Size = 120
    end
    object Book_Log_CDSBOOK_PHONE: TWideStringField
      FieldName = 'BOOK_PHONE'
      Origin = 'BOOK_PHONE'
      Size = 80
    end
    object Book_Log_CDSBOOK_WEBSITE: TWideStringField
      FieldName = 'BOOK_WEBSITE'
      Origin = 'BOOK_WEBSITE'
      Size = 400
    end
    object Book_Log_CDSBOOK_COMMENT: TWideStringField
      FieldName = 'BOOK_COMMENT'
      Origin = 'BOOK_COMMENT'
      Size = 4000
    end
    object Book_Log_CDSBOOK_THUMB: TBlobField
      FieldName = 'BOOK_THUMB'
      Origin = 'BOOK_THUMB'
    end
    object Book_Log_CDSBOOK_IMAGE: TBlobField
      FieldName = 'BOOK_IMAGE'
      Origin = 'BOOK_IMAGE'
    end
  end
end
