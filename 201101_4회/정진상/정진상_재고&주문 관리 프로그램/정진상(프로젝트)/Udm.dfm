object dm: Tdm
  OldCreateOrder = False
  Height = 402
  Width = 522
  object SQLConnection1: TSQLConnection
    ConnectionName = 'book'
    DriverName = 'INTERBASE'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbxint.dll'
    LoginPrompt = False
    Params.Strings = (
      'drivername=INTERBASE'
      'blobsize=-1'
      'commitretain=False'
      'Database=c:\book.ib'
      'localecode=0000'
      'password=masterkey'
      'rolename=RoleName'
      'sqldialect=3'
      'isolationlevel=ReadCommitted'
      'user_name=sysdba'
      'waitonlocks=True'
      'trim char=False')
    VendorLib = 'GDS32.DLL'
    Connected = True
    Left = 32
    Top = 16
  end
  object order: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = '"orders"'
    DataSet.CommandType = ctTable
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    FieldDefs = <
      item
        Name = 'number'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'brch_code'
        Attributes = [faRequired]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'brch_name'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'book_code'
        Attributes = [faRequired]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'book_kind'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'book_name'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'vol'
        DataType = ftInteger
      end
      item
        Name = 'totalprice'
        DataType = ftInteger
      end
      item
        Name = 'orderdate'
        DataType = ftDate
      end
      item
        Name = 'saledate'
        DataType = ftDate
      end
      item
        Name = 'memo'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'cancelinfo'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'o_complete'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <>
    PacketRecords = 1
    Params = <>
    StoreDefs = True
    Left = 24
    Top = 80
    object ordernumber: TIntegerField
      DisplayLabel = #51452#47928#48264#54840
      DisplayWidth = 12
      FieldName = 'number'
      Required = True
    end
    object orderbrch_code: TStringField
      DisplayLabel = #49436#51216#53076#46300
      DisplayWidth = 12
      FieldName = 'brch_code'
      Required = True
      Size = 10
    end
    object orderbrch_name: TStringField
      DisplayLabel = #49436#51216#47749
      DisplayWidth = 17
      FieldName = 'brch_name'
    end
    object orderbook_code: TStringField
      DisplayLabel = #46020#49436#53076#46300
      DisplayWidth = 12
      FieldName = 'book_code'
      Required = True
      Size = 10
    end
    object orderbook_kind: TStringField
      DisplayLabel = #46020#49436#51333#47448
      DisplayWidth = 15
      FieldName = 'book_kind'
    end
    object orderbook_name: TStringField
      DisplayLabel = #46020#49436#47749
      DisplayWidth = 16
      FieldName = 'book_name'
    end
    object ordervol: TIntegerField
      DisplayLabel = #51452#47928#49688#47049
      DisplayWidth = 12
      FieldName = 'vol'
    end
    object ordertotalprice: TIntegerField
      DisplayLabel = #52509#44552#50529
      DisplayWidth = 12
      FieldName = 'totalprice'
      DisplayFormat = '#,##0'#50896
    end
    object orderorderdate: TDateField
      DisplayLabel = #51452#47928#51068#51088
      DisplayWidth = 12
      FieldName = 'orderdate'
    end
    object ordersaledate: TDateField
      DisplayLabel = #54032#47604#51068#51088
      DisplayWidth = 12
      FieldName = 'saledate'
    end
    object ordermemo: TStringField
      DisplayLabel = #47700#47784
      DisplayWidth = 36
      FieldName = 'memo'
      Size = 30
    end
    object ordercancelinfo: TStringField
      DisplayLabel = #52712#49548#51221#48372
      DisplayWidth = 10
      FieldName = 'cancelinfo'
      FixedChar = True
      Size = 1
    end
    object ordero_complete: TStringField
      DisplayLabel = #50756#47308#50668#48512
      DisplayWidth = 10
      FieldName = 'o_complete'
      FixedChar = True
      Size = 1
    end
  end
  object ordersource: TDataSource
    DataSet = order
    Left = 80
    Top = 80
  end
  object product: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = '"products"'
    DataSet.CommandType = ctTable
    DataSet.MaxBlobSize = 1
    DataSet.Params = <>
    FieldDefs = <
      item
        Name = 'book_code'
        Attributes = [faRequired]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'book_kind'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'book_name'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'price'
        DataType = ftInteger
      end
      item
        Name = 'vol'
        DataType = ftInteger
      end
      item
        Name = 'image'
        DataType = ftBlob
        Size = 1
      end>
    IndexDefs = <
      item
        Name = 'code'
        Fields = 'book_code'
      end
      item
        Name = 'name'
        Fields = 'book_name'
      end
      item
        Name = 'price'
        Fields = 'price'
      end>
    PacketRecords = 1
    Params = <>
    StoreDefs = True
    Left = 24
    Top = 136
    object productbook_code: TStringField
      DisplayLabel = #46020#49436#53076#46300
      FieldName = 'book_code'
      Required = True
      Size = 10
    end
    object productbook_kind: TStringField
      DisplayLabel = #46020#49436#51333#47448
      FieldName = 'book_kind'
    end
    object productbook_name: TStringField
      DisplayLabel = #46020#49436#47749
      FieldName = 'book_name'
    end
    object productprice: TIntegerField
      DisplayLabel = #44032#44201
      FieldName = 'price'
      DisplayFormat = '#,##0'#50896
    end
    object productvol: TIntegerField
      DisplayLabel = #49688#47049
      FieldName = 'vol'
    end
    object productimage: TBlobField
      DisplayLabel = #51060#48120#51648
      FieldName = 'image'
      Size = 1
    end
  end
  object productsource: TDataSource
    DataSet = product
    Left = 80
    Top = 136
  end
  object branch: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = '"branches"'
    DataSet.CommandType = ctTable
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 24
    Top = 192
    object branchbrch_code: TStringField
      DisplayLabel = #49436#51216#53076#46300
      FieldName = 'brch_code'
      Required = True
      Size = 10
    end
    object branchname: TStringField
      DisplayLabel = #49436#51216#47749
      FieldName = 'name'
    end
    object branchpnumber: TStringField
      DisplayLabel = #51204#54868#48264#54840
      FieldName = 'pnumber'
    end
    object branchaddress: TStringField
      DisplayLabel = #51452#49548
      FieldName = 'address'
      Size = 30
    end
  end
  object branchsource: TDataSource
    DataSet = branch
    Left = 80
    Top = 192
  end
  object brchquery: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = 'select * from "orders"'#13#10'where "brch_name" =:"name"'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftString
        Name = 'name'
        ParamType = ptInput
      end>
    Params = <>
    Left = 368
    Top = 8
    object brchquerynumber: TIntegerField
      DisplayLabel = #51452#47928#48264#54840
      FieldName = 'number'
      Required = True
    end
    object brchquerybrch_code: TStringField
      DisplayLabel = #49436#51216#53076#46300
      FieldName = 'brch_code'
      Required = True
      Size = 10
    end
    object brchquerybrch_name: TStringField
      DisplayLabel = #49436#51216#47749
      FieldName = 'brch_name'
    end
    object brchquerybook_code: TStringField
      DisplayLabel = #46020#49436#53076#46300
      FieldName = 'book_code'
      Required = True
      Size = 10
    end
    object brchquerybook_kind: TStringField
      DisplayLabel = #46020#49436#51333#47448
      FieldName = 'book_kind'
    end
    object brchquerybook_name: TStringField
      DisplayLabel = #46020#49436#47749
      FieldName = 'book_name'
    end
    object brchqueryvol: TIntegerField
      DisplayLabel = #51452#47928#49688#47049
      FieldName = 'vol'
    end
    object brchquerytotalprice: TIntegerField
      DisplayLabel = #52509#44552#50529
      FieldName = 'totalprice'
      DisplayFormat = '#,##0'#50896
    end
    object brchqueryorderdate: TDateField
      DisplayLabel = #51452#47928#51068#51088
      FieldName = 'orderdate'
    end
    object brchquerysaledate: TDateField
      DisplayLabel = #54032#47588#51068#51088
      FieldName = 'saledate'
    end
    object brchquerymemo: TStringField
      DisplayLabel = #47700#47784
      FieldName = 'memo'
      Size = 30
    end
    object brchquerycancelinfo: TStringField
      DisplayLabel = #52712#49548#51221#48372
      FieldName = 'cancelinfo'
      FixedChar = True
      Size = 1
    end
    object brchqueryo_complete: TStringField
      DisplayLabel = #50756#47308#50668#48512
      FieldName = 'o_complete'
      FixedChar = True
      Size = 1
    end
  end
  object brchquerysource: TDataSource
    DataSet = brchquery
    Left = 432
    Top = 8
  end
  object orderquery: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = 
      'select "number", "brch_code", "brch_name", "book_code", "vol", "' +
      'totalprice", "orderdate", "saledate", "o_complete" from "orders"' +
      #13#10'where "o_complete" = '#39'0'#39
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 176
    Top = 8
    object orderquerynumber: TIntegerField
      DisplayLabel = #51452#47928#48264#54840
      DisplayWidth = 12
      FieldName = 'number'
      Required = True
    end
    object orderquerybrch_code: TStringField
      DisplayLabel = #49436#51216#53076#46300
      DisplayWidth = 12
      FieldName = 'brch_code'
      Required = True
      Size = 10
    end
    object orderquerybrch_name: TStringField
      DisplayLabel = #49436#51216#47749
      DisplayWidth = 19
      FieldName = 'brch_name'
    end
    object orderquerybook_code: TStringField
      DisplayLabel = #46020#49436#53076#46300
      DisplayWidth = 12
      FieldName = 'book_code'
      Required = True
      Size = 10
    end
    object orderqueryvol: TIntegerField
      DisplayLabel = #51452#47928#47049
      DisplayWidth = 12
      FieldName = 'vol'
    end
    object orderquerytotalprice: TIntegerField
      DisplayLabel = #52509#44552#50529
      DisplayWidth = 12
      FieldName = 'totalprice'
      DisplayFormat = '#,##0'#50896
    end
    object orderqueryorderdate: TDateField
      DisplayLabel = #51452#47928#51068#51088
      DisplayWidth = 12
      FieldName = 'orderdate'
    end
    object orderquerysaledate: TDateField
      DisplayLabel = #54032#47588#51068#51088
      DisplayWidth = 12
      FieldName = 'saledate'
    end
    object orderqueryo_complete: TStringField
      DisplayLabel = #50756#47308#50668#48512
      DisplayWidth = 10
      FieldName = 'o_complete'
      FixedChar = True
      Size = 1
    end
  end
  object orderquerysource: TDataSource
    DataSet = orderquery
    Left = 248
    Top = 8
  end
  object brchnamequerysource: TDataSource
    DataSet = brchnamequery
    OnDataChange = brchnamequerysourceDataChange
    Left = 432
    Top = 64
  end
  object brchnamequery: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = 'select "name" from "branches"'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 368
    Top = 64
    object brchnamequeryname: TStringField
      DisplayLabel = #49436#51216#47749
      FieldName = 'name'
    end
  end
  object productquery: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = 'select * from "orders"'#13#10'where "book_name" =:"name"'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftString
        Name = 'name'
        ParamType = ptInput
      end>
    Params = <>
    Left = 360
    Top = 168
    object productquerynumber: TIntegerField
      DisplayLabel = #51452#47928#48264#54840
      FieldName = 'number'
      Required = True
    end
    object productquerybrch_code: TStringField
      DisplayLabel = #49436#51216#53076#46300
      FieldName = 'brch_code'
      Required = True
      Size = 10
    end
    object productquerybrch_name: TStringField
      DisplayLabel = #49436#51216#47749
      FieldName = 'brch_name'
    end
    object productquerybook_code: TStringField
      DisplayLabel = #46020#49436#53076#46300
      FieldName = 'book_code'
      Required = True
      Size = 10
    end
    object productquerybook_kind: TStringField
      DisplayLabel = #46020#49436#51333#47448
      FieldName = 'book_kind'
    end
    object productquerybook_name: TStringField
      DisplayLabel = #46020#49436#47749
      FieldName = 'book_name'
    end
    object productqueryvol: TIntegerField
      DisplayLabel = #51452#47928#49688#47049
      FieldName = 'vol'
    end
    object productquerytotalprice: TIntegerField
      DisplayLabel = #52509#44552#50529
      FieldName = 'totalprice'
      DisplayFormat = '#,##0'#50896
    end
    object productqueryorderdate: TDateField
      DisplayLabel = #51452#47928#51068#51088
      FieldName = 'orderdate'
    end
    object productquerysaledate: TDateField
      DisplayLabel = #54032#47588#51068#51088
      FieldName = 'saledate'
    end
    object productquerymemo: TStringField
      DisplayLabel = #47700#47784
      FieldName = 'memo'
      Size = 30
    end
    object productquerycancelinfo: TStringField
      DisplayLabel = #52712#49548#51221#48372
      FieldName = 'cancelinfo'
      FixedChar = True
      Size = 1
    end
    object productqueryo_complete: TStringField
      DisplayLabel = #50756#47308#50668#48512
      FieldName = 'o_complete'
      FixedChar = True
      Size = 1
    end
  end
  object productquerysource: TDataSource
    DataSet = productquery
    Left = 440
    Top = 168
  end
  object pronamequery: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = 'select "book_name" from "products"'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 360
    Top = 232
    object pronamequerybook_name: TStringField
      DisplayLabel = #46020#49436#47749
      FieldName = 'book_name'
    end
  end
  object pronamequerysource: TDataSource
    DataSet = pronamequery
    OnDataChange = pronamequerysourceDataChange
    Left = 440
    Top = 232
  end
  object salequery: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = 
      'select "number", "brch_code", "brch_name", "book_code", "vol", "' +
      'totalprice", "orderdate", "saledate" from "orders"'#13#10'where "o_com' +
      'plete" = '#39'1'#39
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 176
    Top = 72
    object salequerynumber: TIntegerField
      DisplayLabel = #51452#47928#48264#54840
      FieldName = 'number'
      Required = True
    end
    object salequerybrch_code: TStringField
      DisplayLabel = #49436#51216#53076#46300
      FieldName = 'brch_code'
      Required = True
      Size = 10
    end
    object salequerybrch_name: TStringField
      DisplayLabel = #49436#51216#47749
      FieldName = 'brch_name'
    end
    object salequerybook_code: TStringField
      DisplayLabel = #46020#49436#53076#46300
      FieldName = 'book_code'
      Required = True
      Size = 10
    end
    object salequeryvol: TIntegerField
      DisplayLabel = #51452#47928#49688#47049
      FieldName = 'vol'
    end
    object salequerytotalprice: TIntegerField
      DisplayLabel = #52509#44552#50529
      FieldName = 'totalprice'
      DisplayFormat = '#,##0'#50896
    end
    object salequeryorderdate: TDateField
      DisplayLabel = #51452#47928#51068#51088
      FieldName = 'orderdate'
    end
    object salequerysaledate: TDateField
      DisplayLabel = #54032#47588#51068#51088
      FieldName = 'saledate'
    end
  end
  object salequerysource: TDataSource
    DataSet = salequery
    Left = 248
    Top = 72
  end
end
