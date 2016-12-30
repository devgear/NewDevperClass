object dm: Tdm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 301
  Width = 605
  object SQLConnection1: TSQLConnection
    ConnectionName = 'gosi'
    DriverName = 'INTERBASE'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbxint.dll'
    LoginPrompt = False
    Params.Strings = (
      'drivername=INTERBASE'
      'blobsize=-1'
      'commitretain=False'
      'Database=C:\Documents and Settings\MULTIMEDIA\'#48148#53461' '#54868#47732'\'#54532#47196#51229#53944'\gosi.ib'
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
    Left = 80
    Top = 32
  end
  object gosiDataSource: TDataSource
    DataSet = crt
    Left = 232
    Top = 32
  end
  object crt: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = 'CRT'
    DataSet.CommandType = ctTable
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 160
    Top = 32
    object crtROOM: TIntegerField
      Alignment = taCenter
      DisplayLabel = #48169#48264#54840
      DisplayWidth = 12
      FieldName = 'ROOM'
      Required = True
    end
    object crtNAME: TStringField
      Alignment = taCenter
      DisplayLabel = #51060#47492
      DisplayWidth = 12
      FieldName = 'NAME'
      Size = 10
    end
    object crtTEL: TStringField
      Alignment = taCenter
      DisplayLabel = #51204#54868#48264#54840
      DisplayWidth = 19
      FieldName = 'TEL'
      Size = 11
    end
    object crtSUIB: TIntegerField
      DisplayLabel = #48169#44552#50529
      DisplayWidth = 12
      FieldName = 'SUIB'
      DisplayFormat = '#,###,###,##0'
    end
    object crtBO: TIntegerField
      DisplayLabel = #48372#51613#44552
      DisplayWidth = 12
      FieldName = 'BO'
    end
    object crtINDATE: TDateField
      DisplayLabel = #51077#49892#45216#51676
      DisplayWidth = 12
      FieldName = 'INDATE'
    end
    object crtOUTDATE: TDateField
      DisplayLabel = #53748#49892#45216#51676
      DisplayWidth = 12
      FieldName = 'OUTDATE'
    end
  end
  object crtlist: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = 'CRT'
    DataSet.CommandType = ctTable
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 320
    Top = 32
    object crtlistROOM: TIntegerField
      FieldName = 'ROOM'
      Required = True
    end
    object crtlistNAME: TStringField
      FieldName = 'NAME'
      Size = 10
    end
    object crtlistTEL: TStringField
      FieldName = 'TEL'
      Size = 11
    end
    object crtlistSUIB: TIntegerField
      FieldName = 'SUIB'
    end
    object crtlistSUIBDATE: TDateField
      FieldName = 'SUIBDATE'
    end
    object crtlistBO: TIntegerField
      FieldName = 'BO'
    end
    object crtlistINDATE: TDateField
      FieldName = 'INDATE'
    end
    object crtlistOUTDATE: TDateField
      FieldName = 'OUTDATE'
    end
  end
  object crtlistDataSource: TDataSource
    DataSet = crtlist
    Left = 392
    Top = 32
  end
  object items: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = 'ITEM'
    DataSet.CommandType = ctTable
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 160
    Top = 112
  end
  object itemsDataSource: TDataSource
    DataSet = items
    Left = 232
    Top = 112
  end
  object roomchk: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = 'SHAPECHK'
    DataSet.CommandType = ctTable
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 160
    Top = 192
  end
  object roomchkDataSource: TDataSource
    DataSet = roomchk
    Left = 232
    Top = 192
  end
end
