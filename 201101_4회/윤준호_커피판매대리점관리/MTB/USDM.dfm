object SDM: TSDM
  OldCreateOrder = False
  Height = 330
  Width = 485
  object SQLConnection2: TSQLConnection
    ConnectionName = 'MTBDB'
    DriverName = 'INTERBASE'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbxint.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=DBXInterBase'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver150.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=15.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXInterbaseMetaDataCommandFactory,DbxInt' +
        'erBaseDriver150.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXInterbaseMetaDataCommand' +
        'Factory,Borland.Data.DbxInterBaseDriver,Version=15.0.0.0,Culture' +
        '=neutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverINTERBASE'
      'LibraryName=dbxint.dll'
      'VendorLib=GDS32.DLL'
      'Role=RoleName'
      'MaxBlobSize=-1'
      'TrimChar=False'
      'ErrorResourceFile='
      'ServerCharSet='
      'drivername=INTERBASE'
      'blobsize=-1'
      'commitretain=False'
      'Database=D:\Delphi\DelphiHome\MTB\MTBDB.IB'
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
    Left = 64
    Top = 120
  end
  object Shop: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection2
    DataSet.CommandText = 'SHOP'
    DataSet.CommandType = ctTable
    DataSet.MaxBlobSize = 1
    DataSet.Params = <>
    Params = <>
    OnNewRecord = ShopNewRecord
    Left = 224
    Top = 80
    object ShopS_ID: TStringField
      DisplayLabel = #51648#51216#48264#54840
      FieldName = 'S_ID'
      Required = True
      Size = 10
    end
    object ShopC_NAME: TStringField
      DisplayLabel = #51648#51216#47749
      FieldName = 'C_NAME'
      Size = 10
    end
    object ShopC_MASTER: TStringField
      DisplayLabel = #51648#51216#51109
      FieldName = 'C_MASTER'
      Size = 10
    end
    object ShopC_PW: TStringField
      DisplayLabel = #51648#51216#48708#48128#48264#54840
      FieldName = 'C_PW'
      Size = 10
    end
    object ShopC_ADDR: TStringField
      DisplayLabel = #51648#51216#51452#49548
      FieldName = 'C_ADDR'
      Size = 50
    end
    object ShopC_TEL: TStringField
      DisplayLabel = #51648#51216#51204#54868#48264#54840
      FieldName = 'C_TEL'
      Size = 11
    end
    object ShopC_JOIN: TSQLTimeStampField
      DisplayLabel = #51648#51216#46321#47197#51068#51088
      FieldName = 'C_JOIN'
    end
    object ShopC_IMAGE: TBlobField
      DisplayLabel = #51648#51216#49324#51652
      FieldName = 'C_IMAGE'
      Size = 1
    end
  end
  object ShopSource: TDataSource
    DataSet = Shop
    Left = 296
    Top = 80
  end
  object Item: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection2
    DataSet.CommandText = 'ITEM'
    DataSet.CommandType = ctTable
    DataSet.MaxBlobSize = 1
    DataSet.Params = <>
    Params = <>
    Left = 224
    Top = 152
    object ItemI_ID: TStringField
      DisplayLabel = #49345#54408#48264#54840
      FieldName = 'I_ID'
      Required = True
      Size = 10
    end
    object ItemS_ID: TStringField
      DisplayLabel = #51648#51216#48264#54840
      FieldName = 'S_ID'
      Required = True
      Size = 10
    end
    object ItemI_NAME: TStringField
      DisplayLabel = #49345#54408#47749
      FieldName = 'I_NAME'
      Size = 10
    end
    object ItemI_COST: TIntegerField
      DisplayLabel = #49345#54408#44032#44201
      FieldName = 'I_COST'
    end
    object ItemI_DATE: TSQLTimeStampField
      DisplayLabel = #49345#54408#46321#47197#51068#51088
      FieldName = 'I_DATE'
    end
    object ItemI_IMAGE: TBlobField
      DisplayLabel = #49345#54408#49324#51652
      FieldName = 'I_IMAGE'
      Size = 1
    end
  end
  object ItemSource: TDataSource
    DataSet = Item
    Left = 296
    Top = 152
  end
end
