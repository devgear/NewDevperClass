object dm: Tdm
  OldCreateOrder = False
  Height = 580
  Width = 761
  object SQLConnection1: TSQLConnection
    ConnectionName = 'STOCK'
    DriverName = 'INTERBASE'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbxint.dll'
    LoginPrompt = False
    Params.Strings = (
      'drivername=INTERBASE'
      'blobsize=-1'
      'commitretain=False'
      'Database=D:\DB\STOCK1.IB'
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
    Left = 35
    Top = 104
  end
  object VendorsQuery: TSimpleDataSet
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 100
    Top = 19
    object VendorsQueryV_CODE: TIntegerField
      DisplayLabel = #50629#52404#53076#46300
      FieldName = 'V_CODE'
      Required = True
    end
    object VendorsQueryV_BIZNAME: TStringField
      DisplayLabel = #45225#54408#50629#52404#51060#47492
      FieldName = 'V_BIZNAME'
      Required = True
      Size = 10
    end
    object VendorsQueryV_TELNUMBER: TStringField
      DisplayLabel = #51204#54868#48264#54840
      FieldName = 'V_TELNUMBER'
      Required = True
      Size = 13
    end
    object VendorsQueryV_NAME: TStringField
      DisplayLabel = #45812#45817#51088#51060#47492
      FieldName = 'V_NAME'
      Required = True
      Size = 15
    end
  end
  object NextNoQuery: TSimpleDataSet
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.DataSource = NextNoSource
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 96
    Top = 77
  end
  object PurchaseQuery: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = 'select * from purchase'
    DataSet.DataSource = PurchaseSource
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 93
    Top = 137
    object PurchaseQueryP_CODE: TIntegerField
      DisplayLabel = #44396#51077#48264#54840
      FieldName = 'P_CODE'
      Required = True
    end
    object PurchaseQueryC_NAME: TStringField
      DisplayLabel = #54408#47785#51060#47492
      FieldKind = fkLookup
      FieldName = 'C_NAME'
      LookupDataSet = COMMODITYTable
      LookupKeyFields = 'C_CODE'
      LookupResultField = 'C_NAME'
      KeyFields = 'C_CODE'
      Lookup = True
    end
    object PurchaseQueryC_CODE: TIntegerField
      FieldName = 'C_CODE'
      Required = True
      Visible = False
    end
    object PurchaseQueryP_MONEY: TIntegerField
      DisplayLabel = #44396#51077#44552#50529
      FieldName = 'P_MONEY'
      Required = True
    end
    object PurchaseQueryP_KG: TIntegerField
      DisplayLabel = #44396#51077#45800#50948'(KG)'
      FieldName = 'P_KG'
    end
    object PurchaseQueryP_DATE: TDateField
      DisplayLabel = #44396#51077#45216#51676
      FieldName = 'P_DATE'
      Required = True
    end
    object PurchaseQueryV_CODE: TIntegerField
      FieldName = 'V_CODE'
      Required = True
      Visible = False
    end
    object PurchaseQueryV_BIZNAME: TStringField
      DisplayLabel = #44396#51077#50629#52404
      FieldKind = fkLookup
      FieldName = 'V_BIZNAME'
      LookupDataSet = VENDORSTable
      LookupKeyFields = 'V_CODE'
      LookupResultField = 'V_BIZNAME'
      KeyFields = 'V_CODE'
      Lookup = True
    end
  end
  object MoneyQuery: TSimpleDataSet
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.DataSource = MoneySource
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 88
    Top = 244
  end
  object CommodityQuery: TSimpleDataSet
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.DataSource = CommoditySource
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 89
    Top = 191
  end
  object NextNoSource: TDataSource
    DataSet = NextNoQuery
    Left = 184
    Top = 81
  end
  object PurchaseSource: TDataSource
    DataSet = PurchaseQuery
    Left = 185
    Top = 135
  end
  object CommoditySource: TDataSource
    DataSet = CommodityQuery
    Left = 185
    Top = 191
  end
  object MoneySource: TDataSource
    DataSet = MoneyQuery
    Left = 181
    Top = 248
  end
  object SalseQuerySource: TDataSource
    DataSet = SalseQuery
    Left = 172
    Top = 302
  end
  object SalseChartQuerySource: TDataSource
    DataSet = SalseChartQuery
    Left = 495
    Top = 92
  end
  object SalseChartQuery: TSimpleDataSet
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = 
      'Select C_Code, sum(S_Money) '#13#10'From sales '#13#10'Where C_CODE in('#13#10'Sel' +
      'ect C_CODE From COMMODITY Where C_TYPE = :CC_TYPE)'#13#10'group by C_C' +
      'ODE'
    DataSet.DataSource = SalseChartQuerySource
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftUnknown
        Name = 'CC_TYPE'
        ParamType = ptInput
      end>
    Params = <>
    Left = 498
    Top = 41
    object SalseChartQueryC_CODE: TIntegerField
      FieldName = 'C_CODE'
      Required = True
    end
    object SalseChartQuerySUM: TLargeintField
      FieldName = 'SUM'
    end
    object SalseChartQueryC_NAME: TStringField
      FieldKind = fkLookup
      FieldName = 'C_NAME'
      LookupDataSet = CommodityChart
      LookupKeyFields = 'C_CODE'
      LookupResultField = 'C_NAME'
      KeyFields = 'C_CODE'
      Lookup = True
    end
  end
  object SalseQuery: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = 'select * from sales'#13#10'order by S_CODE asc'
    DataSet.DataSource = SalseQuerySource
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 89
    Top = 304
    object SalseQueryS_CODE: TIntegerField
      DisplayLabel = #54032#47588#48264#54840
      FieldName = 'S_CODE'
      Required = True
    end
    object SalseQueryS_MONEY: TIntegerField
      DisplayLabel = #54032#47588#44552#50529
      FieldName = 'S_MONEY'
      Required = True
      DisplayFormat = '#,##0'#50896
    end
    object SalseQueryS_DATA: TDateField
      DisplayLabel = #54032#47588#45216#51676
      FieldName = 'S_DATA'
      Required = True
    end
    object SalseQueryC_CODE: TIntegerField
      FieldName = 'C_CODE'
      Required = True
      Visible = False
    end
    object SalseQueryC_NAME: TStringField
      DisplayLabel = #54408#47785#51060#47492
      FieldKind = fkLookup
      FieldName = 'C_NAME'
      LookupDataSet = COMMODITYTable
      LookupKeyFields = 'C_CODE'
      LookupResultField = 'C_NAME'
      KeyFields = 'C_CODE'
      Lookup = True
    end
  end
  object SimpleDataSet1: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = 
      'select  V_BizName, sum(P_MONEY)'#13#10'from purchase, Vendors'#13#10'where p' +
      'urchase.V_CODE = VENDORS.V_CODE'#13#10'group by V_CODE, V_BizNAME'
    DataSet.DataSource = DataSource1
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 564
    Top = 315
    object SimpleDataSet1V_BIZNAME: TStringField
      FieldName = 'V_BIZNAME'
      Required = True
      Size = 10
    end
    object SimpleDataSet1SUM: TLargeintField
      FieldName = 'SUM'
    end
  end
  object DataSource1: TDataSource
    DataSet = SimpleDataSet1
    Left = 643
    Top = 315
  end
  object Align: TSimpleDataSet
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = 
      'select V_CODE,  C_CODE, SUM(P_Money)'#13#10'from purchase'#13#10'where V_COD' +
      'E in'#13#10'(select V_CODE from vendors where V_BIZNAME = :BIZNAME)'#13#10'g' +
      'roup by V_CODE, C_CODE'
    DataSet.DataSource = AlignSource
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftUnknown
        Name = 'BIZNAME'
        ParamType = ptInput
      end>
    Params = <>
    Left = 427
    Top = 262
    object AlignC_NAME: TStringField
      DisplayLabel = #54408#47785#47749
      FieldKind = fkLookup
      FieldName = 'C_NAME'
      LookupDataSet = COMMODITYTable
      LookupKeyFields = 'C_CODE'
      LookupResultField = 'C_NAME'
      KeyFields = 'C_CODE'
      Lookup = True
    end
    object AlignSUM: TLargeintField
      DisplayLabel = #44552#50529
      FieldName = 'SUM'
    end
    object AlignC_CODE: TIntegerField
      FieldName = 'C_CODE'
      Required = True
      Visible = False
    end
    object AlignV_CODE: TIntegerField
      FieldName = 'V_CODE'
      Required = True
      Visible = False
    end
    object AlignV_NAME: TStringField
      FieldKind = fkLookup
      FieldName = 'V_NAME'
      LookupDataSet = VENDORSTable
      LookupKeyFields = 'V_CODE'
      LookupResultField = 'V_BIZNAME'
      KeyFields = 'V_CODE'
      Visible = False
      Lookup = True
    end
  end
  object AlignSource: TDataSource
    DataSet = Align
    Left = 477
    Top = 262
  end
  object reportQuery: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select S.S_DATA, C.C_NAME, sum(S.S_MONEY)'
      'from Sales s, commodity c'
      'where s.C_code=C.C_CODE'
      'group by S.S_DATA, C.C_NAME')
    SQLConnection = SQLConnection1
    Left = 555
    Top = 225
  end
  object CommodityChart: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = 'select * from COMMODITY'
    DataSet.DataSource = SalseChartQuerySource
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 583
    Top = 41
  end
  object VENDORSTable: TSQLTable
    MaxBlobSize = -1
    SQLConnection = SQLConnection1
    TableName = 'VENDORS'
    Left = 53
    Top = 473
  end
  object COMMODITYTable: TSQLTable
    MaxBlobSize = -1
    SQLConnection = SQLConnection1
    TableName = 'COMMODITY'
    Left = 473
    Top = 315
  end
  object SQLQuery2: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'CC_NAME'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select C_CODE from COMMODITY where C_NAME= :CC_NAME')
    SQLConnection = SQLConnection1
    Left = 139
    Top = 481
  end
  object SQLQuery1: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select  V_BizName, sum(P_MONEY)'
      'from purchase, Vendors'
      'where purchase.V_CODE = VENDORS.V_CODE'
      'group by V_CODE, V_BizNAME')
    SQLConnection = SQLConnection1
    Left = 412
    Top = 42
  end
  object VendorsSource: TDataSource
    DataSet = VendorsQuery
    Left = 188
    Top = 24
  end
end
