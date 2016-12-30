object FlowerServerMethods: TFlowerServerMethods
  OldCreateOrder = False
  Height = 633
  Width = 733
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\MinHo SSD\Delphi\Delphi Education from Devgear\Assig' +
        'nment\The Third (4)\The Third\The Third\DB_FLOWEROFSONGS_DB.GDB'
      'CharacterSet=UTF8'
      'User_Name=sysdba'
      'Password=masterkey'
      'DriverID=IB')
    Connected = True
    LoginPrompt = False
    Left = 96
    Top = 32
  end
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 224
    Top = 32
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'FMX'
    Left = 368
    Top = 32
  end
  object Member_Table: TFDTable
    IndexFieldNames = 'MEMBER_SEQ'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'FLOWER_MEMBER_LIST'
    TableName = 'FLOWER_MEMBER_LIST'
    Left = 840
    Top = 152
    object Member_TableMEMBER_SEQ: TIntegerField
      Alignment = taCenter
      AutoGenerateValue = arAutoInc
      FieldName = 'MEMBER_SEQ'
      Origin = 'MEMBER_SEQ'
      Required = True
    end
    object Member_TableMEMBER_CODE: TWideStringField
      Alignment = taCenter
      FieldName = 'MEMBER_CODE'
      Origin = 'MEMBER_CODE'
      Required = True
      Size = 80
    end
    object Member_TableMEMBER_NAME: TWideStringField
      Alignment = taCenter
      FieldName = 'MEMBER_NAME'
      Origin = 'MEMBER_NAME'
      Required = True
      Size = 120
    end
    object Member_TableMEMBER_ADDRESS: TWideStringField
      Alignment = taCenter
      FieldName = 'MEMBER_ADDRESS'
      Origin = 'MEMBER_ADDRESS'
      Size = 400
    end
    object Member_TableMEMBER_PHONENUMBER: TWideStringField
      Alignment = taCenter
      FieldName = 'MEMBER_PHONENUMBER'
      Origin = 'MEMBER_PHONENUMBER'
      Size = 120
    end
    object Member_TableMEMBER_BIRTHDAY: TSQLTimeStampField
      Alignment = taCenter
      FieldName = 'MEMBER_BIRTHDAY'
      Origin = 'MEMBER_BIRTHDAY'
    end
    object Member_TableMEMBER_POINT: TIntegerField
      Alignment = taCenter
      FieldName = 'MEMBER_POINT'
      Origin = 'MEMBER_POINT'
    end
    object Member_TableMEMBER_LASTVISIT: TSQLTimeStampField
      Alignment = taCenter
      FieldName = 'MEMBER_LASTVISIT'
      Origin = 'MEMBER_LASTVISIT'
    end
  end
  object Member_DataSetProvider: TDataSetProvider
    DataSet = Flower_Member_List_FDQuery
    Left = 248
    Top = 128
  end
  object Flower_List_DataSetProvider: TDataSetProvider
    DataSet = Flower_List_FDQuery
    Left = 248
    Top = 200
  end
  object Reservation_DataSetProvider: TDataSetProvider
    DataSet = Reservation_FDQuery
    Left = 248
    Top = 280
  end
  object Reservation_Join_FDQuery: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select LIST_NAME FROM FLOWER_LIST')
    Left = 400
    Top = 280
  end
  object Reservation_Join_DataSetProvider: TDataSetProvider
    DataSet = Reservation_Join_FDQuery
    Left = 560
    Top = 280
  end
  object Flower_Member_List_FDQuery: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from FLOWER_MEMBER_LIST')
    Left = 96
    Top = 128
    object Flower_Member_List_FDQueryMEMBER_SEQ: TIntegerField
      Alignment = taCenter
      AutoGenerateValue = arAutoInc
      FieldName = 'MEMBER_SEQ'
      Origin = 'MEMBER_SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Flower_Member_List_FDQueryMEMBER_NAME: TWideStringField
      Alignment = taCenter
      FieldName = 'MEMBER_NAME'
      Origin = 'MEMBER_NAME'
      Required = True
      Size = 120
    end
    object Flower_Member_List_FDQueryMEMBER_ADDRESS: TWideStringField
      Alignment = taCenter
      FieldName = 'MEMBER_ADDRESS'
      Origin = 'MEMBER_ADDRESS'
      Size = 400
    end
    object Flower_Member_List_FDQueryMEMBER_PHONENUMBER: TWideStringField
      Alignment = taCenter
      FieldName = 'MEMBER_PHONENUMBER'
      Origin = 'MEMBER_PHONENUMBER'
      Size = 120
    end
    object Flower_Member_List_FDQueryMEMBER_BIRTHDAY: TSQLTimeStampField
      Alignment = taCenter
      FieldName = 'MEMBER_BIRTHDAY'
      Origin = 'MEMBER_BIRTHDAY'
    end
    object Flower_Member_List_FDQueryMEMBER_POINT: TIntegerField
      Alignment = taCenter
      FieldName = 'MEMBER_POINT'
      Origin = 'MEMBER_POINT'
    end
    object Flower_Member_List_FDQueryMEMBER_LASTVISIT: TSQLTimeStampField
      Alignment = taCenter
      FieldName = 'MEMBER_LASTVISIT'
      Origin = 'MEMBER_LASTVISIT'
    end
  end
  object Flower_List_FDQuery: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'Select * From Flower_List')
    Left = 96
    Top = 200
    object Flower_List_FDQueryLIST_SEQ: TIntegerField
      FieldName = 'LIST_SEQ'
      Origin = 'LIST_SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Flower_List_FDQueryLIST_NAME: TWideStringField
      FieldName = 'LIST_NAME'
      Origin = 'LIST_NAME'
      Required = True
      Size = 120
    end
    object Flower_List_FDQueryLIST_QTY: TWideStringField
      FieldName = 'LIST_QTY'
      Origin = 'LIST_QTY'
      Size = 80
    end
    object Flower_List_FDQueryLIST_PRICE: TIntegerField
      FieldName = 'LIST_PRICE'
      Origin = 'LIST_PRICE'
    end
    object Flower_List_FDQueryLIST_POINT: TIntegerField
      FieldName = 'LIST_POINT'
      Origin = 'LIST_POINT'
    end
    object Flower_List_FDQueryLIST_IMAGE: TBlobField
      FieldName = 'LIST_IMAGE'
      Origin = 'LIST_IMAGE'
    end
    object Flower_List_FDQueryLIST_SCIENTIFICNAME: TWideStringField
      FieldName = 'LIST_SCIENTIFICNAME'
      Origin = 'LIST_SCIENTIFICNAME'
      Size = 80
    end
    object Flower_List_FDQueryLIST_AREA: TWideStringField
      FieldName = 'LIST_AREA'
      Origin = 'LIST_AREA'
      Size = 120
    end
    object Flower_List_FDQueryLIST_PERIOD: TWideStringField
      FieldName = 'LIST_PERIOD'
      Origin = 'LIST_PERIOD'
      Size = 120
    end
    object Flower_List_FDQueryLIST_LANGUAGE: TWideStringField
      FieldName = 'LIST_LANGUAGE'
      Origin = 'LIST_LANGUAGE'
      Size = 200
    end
  end
  object Reservation_FDQuery: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'Select * From Flower_Reservation')
    Left = 96
    Top = 280
  end
  object Order_FDQuery: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM Flower_Order')
    Left = 96
    Top = 360
  end
  object Order_DataSetProvider: TDataSetProvider
    DataSet = Order_FDQuery
    Left = 248
    Top = 360
  end
  object Order_Join_FDQuery: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      
        'select FO.ORDER_SEQ, FM.MEMBER_NAME, FO.ORDER_PURCHASE_DATE, FO.' +
        'ORDER_ITEMS, FO.ORDER_QTY, FO.ORDER_TOTAL_PRICE, FO.ORDER_STATUS' +
        ', FO.ORDER_PAYMENT, FO.ORDER_DELIVERY, FR.RESERVATION_SEQ'
      ' from FLOWER_ORDER FO'
      '  Inner Join FLOWER_MEMBER_LIST FM'
      '   On FO.MEMBER_SEQ = FM.MEMBER_SEQ'
      '  Inner Join FLOWER_RESERVATION FR'
      '   On FO.RESERVATION_SEQ = FR.RESERVATION_SEQ'
      '')
    Left = 400
    Top = 360
  end
  object Order_Join_DataSetProvider: TDataSetProvider
    DataSet = Order_Join_FDQuery
    Left = 560
    Top = 360
  end
  object Login_id: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from Login where ID = :pID')
    Left = 96
    Top = 464
    ParamData = <
      item
        Name = 'PID'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object Login_pw: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from Login where PW = :pPW')
    Left = 248
    Top = 464
    ParamData = <
      item
        Name = 'PPW'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object reserve_Query: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select  *'
      'from  FLOWER_RESERVATION'
      'where  RESERVATION_PHONENUMBER like :Number')
    Left = 440
    Top = 200
    ParamData = <
      item
        Name = 'NUMBER'
        DataType = ftWideString
        ParamType = ptInput
        Size = 120
      end>
  end
  object reserve_Query_DataSetProvider: TDataSetProvider
    DataSet = reserve_Query
    Left = 560
    Top = 200
  end
end
