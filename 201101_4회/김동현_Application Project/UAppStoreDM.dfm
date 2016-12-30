object AppStoreDM: TAppStoreDM
  OldCreateOrder = False
  Height = 462
  Width = 603
  object SQLConnection1: TSQLConnection
    ConnectionName = 'APPSTOREDB'
    DriverName = 'INTERBASE'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbxint.dll'
    LoginPrompt = False
    Params.Strings = (
      'drivername=INTERBASE'
      'blobsize=-1'
      'commitretain=False'
      'Database=C:\Embarcadero\AppStoreDB\AppStoreDB.IB'
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
    Left = 48
    Top = 16
  end
  object Item: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = '"Item"'
    DataSet.CommandType = ctTable
    DataSet.DataSource = ItemSource
    DataSet.MaxBlobSize = 1
    DataSet.Params = <>
    FieldDefs = <
      item
        Name = 'Item_Code'
        Attributes = [faRequired]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'Item_Name'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Item_Group'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Item_Picture'
        DataType = ftBlob
        Size = 1
      end
      item
        Name = 'Item_Price'
        DataType = ftInteger
      end
      item
        Name = 'Item_Size'
        DataType = ftInteger
      end
      item
        Name = 'Item_Date'
        DataType = ftDate
      end
      item
        Name = 'Item_Maker'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Item_MakeDate'
        DataType = ftDate
      end>
    IndexDefs = <
      item
        Name = 'I_Name'
        Fields = 'Item_Name'
      end
      item
        Name = 'I_MakeDate'
        Fields = 'Item_MakeDate'
      end
      item
        Name = 'I_Price'
        Fields = 'Item_Price'
      end>
    Params = <>
    StoreDefs = True
    Left = 160
    Top = 16
    object ItemItem_Code: TStringField
      FieldName = 'Item_Code'
      Required = True
      Size = 4
    end
    object ItemItem_Name: TStringField
      FieldName = 'Item_Name'
    end
    object ItemItem_Group: TStringField
      FieldName = 'Item_Group'
    end
    object ItemItem_Picture: TBlobField
      FieldName = 'Item_Picture'
      Size = 1
    end
    object ItemItem_Price: TIntegerField
      FieldName = 'Item_Price'
    end
    object ItemItem_Size: TIntegerField
      FieldName = 'Item_Size'
    end
    object ItemItem_Date: TDateField
      FieldName = 'Item_Date'
    end
    object ItemItem_Maker: TStringField
      FieldName = 'Item_Maker'
    end
    object ItemItem_MakeDate: TDateField
      FieldName = 'Item_MakeDate'
    end
  end
  object ItemSource: TDataSource
    DataSet = Item
    Left = 248
    Top = 16
  end
end
