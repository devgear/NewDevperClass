object DM: TDM
  OldCreateOrder = False
  Height = 427
  Width = 482
  object DSProviderConnection1: TDSProviderConnection
    ServerClassName = 'TServerMethods'
    Connected = True
    SQLConnection = SQLConnection1
    Left = 128
    Top = 24
  end
  object Custom: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'CustomProvider'
    RemoteServer = DSProviderConnection1
    Left = 232
    Top = 24
    object Customc_id: TStringField
      DisplayLabel = #46321#47197#48264#54840
      FieldName = 'c_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object Customname: TStringField
      DisplayLabel = #51060#47492
      FieldName = 'name'
      Size = 10
    end
    object Customtel: TStringField
      DisplayLabel = #51204#54868#48264#54840
      FieldName = 'tel'
      Size = 18
    end
    object Customaddress: TStringField
      DisplayLabel = #51452#49548
      FieldName = 'address'
      Size = 40
    end
    object Customlicense_num: TStringField
      DisplayLabel = #47732#54728#48264#54840
      FieldName = 'license_num'
    end
    object Customjumin: TStringField
      DisplayLabel = #51452#48124#48264#54840
      FieldName = 'jumin'
    end
    object Custombigo: TStringField
      DisplayLabel = #48708#44256
      FieldName = 'bigo'
      Size = 100
    end
  end
  object Car: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'CarProvider'
    RemoteServer = DSProviderConnection1
    Left = 232
    Top = 72
    object Carcar_id: TStringField
      DisplayLabel = #46321#47197#48264#54840
      DisplayWidth = 12
      FieldName = 'car_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object Carnum: TStringField
      DisplayLabel = #52264#47049#48264#54840
      DisplayWidth = 19
      FieldName = 'num'
      Size = 18
    end
    object Carname: TStringField
      DisplayLabel = #52264#51060#47492
      DisplayWidth = 15
      FieldName = 'name'
      Size = 12
    end
    object Carage: TStringField
      DisplayLabel = #50672#49885
      DisplayWidth = 14
      FieldName = 'age'
      Size = 18
    end
    object Cartype: TStringField
      DisplayLabel = #51333#47448
      DisplayWidth = 12
      FieldName = 'type'
      Size = 10
    end
    object Carbranch_id: TStringField
      DisplayLabel = #51648#51216
      DisplayWidth = 12
      FieldName = 'branch_id'
      Size = 10
    end
    object Carprice: TStringField
      DisplayLabel = #44032#44201
      DisplayWidth = 11
      FieldName = 'price'
      Size = 18
    end
    object Carauto: TStringField
      DisplayLabel = #50724#53664
      DisplayWidth = 5
      FieldName = 'auto'
      Size = 2
    end
    object CarSTATUS: TStringField
      DisplayLabel = #49345#53468
      DisplayWidth = 18
      FieldName = 'STATUS'
      Size = 1
    end
  end
  object branch: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'branchProvider'
    RemoteServer = DSProviderConnection1
    Left = 232
    Top = 120
    object branchbranch_id: TStringField
      DisplayLabel = #51648#51216#48264#54840
      FieldName = 'branch_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object branchname: TStringField
      DisplayLabel = #51648#51216#51060#47492
      FieldName = 'name'
    end
    object branchaddress: TStringField
      DisplayLabel = #51648#51216#51452#49548
      FieldName = 'address'
      Size = 25
    end
    object branchtel: TStringField
      DisplayLabel = #51648#51216#51204#54868
      FieldName = 'tel'
      Size = 10
    end
    object branchcar: TStringField
      DisplayLabel = #52852#52852#52852
      FieldKind = fkLookup
      FieldName = 'car'
      LookupDataSet = Car
      LookupKeyFields = 'name'
      LookupResultField = 'name'
      KeyFields = 'branch_id'
      Size = 10
      Lookup = True
    end
  end
  object rev: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'revProvider'
    RemoteServer = DSProviderConnection1
    Left = 232
    Top = 168
    object revrev_num: TStringField
      DisplayLabel = #50696#50557#48264#54840
      FieldName = 'rev_num'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object revc_id: TStringField
      DisplayLabel = #44256#44061#46321#47197#48264#54840
      FieldName = 'c_id'
      Size = 10
    end
    object revbranch_id: TStringField
      DisplayLabel = #51648#51216#48264#54840
      FieldName = 'branch_id'
      Size = 10
    end
    object revuse_date: TIntegerField
      DisplayLabel = #49324#50857#44592#44036
      FieldName = 'use_date'
    end
    object revrev_date: TDateField
      DisplayLabel = #50696#50557#45216#51088
      FieldName = 'rev_date'
    end
    object revback_date: TDateField
      DisplayLabel = #48152#45225#45216#51676
      FieldName = 'back_date'
    end
    object revprice: TIntegerField
      DisplayLabel = #44032#44201
      FieldName = 'price'
    end
  end
  object rental: TClientDataSet
    Active = True
    Aggregates = <>
    DisableStringTrim = True
    Params = <>
    ProviderName = 'rentalProvider'
    RemoteServer = DSProviderConnection1
    Left = 232
    Top = 224
    object rentalrental_id: TStringField
      DisplayLabel = #47116#53448#48264#54840
      FieldName = 'rental_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object rentalcar_id: TStringField
      FieldName = 'car_id'
      Required = True
      Size = 10
    end
    object rentalc_id: TStringField
      FieldName = 'c_id'
      Required = True
      Size = 10
    end
    object rentalbranch_id: TStringField
      FieldName = 'branch_id'
      Size = 10
    end
    object rentalprice: TIntegerField
      FieldName = 'price'
    end
    object rentaluse_date: TIntegerField
      DisplayLabel = #49324#50857#51068#51088
      FieldName = 'use_date'
    end
    object rentalrental_date: TDateField
      DisplayLabel = #47116#53944#45216#51676
      FieldName = 'rental_date'
    end
    object rentalback_date: TDateField
      DisplayLabel = #48152#54872#45216#51676
      FieldName = 'back_date'
    end
    object rentalrev_num: TStringField
      DisplayLabel = #50696#50557#48264#54840
      FieldName = 'rev_num'
      Required = True
      Size = 10
    end
    object rentalcar_status: TStringField
      DisplayLabel = #52264#47049#49345#53468
      FieldName = 'car_status'
      Size = 50
    end
    object rentalpenalty: TStringField
      FieldName = 'penalty'
    end
  end
  object CustomSource: TDataSource
    DataSet = Custom
    Left = 304
    Top = 24
  end
  object carSource: TDataSource
    DataSet = Car
    Left = 304
    Top = 72
  end
  object branchSource: TDataSource
    DataSet = branch
    Left = 304
    Top = 120
  end
  object revSource: TDataSource
    DataSet = rev
    Left = 304
    Top = 168
  end
  object rentalSource: TDataSource
    DataSet = rental
    Left = 304
    Top = 224
  end
  object JOINTABLESource: TDataSource
    DataSet = JOINTABLE
    Left = 304
    Top = 272
  end
  object JOINTABLE: TClientDataSet
    Active = True
    Aggregates = <>
    Filtered = True
    Params = <>
    ProviderName = 'jointableprovider'
    RemoteServer = DSProviderConnection1
    Left = 232
    Top = 272
    object JOINTABLEname: TStringField
      DisplayLabel = #52264#47049
      FieldName = 'name'
      Size = 12
    end
    object JOINTABLEtype: TStringField
      DisplayLabel = #52264#47049#51333#47448
      FieldName = 'type'
      Size = 10
    end
    object JOINTABLEname_1: TStringField
      DisplayLabel = #51648#51216
      FieldName = 'name_1'
    end
    object JOINTABLEprice: TStringField
      DisplayLabel = #44032#44201
      FieldName = 'price'
      Size = 18
    end
    object JOINTABLEcar_id: TStringField
      DisplayLabel = #52264#47049'ID'
      FieldName = 'car_id'
      Required = True
      Size = 10
    end
    object JOINTABLEbranch_id: TStringField
      DisplayLabel = #51648#51216'ID'
      FieldName = 'branch_id'
      Required = True
      Size = 10
    end
  end
  object SQLConnection1: TSQLConnection
    DriverName = 'DataSnap'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=DBXDataSnap'
      'DatasnapContext=datasnap/'
      
        'DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland' +
        '.Data.DbxClientDriver,Version=15.0.0.0,Culture=neutral,PublicKey' +
        'Token=91d62ebb5b0d1b1b'
      'drivername=DataSnap'
      'hostname=localhost'
      'port=211'
      'communicationprotocol=tcp/ip')
    Connected = True
    Left = 32
    Top = 24
    UniqueId = '{0A8CBE87-6253-4E91-8C44-BC519F64C1B9}'
  end
  object subquery: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'subProvider'
    RemoteServer = DSProviderConnection1
    Left = 232
    Top = 336
    object subqueryname: TStringField
      DisplayLabel = #51060#47492
      FieldName = 'name'
      Size = 10
    end
    object subqueryback_date: TDateField
      DisplayLabel = #48152#45225#45216#51676
      FieldName = 'back_date'
    end
    object subquerycar_status: TStringField
      DisplayLabel = #54924#49688#49345#53468
      FieldName = 'car_status'
      Size = 50
    end
  end
  object subquerySource: TDataSource
    DataSet = subquery
    Left = 304
    Top = 336
  end
end
