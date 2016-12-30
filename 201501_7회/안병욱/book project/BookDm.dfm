object DataModule1: TDataModule1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 631
  Width = 402
  object DSProviderConnection1: TDSProviderConnection
    ServerClassName = 'TServerMethods1'
    Connected = True
    SQLConnection = SQLConnection1
    Left = 144
    Top = 24
  end
  object BookingSource: TDataSource
    DataSet = BookingDataSet
    Left = 272
    Top = 144
  end
  object MemberSource: TDataSource
    DataSet = MemberDataSet
    Left = 272
    Top = 200
  end
  object RentalSource: TDataSource
    DataSet = RentalDataSet
    Left = 272
    Top = 248
  end
  object RentalBookDataSource: TDataSource
    DataSet = RentalBookDataSet
    Left = 272
    Top = 320
  end
  object BookSource: TDataSource
    DataSet = BookDataSet
    Left = 272
    Top = 80
  end
  object BookingDataSet: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'BOOKINGNUM'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'BOOKINGNAME'
        DataType = ftWideString
        Size = 200
      end
      item
        Name = 'BOOKINGDATE'
        DataType = ftDate
      end
      item
        Name = 'BOOKNUM'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 80
      end>
    IndexDefs = <
      item
        Name = 'i_ID'
        Fields = 'ID'
      end>
    Params = <>
    ProviderName = 'BookingProvider'
    RemoteServer = DSProviderConnection1
    StoreDefs = True
    Left = 128
    Top = 144
    object BookingDataSetBOOKINGNUM: TIntegerField
      DisplayLabel = #50696#50557#48264#54840
      FieldName = 'BOOKINGNUM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object BookingDataSetBOOKINGNAME: TWideStringField
      DisplayLabel = #50696#50557#46020#49436#47749
      FieldName = 'BOOKINGNAME'
      Size = 200
    end
    object BookingDataSetBOOKINGDATE: TDateField
      DisplayLabel = #50696#50557#45216#51676
      FieldName = 'BOOKINGDATE'
    end
    object BookingDataSetBOOKNUM: TIntegerField
      DisplayLabel = #46020#49436#48264#54840
      FieldName = 'BOOKNUM'
      Required = True
    end
    object BookingDataSetID: TWideStringField
      FieldName = 'ID'
      Required = True
      Size = 80
    end
  end
  object MemberDataSet: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 80
      end
      item
        Name = 'JUMIN'
        DataType = ftWideString
        Size = 120
      end
      item
        Name = 'NAME'
        DataType = ftWideString
        Size = 120
      end
      item
        Name = 'AGE'
        DataType = ftWideString
        Size = 72
      end
      item
        Name = 'PHONE'
        DataType = ftWideString
        Size = 80
      end
      item
        Name = 'ADDRESS'
        DataType = ftWideString
        Size = 160
      end>
    IndexDefs = <
      item
        Name = 'i_ID'
        Fields = 'ID'
      end
      item
        Name = 'i_Name'
        Fields = 'Name'
      end>
    Params = <>
    ProviderName = 'MemberProvider'
    RemoteServer = DSProviderConnection1
    StoreDefs = True
    Left = 128
    Top = 208
    object MemberDataSetID: TWideStringField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 80
    end
    object MemberDataSetJUMIN: TWideStringField
      DisplayLabel = #51452#48124
      FieldName = 'JUMIN'
      Size = 120
    end
    object MemberDataSetNAME: TWideStringField
      DisplayLabel = #49457#47749
      FieldName = 'NAME'
      Size = 120
    end
    object MemberDataSetAGE: TWideStringField
      DisplayLabel = #45208#51060
      FieldName = 'AGE'
      Size = 72
    end
    object MemberDataSetPHONE: TWideStringField
      DisplayLabel = #50672#46973#52376
      FieldName = 'PHONE'
      Size = 80
    end
    object MemberDataSetADDRESS: TWideStringField
      DisplayLabel = #51452#49548
      FieldName = 'ADDRESS'
      Size = 160
    end
  end
  object RentalDataSet: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'RENTALNUM'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'RENTALDAY'
        DataType = ftDate
      end
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 80
      end>
    IndexDefs = <
      item
        Name = 'i_ID'
        Fields = 'ID'
      end>
    Params = <>
    ProviderName = 'RentalProvider'
    RemoteServer = DSProviderConnection1
    StoreDefs = True
    Left = 128
    Top = 264
    object RentalDataSetRENTALNUM: TIntegerField
      DisplayLabel = #45824#50668#48264#54840
      FieldName = 'RENTALNUM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object RentalDataSetRENTALDAY: TDateField
      DisplayLabel = #45824#50668#45216#51676
      FieldName = 'RENTALDAY'
    end
    object RentalDataSetID: TWideStringField
      FieldName = 'ID'
      Required = True
      Size = 80
    end
  end
  object RentalBookDataSet: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'RENTALBOOKNUM'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'PERIOD'
        DataType = ftWideString
        Size = 120
      end
      item
        Name = 'RENTALNUM'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'BOOKNUM'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'RETURNOK'
        DataType = ftBoolean
      end>
    IndexDefs = <
      item
        Name = 'i'
      end>
    Params = <>
    ProviderName = 'RentalBookProvider'
    RemoteServer = DSProviderConnection1
    StoreDefs = True
    Left = 128
    Top = 328
    object RentalBookDataSetRENTALBOOKNUM: TIntegerField
      DisplayLabel = #45824#50668#46020#49436#48264#54840
      FieldName = 'RENTALBOOKNUM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object RentalBookDataSetPERIOD: TWideStringField
      DisplayLabel = #45824#50668#44592#44036
      FieldName = 'PERIOD'
      Size = 120
    end
    object RentalBookDataSetRENTALNUM: TIntegerField
      DisplayLabel = #45824#50668#48264#54840
      FieldName = 'RENTALNUM'
      Required = True
    end
    object RentalBookDataSetBOOKNUM: TIntegerField
      DisplayLabel = #46020#49436#48264#54840
      FieldName = 'BOOKNUM'
      Required = True
    end
    object RentalBookDataSetRETURNOK: TBooleanField
      DisplayLabel = #50668#48512
      FieldName = 'RETURNOK'
    end
  end
  object SQLConnection1: TSQLConnection
    ConnectionName = 'DataSnapCONNECTION'
    DriverName = 'DataSnap'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXDataSnap'
      'HostName=localhost'
      'Port=211'
      'CommunicationProtocol=tcp/ip'
      'DatasnapContext=datasnap/'
      
        'DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland' +
        '.Data.DbxClientDriver,Version=21.0.0.0,Culture=neutral,PublicKey' +
        'Token=91d62ebb5b0d1b1b')
    Connected = True
    Left = 40
    Top = 24
    UniqueId = '{B7CC540B-97C7-4A78-AD58-BA3948FA7A1E}'
  end
  object MemberjoinDataSet: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'RENTALNUM'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 80
      end
      item
        Name = 'BOOKNAME'
        DataType = ftWideString
        Size = 240
      end
      item
        Name = 'BOOKNUM'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'RENTALBOOKNUM'
        Attributes = [faRequired]
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'i_ID'
        Fields = 'ID'
      end>
    Params = <>
    ProviderName = 'memberjoinProvider'
    RemoteServer = DSProviderConnection1
    StoreDefs = True
    Left = 120
    Top = 400
    object MemberjoinDataSetRENTALNUM: TIntegerField
      DisplayLabel = #45824#50668#48264#54840
      FieldName = 'RENTALNUM'
      Required = True
    end
    object MemberjoinDataSetID: TWideStringField
      FieldName = 'ID'
      Required = True
      Size = 80
    end
    object MemberjoinDataSetBOOKNAME: TWideStringField
      DisplayLabel = #46020#49436#47749
      FieldName = 'BOOKNAME'
      Size = 240
    end
    object MemberjoinDataSetRENTALBOOKNUM: TIntegerField
      DisplayLabel = #45824#50668#46020#49436#48264#54840
      FieldName = 'RENTALBOOKNUM'
      Required = True
    end
    object MemberjoinDataSetBOOKNUM: TIntegerField
      DisplayLabel = #46020#49436#48264#54840
      FieldName = 'BOOKNUM'
      Required = True
    end
  end
  object memberjoinDataSource: TDataSource
    DataSet = MemberjoinDataSet
    Left = 272
    Top = 416
  end
  object BookDataSet: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'BOOKNUM'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'REGDAY'
        DataType = ftDate
      end
      item
        Name = 'BOOKNAME'
        DataType = ftWideString
        Size = 240
      end
      item
        Name = 'AUTHOR'
        DataType = ftWideString
        Size = 160
      end
      item
        Name = 'CATEGORY'
        DataType = ftWideString
        Size = 80
      end
      item
        Name = 'PUBLISH'
        DataType = ftWideString
        Size = 80
      end
      item
        Name = 'PUBLISHYEAR'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'BOOKIMAGE'
        DataType = ftBlob
        Size = 1
      end
      item
        Name = 'TOTAL'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'RENTAL'
        Attributes = [faRequired]
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'i_BookNum'
        Fields = 'BookNum'
      end
      item
        Name = 'i_RegDay'
        Fields = 'RegDay'
      end
      item
        Name = 'i_BookName'
        Fields = 'BookName'
      end
      item
        Name = 'i_Author'
        Fields = 'Author'
      end
      item
        Name = 'i_Publish'
        Fields = 'Publish'
      end>
    Params = <>
    ProviderName = 'BookProvider'
    RemoteServer = DSProviderConnection1
    StoreDefs = True
    Left = 128
    Top = 88
    object BookDataSetBOOKNUM: TIntegerField
      DisplayLabel = #46020#49436#48264#54840
      FieldName = 'BOOKNUM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object BookDataSetREGDAY: TDateField
      DisplayLabel = #46321#47197#51068
      FieldName = 'REGDAY'
    end
    object BookDataSetBOOKNAME: TWideStringField
      DisplayLabel = #46020#49436#47749
      FieldName = 'BOOKNAME'
      Size = 240
    end
    object BookDataSetAUTHOR: TWideStringField
      DisplayLabel = #51200#51088
      FieldName = 'AUTHOR'
      Size = 160
    end
    object BookDataSetCATEGORY: TWideStringField
      DisplayLabel = #48516#47448
      FieldName = 'CATEGORY'
      Size = 80
    end
    object BookDataSetPUBLISH: TWideStringField
      DisplayLabel = #52636#54032#49324
      FieldName = 'PUBLISH'
      Size = 80
    end
    object BookDataSetPUBLISHYEAR: TWideStringField
      DisplayLabel = #52636#54032#45380#46020
      FieldName = 'PUBLISHYEAR'
      Size = 40
    end
    object BookDataSetBOOKIMAGE: TBlobField
      DisplayLabel = #46020#49436#51060#48120#51648
      FieldName = 'BOOKIMAGE'
      Size = 1
    end
    object BookDataSetTOTAL: TIntegerField
      DisplayLabel = #52509#51116#44256
      FieldName = 'TOTAL'
      Required = True
    end
    object BookDataSetRENTAL: TIntegerField
      DisplayLabel = #45824#50668#49688
      FieldName = 'RENTAL'
      Required = True
    end
  end
end
