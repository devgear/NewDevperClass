object DataModule5: TDataModule5
  OldCreateOrder = False
  Height = 465
  Width = 648
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\gerry\Documents\Embarcadero\Studio\Projects\ja' +
        'ngnamgam2\DB\JANGNAMGAM.IB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'CharacterSet=UTF8'
      'DriverID=IB')
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 32
  end
  object HosQuery: TFDQuery
    Active = True
    IndexFieldNames = 'HOS_ADDRESS;HOS_PHONE;HOS_NAME;HOS_REP;HOS_PER'
    DetailFields = 'HOS_SEQ'
    Connection = FDConnection1
    UpdateOptions.AutoIncFields = 'HOS_SEQ'
    SQL.Strings = (
      'select * from hospital_table')
    Left = 48
    Top = 120
    object HosQueryHOS_NAME: TWideStringField
      DisplayLabel = #49345#54840#47749
      DisplayWidth = 467
      FieldName = 'HOS_NAME'
      Origin = 'HOS_NAME'
      Size = 400
    end
    object HosQueryHOS_ADDRESS: TWideStringField
      DisplayLabel = #51452#49548
      DisplayWidth = 467
      FieldName = 'HOS_ADDRESS'
      Origin = 'HOS_ADDRESS'
      Size = 400
    end
    object HosQueryHOS_ID: TIntegerField
      DisplayLabel = #49324#50629#51088#48264#54840
      DisplayWidth = 12
      FieldName = 'HOS_ID'
      Origin = 'HOS_ID'
    end
    object HosQueryHOS_REP: TWideStringField
      DisplayLabel = #45824#54364#51088
      DisplayWidth = 234
      FieldName = 'HOS_REP'
      Origin = 'HOS_REP'
      Size = 200
    end
    object HosQueryHOS_PER: TWideStringField
      DisplayLabel = #45812#45817#51088
      DisplayWidth = 11
      FieldName = 'HOS_PER'
      Origin = 'HOS_PER'
      Size = 80
    end
    object HosQueryHOS_PHONE: TStringField
      DisplayLabel = #51204#54868#48264#54840
      DisplayWidth = 24
      FieldName = 'HOS_PHONE'
      Origin = 'HOS_PHONE'
    end
    object HosQueryHOA_IMG: TBlobField
      DisplayWidth = 12
      FieldName = 'HOA_IMG'
      Origin = 'HOA_IMG'
    end
    object HosQueryHOS_PART: TWideStringField
      DisplayLabel = #44396#48516
      DisplayWidth = 4
      FieldName = 'HOS_PART'
      Origin = 'HOS_PART'
      Size = 40
    end
    object HosQueryHOS_SEQ: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayWidth = 12
      FieldName = 'HOS_SEQ'
      Origin = 'HOS_SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object UserQuery: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from User_table')
    Left = 120
    Top = 120
    object UserQueryUSER_NAME: TWideStringField
      DisplayLabel = #44277#44553#51088' '
      FieldName = 'USER_NAME'
      Origin = 'USER_NAME'
      Size = 120
    end
    object UserQueryUSER_ADDRESS: TWideStringField
      DisplayLabel = #51452#49548
      FieldName = 'USER_ADDRESS'
      Origin = 'USER_ADDRESS'
      Size = 400
    end
    object UserQueryUSER_ID: TIntegerField
      DisplayLabel = #49324#50629#51088#48264#54840
      FieldName = 'USER_ID'
      Origin = 'USER_ID'
    end
    object UserQueryUSER_REP: TWideStringField
      DisplayLabel = #45824#54364#51088
      FieldName = 'USER_REP'
      Origin = 'USER_REP'
      Size = 120
    end
    object UserQueryUSER_PHONE: TStringField
      DisplayLabel = #51204#54868#48264#54840
      FieldName = 'USER_PHONE'
      Origin = 'USER_PHONE'
      Size = 80
    end
  end
  object TradeQuery: TFDQuery
    Active = True
    Indexes = <
      item
        Active = True
        Name = 'tr_data'
        Fields = 'TR_DATA'
      end
      item
        Active = True
        Name = 'tr_hos_name'
        Fields = 'TR_HOS_NAME'
      end
      item
        Active = True
        Name = 'tr_item'
        Fields = 'TR_ITEM'
      end>
    IndexFieldNames = 'HOS_SEQ'
    MasterSource = dsHOS_TR
    MasterFields = 'HOS_SEQ'
    DetailFields = 'HOS_SEQ;ITEM_SEQ;TR_SEQ'
    Connection = FDConnection1
    UpdateOptions.AutoIncFields = 'HOS_SEQ;ITEM_SEQ;TR_SEQ'
    UpdateObject = FDUpdateSQL1
    SQL.Strings = (
      'select '
      'trade_table.*, Item_table.item_name,Item_table.item_price'
      'from '
      '  Hospital_table, Item_table, trade_table'
      'where'
      '  Hospital_table.Hos_seq = trade_table.Hos_seq and'
      '  Item_table.Item_seq = trade_table.item_seq'
      ''
      ''
      '')
    Left = 200
    Top = 120
    object TradeQueryTR_HOS_NAME: TWideStringField
      DisplayLabel = #49345#54840#47749
      FieldName = 'TR_HOS_NAME'
      Origin = 'TR_HOS_NAME'
      Size = 120
    end
    object TradeQueryTR_ITEM: TWideStringField
      DisplayLabel = #54408#47749
      FieldName = 'TR_ITEM'
      Origin = 'TR_ITEM'
      Size = 120
    end
    object TradeQueryTR_DATA: TDateField
      DisplayLabel = #45216#51676
      FieldName = 'TR_DATA'
      Origin = 'TR_DATA'
    end
    object TradeQueryTR_RESULT: TIntegerField
      DisplayLabel = #45800#44032
      FieldName = 'TR_RESULT'
      Origin = 'TR_RESULT'
    end
    object TradeQueryTR_ITEM_NUM: TIntegerField
      DisplayLabel = #49688#47049
      FieldName = 'TR_ITEM_NUM'
      Origin = 'TR_ITEM_NUM'
    end
    object TradeQueryHOS_SEQ: TFDAutoIncField
      FieldName = 'HOS_SEQ'
      Origin = 'HOS_SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object TradeQueryITEM_SEQ: TFDAutoIncField
      FieldName = 'ITEM_SEQ'
      Origin = 'ITEM_SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere]
      IdentityInsert = True
    end
    object TradeQueryTR_SEQ: TFDAutoIncField
      FieldName = 'TR_SEQ'
      Origin = 'TR_SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere]
      IdentityInsert = True
    end
    object TradeQueryTR_PRICE: TIntegerField
      DisplayLabel = #44032#44201
      FieldName = 'TR_PRICE'
      Origin = 'TR_PRICE'
      DisplayFormat = '#,##0'#50896
    end
    object TradeQueryTR_TAX: TSingleField
      DisplayLabel = #49464#50529
      FieldName = 'TR_TAX'
      Origin = 'TR_TAX'
      DisplayFormat = '#,##0'#50896
    end
    object TradeQueryTR_BLANK: TWideStringField
      DisplayLabel = #48708#44256
      FieldName = 'TR_BLANK'
      Origin = 'TR_BLANK'
      Size = 80
    end
    object TradeQueryTR_FIGURE: TSingleField
      DisplayLabel = #44552#50529
      FieldName = 'TR_FIGURE'
      Origin = 'TR_FIGURE'
      DisplayFormat = '#,##0'#50896
    end
    object TradeQueryITEM_NAME: TWideStringField
      DisplayLabel = #54408#47749
      FieldName = 'ITEM_NAME'
      Origin = 'ITEM_NAME'
      Size = 120
    end
    object TradeQueryITEM_PRICE: TIntegerField
      DisplayLabel = #44032#44201
      FieldName = 'ITEM_PRICE'
      Origin = 'ITEM_PRICE'
      DisplayFormat = '#,##0'#50896
    end
  end
  object ItemQuery: TFDQuery
    Active = True
    DetailFields = 'ITEM_SEQ'
    Connection = FDConnection1
    UpdateOptions.AutoIncFields = 'ITEM_SEQ'
    SQL.Strings = (
      'select * from Item_table')
    Left = 280
    Top = 120
    object ItemQueryITEM_NAME: TWideStringField
      DisplayLabel = #54408#47749
      DisplayWidth = 39
      FieldName = 'ITEM_NAME'
      Origin = 'ITEM_NAME'
    end
    object ItemQueryITEM_PRICE: TIntegerField
      DisplayLabel = #45800#44032
      DisplayWidth = 33
      FieldName = 'ITEM_PRICE'
      Origin = 'ITEM_PRICE'
      DisplayFormat = '#,##0'#50896
    end
    object ItemQueryITEM_SIZE: TWideStringField
      DisplayLabel = #44508#44201
      DisplayWidth = 33
      FieldName = 'ITEM_SIZE'
      Origin = 'ITEM_SIZE'
      Size = 30
    end
    object ItemQueryITEM_EA: TWideStringField
      DisplayLabel = #45800#50948
      DisplayWidth = 19
      FieldName = 'ITEM_EA'
      Origin = 'ITEM_EA'
      Size = 10
    end
    object ItemQueryITEM_BLANK: TWideStringField
      DisplayLabel = #48708#44256
      DisplayWidth = 59
      FieldName = 'ITEM_BLANK'
      Origin = 'ITEM_BLANK'
      Size = 30
    end
    object ItemQueryITEM_SEQ: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ITEM_SEQ'
      Origin = 'ITEM_SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object hos_report_query: TFDQuery
    IndexFieldNames = 'HOS_SEQ'
    MasterSource = dsHOS_TR
    MasterFields = 'HOS_SEQ'
    DetailFields = 'HOS_REP;HOS_ADDRESS;HOS_ID;HOS_NAME;HOS_PHONE'
    Connection = FDConnection1
    SQL.Strings = (
      'select * from hospital_table')
    Left = 88
    Top = 384
    object WideStringField1: TWideStringField
      DisplayLabel = #49345#54840#47749
      FieldName = 'HOS_NAME'
      Origin = 'HOS_NAME'
      Size = 400
    end
    object WideStringField2: TWideStringField
      DisplayLabel = #51452#49548
      FieldName = 'HOS_ADDRESS'
      Origin = 'HOS_ADDRESS'
      Size = 400
    end
    object IntegerField1: TIntegerField
      DisplayLabel = #49324#50629#51088#48264#54840
      FieldName = 'HOS_ID'
      Origin = 'HOS_ID'
    end
    object WideStringField3: TWideStringField
      DisplayLabel = #45824#54364#51088
      FieldName = 'HOS_REP'
      Origin = 'HOS_REP'
      Size = 200
    end
    object WideStringField4: TWideStringField
      DisplayLabel = #45812#45817#51088
      FieldName = 'HOS_PER'
      Origin = 'HOS_PER'
      Size = 80
    end
    object StringField1: TStringField
      DisplayLabel = #51204#54868#48264#54840
      FieldName = 'HOS_PHONE'
      Origin = 'HOS_PHONE'
    end
    object BlobField1: TBlobField
      FieldName = 'HOA_IMG'
      Origin = 'HOA_IMG'
    end
    object WideStringField5: TWideStringField
      DisplayLabel = #44396#48516
      FieldName = 'HOS_PART'
      Origin = 'HOS_PART'
      Size = 40
    end
    object hos_report_queryHOS_SEQ: TIntegerField
      FieldName = 'HOS_SEQ'
      Origin = 'HOS_SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object user_report_query: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from User_table')
    Left = 208
    Top = 384
    object WideStringField6: TWideStringField
      FieldName = 'USER_NAME'
      Origin = 'USER_NAME'
      Size = 120
    end
    object WideStringField7: TWideStringField
      FieldName = 'USER_ADDRESS'
      Origin = 'USER_ADDRESS'
      Size = 400
    end
    object IntegerField2: TIntegerField
      FieldName = 'USER_ID'
      Origin = 'USER_ID'
    end
    object WideStringField8: TWideStringField
      FieldName = 'USER_REP'
      Origin = 'USER_REP'
      Size = 120
    end
    object StringField2: TStringField
      FieldName = 'USER_PHONE'
      Origin = 'USER_PHONE'
      Size = 80
    end
  end
  object dsHOS_TR: TDataSource
    DataSet = HosQuery
    Left = 56
    Top = 216
  end
  object FDQuery1: TFDQuery
    Active = True
    DetailFields = 'HOS_SEQ;ITEM_SEQ;TR_SEQ'
    Connection = FDConnection1
    UpdateOptions.AutoIncFields = 'HOS_SEQ;TR_SEQ'
    SQL.Strings = (
      'select '
      
        'trade_table.*,Item_table.item_price,Item_table.item_name,Hospita' +
        'l_table.Hos_name'
      'from '
      'Hospital_table, Item_table, trade_table'
      ''
      'where'
      '  Hospital_table.Hos_seq = trade_table.Hos_seq and'
      '  Item_table.Item_seq = trade_table.item_seq')
    Left = 200
    Top = 208
    object FDQuery1TR_HOS_NAME: TWideStringField
      DisplayLabel = #49345#54840#47749
      FieldName = 'TR_HOS_NAME'
      Origin = 'TR_HOS_NAME'
      Size = 120
    end
    object FDQuery1TR_ITEM: TWideStringField
      DisplayLabel = #54408#47749
      FieldName = 'TR_ITEM'
      Origin = 'TR_ITEM'
      Size = 120
    end
    object FDQuery1TR_DATA: TDateField
      DisplayLabel = #45216#51676
      FieldName = 'TR_DATA'
      Origin = 'TR_DATA'
    end
    object FDQuery1TR_RESULT: TIntegerField
      DisplayLabel = #44552#50529
      FieldName = 'TR_RESULT'
      Origin = 'TR_RESULT'
      DisplayFormat = '#,##0'#50896
    end
    object FDQuery1TR_ITEM_NUM: TIntegerField
      DisplayLabel = #49688#47049
      FieldName = 'TR_ITEM_NUM'
      Origin = 'TR_ITEM_NUM'
    end
    object FDQuery1HOS_SEQ: TFDAutoIncField
      FieldName = 'HOS_SEQ'
      Origin = 'HOS_SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object FDQuery1ITEM_SEQ: TIntegerField
      FieldName = 'ITEM_SEQ'
      Origin = 'ITEM_SEQ'
      Required = True
    end
    object FDQuery1TR_SEQ: TFDAutoIncField
      FieldName = 'TR_SEQ'
      Origin = 'TR_SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere]
      IdentityInsert = True
    end
    object FDQuery1TR_PRICE: TIntegerField
      DisplayLabel = #44032#44201
      FieldName = 'TR_PRICE'
      Origin = 'TR_PRICE'
      DisplayFormat = '#,##0'#50896
    end
    object FDQuery1TR_TAX: TSingleField
      DisplayLabel = #49464#50529
      FieldName = 'TR_TAX'
      Origin = 'TR_TAX'
      DisplayFormat = '#,##0'#50896
    end
    object FDQuery1TR_BLANK: TWideStringField
      DisplayLabel = #48708#44256
      FieldName = 'TR_BLANK'
      Origin = 'TR_BLANK'
      Size = 80
    end
    object FDQuery1TR_FIGURE: TSingleField
      DisplayLabel = #54633#44228
      FieldName = 'TR_FIGURE'
      Origin = 'TR_FIGURE'
      DisplayFormat = '#,##0'#50896
    end
    object FDQuery1ITEM_PRICE: TIntegerField
      DisplayLabel = #44032#44201
      FieldName = 'ITEM_PRICE'
      Origin = 'ITEM_PRICE'
      DisplayFormat = '#,##0'#50896
    end
    object FDQuery1ITEM_NAME: TWideStringField
      DisplayLabel = #54408#47749
      FieldName = 'ITEM_NAME'
      Origin = 'ITEM_NAME'
      Size = 120
    end
    object FDQuery1HOS_NAME: TWideStringField
      DisplayLabel = #49345#54840#47749
      FieldName = 'HOS_NAME'
      Origin = 'HOS_NAME'
      Size = 400
    end
  end
  object FDUpdateSQL1: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO TRADE_TABLE'
      '(TR_HOS_NAME, TR_ITEM, TR_DATA, TR_RESULT, '
      '  TR_ITEM_NUM, HOS_SEQ, ITEM_SEQ, TR_SEQ, '
      '  TR_PRICE, TR_TAX, TR_BLANK, TR_FIGURE)'
      
        'VALUES (:NEW_TR_HOS_NAME, :NEW_TR_ITEM, :NEW_TR_DATA, :NEW_TR_RE' +
        'SULT, '
      '  :NEW_TR_ITEM_NUM, :NEW_HOS_SEQ, :NEW_ITEM_SEQ, :NEW_TR_SEQ, '
      '  :NEW_TR_PRICE, :NEW_TR_TAX, :NEW_TR_BLANK, :NEW_TR_FIGURE)')
    ModifySQL.Strings = (
      'UPDATE TRADE_TABLE'
      
        'SET TR_HOS_NAME = :NEW_TR_HOS_NAME, TR_ITEM = :NEW_TR_ITEM, TR_D' +
        'ATA = :NEW_TR_DATA, '
      '  TR_RESULT = :NEW_TR_RESULT, TR_ITEM_NUM = :NEW_TR_ITEM_NUM, '
      
        '  HOS_SEQ = :NEW_HOS_SEQ, ITEM_SEQ = :NEW_ITEM_SEQ, TR_SEQ = :NE' +
        'W_TR_SEQ, '
      
        '  TR_PRICE = :NEW_TR_PRICE, TR_TAX = :NEW_TR_TAX, TR_BLANK = :NE' +
        'W_TR_BLANK, '
      '  TR_FIGURE = :NEW_TR_FIGURE'
      'WHERE TR_SEQ = :OLD_TR_SEQ')
    DeleteSQL.Strings = (
      'DELETE FROM TRADE_TABLE'
      'WHERE TR_SEQ = :OLD_TR_SEQ')
    FetchRowSQL.Strings = (
      
        'SELECT TR_HOS_NAME, TR_ITEM, TR_DATA, TR_RESULT, TR_ITEM_NUM, HO' +
        'S_SEQ, '
      '  ITEM_SEQ, TR_SEQ, TR_PRICE, TR_TAX, TR_BLANK, TR_FIGURE'
      'FROM TRADE_TABLE'
      'WHERE TR_SEQ = :TR_SEQ')
    Left = 248
    Top = 32
  end
  object ImageList1: TImageList
    Left = 312
    Top = 216
  end
end
